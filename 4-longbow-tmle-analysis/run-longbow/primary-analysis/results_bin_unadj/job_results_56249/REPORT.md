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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country     fhtcm           ever_sstunted   n_cell       n  outcome_variable 
------------  -------------------------  ----------  -------------  --------------  -------  ------  -----------------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    0      307     907  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    1      103     907  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                     0      130     907  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                     1      100     907  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                0      159     907  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                1      108     907  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    0       62     399  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    1       44     399  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     0       69     399  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     1       94     399  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                0       72     399  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                1       58     399  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                    0      972    1929  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                    1      273    1929  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                     0       98    1929  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                     1       34    1929  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm                0      413    1929  ever_sstunted    
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm                1      139    1929  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                    0    11328   12537  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                    1      416   12537  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                     0      147   12537  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                     1       21   12537  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm                0      582   12537  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm                1       43   12537  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                    0       37     496  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                    1       27     496  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                     0      103     496  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                     1      190     496  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm                0       77     496  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm                1       62     496  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    0      372     905  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                    1       38     905  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                     0      178     905  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                     1       51     905  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                0      222     905  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm                1       44     905  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    0       99     397  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                    1        7     397  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     0      138     397  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                     1       24     397  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                0      114     397  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm                1       15     397  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                    0      987    1723  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                    1      126    1723  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                     0      116    1723  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                     1        8    1723  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm                0      431    1723  ever_sstunted    
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm                1       55    1723  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                    0    11610   12537  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                    1      134   12537  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                     0      162   12537  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                     1        6   12537  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm                0      605   12537  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm                1       20   12537  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                    0       44     337  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                    1        5     337  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                     0      166     337  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                     1       30     337  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm                0       86     337  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm                1        6     337  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA



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
![](/tmp/f3d7c270-2ece-456c-a85f-f6798e281410/06063d70-bcc7-4924-bd03-19a8886787e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f3d7c270-2ece-456c-a85f-f6798e281410/06063d70-bcc7-4924-bd03-19a8886787e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f3d7c270-2ece-456c-a85f-f6798e281410/06063d70-bcc7-4924-bd03-19a8886787e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3d7c270-2ece-456c-a85f-f6798e281410/06063d70-bcc7-4924-bd03-19a8886787e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2512195   0.2079447   0.2944943
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4347826   0.3734136   0.4961517
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4044944   0.3156875   0.4933013
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.4150943   0.3211747   0.5090140
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5766871   0.5007420   0.6526323
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.4461538   0.3605963   0.5317114
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2192771   0.1962881   0.2422662
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.2575758   0.1829563   0.3321952
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.2518116   0.2155928   0.2880304
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0354223   0.0279571   0.0428876
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1250000   0.0893278   0.1606722
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0688000   0.0418539   0.0957461
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.4218750   0.3007597   0.5429903
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.6484642   0.5937399   0.7031885
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.4460432   0.3633242   0.5287622
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0926829   0.0652923   0.1200735
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2227074   0.1989933   0.2464216
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1654135   0.1362937   0.1945333
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0660377   0.0187004   0.1133750
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1481481   0.0933749   0.2029214
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1162791   0.0608919   0.1716662
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1132075   0.0945877   0.1318274
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0645161   0.0212632   0.1077691
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1131687   0.0849953   0.1413422
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0114101   0.0084273   0.0143929
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0357143   0.0189767   0.0524519
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0320000   0.0134389   0.0505611
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1020408   0.0171598   0.1869218
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1530612   0.1025807   0.2035418
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.0652174   0.0146889   0.1157459


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3428886   0.3091585   0.3766188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4912281   0.4421136   0.5403426
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.2312079   0.2123887   0.2500270
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0382867   0.0302846   0.0462887
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5625000   0.5187986   0.6062014
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1469613   0.1306617   0.1632610
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1158690   0.0843449   0.1473931
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1096924   0.0949323   0.1244525
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0127622   0.0094933   0.0160311
0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1216617   0.0867086   0.1566149


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.7306881   1.4156314   2.115862
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.6101233   1.1932303   2.172671
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3892917   1.0692940   1.805052
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0748252   0.7989660   1.445930
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1746587   0.8632003   1.598497
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1483716   0.9611332   1.372086
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          3.5288462   2.6692030   4.665346
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.9422769   1.3224880   2.852532
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.5371002   1.1395836   2.073281
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.0572875   0.7512097   1.488076
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.4028957   1.8008227   3.206261
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.7847249   1.1992283   2.656077
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          2.2433862   1.0014353   5.025568
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.7607973   0.7446161   4.163766
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.5698925   0.2857583   1.136546
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.9996571   0.7417675   1.347207
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          3.1300640   1.9528656   5.016884
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.8045373   1.5627071   5.033208
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.5000000   0.6130158   3.670378
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          0.6391304   0.2050700   1.991943


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0916691    0.0561036   0.1272347
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0761337   -0.0047757   0.1570432
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0119308   -0.0022277   0.0260892
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0028643    0.0013491   0.0043795
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1406250    0.0275179   0.2537321
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0542784    0.0379381   0.0706187
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0498313    0.0046873   0.0949753
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0035152   -0.0143156   0.0072853
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0013521    0.0004071   0.0022971
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0196209   -0.0599489   0.0991907


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.2673437    0.1588000   0.3618816
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.1549865   -0.0274292   0.3050151
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0516019   -0.0115891   0.1108456
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0748127    0.0384845   0.1097683
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.2500000    0.0182489   0.4270442
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.3693379    0.2209386   0.4894695
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.4300656   -0.0992516   0.7045033
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0320455   -0.1352786   0.0618004
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1059488    0.0364883   0.1704018
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1612743   -0.8265131   0.6148613
