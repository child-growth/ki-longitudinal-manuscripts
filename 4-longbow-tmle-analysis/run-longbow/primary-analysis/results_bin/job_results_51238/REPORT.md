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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     fhtcm           wasted   n_cell       n
----------  -------------------------  ----------  -------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0       46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              0       20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0       24      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1        0      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             0      693    1079
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             1       17    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm              0       80    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm              1        1    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         0      285    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         1        3    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             0     9273   12474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             1     2411   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              0      130   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              1       38   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         0      478   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         1      144   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             0       22     192
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             1        4     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              0       92     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              1       20     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       42     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         1       12     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0      332     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1       38     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              0      170     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              1       23     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0      212     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1       32     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             0       88     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             1       14     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              0      115     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              1       33     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         0      101     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         1       20     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             0      923    1510
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             1       56    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              0      104    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              1        9    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         0      397    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         1       21    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             0    11053   11892
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             1       90   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              0      155   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              1        1   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         0      592   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         1        1   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             0       44     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             1        0     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              0      190     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              1        8     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       89     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        5     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             0      743    1298
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             1       80    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              0       79    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              1       17    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         0      344    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         1       35    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             0     3352    3609
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             1       35    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm              0       50    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm              1        2    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0      168    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         1        2    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             0       69     532
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             1        3     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              0      292     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              1       19     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         0      140     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        9     532


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/f26245a6-ab18-4354-baad-a11678a0c481/d171567a-f84a-498e-b3d7-b40c37d9680c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f26245a6-ab18-4354-baad-a11678a0c481/d171567a-f84a-498e-b3d7-b40c37d9680c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f26245a6-ab18-4354-baad-a11678a0c481/d171567a-f84a-498e-b3d7-b40c37d9680c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f26245a6-ab18-4354-baad-a11678a0c481/d171567a-f84a-498e-b3d7-b40c37d9680c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.2060177   0.1397930   0.2722424
Birth       ki1119695-PROBIT           BELARUS   <162 cm              NA                0.2195694   0.1885738   0.2505649
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.2316924   0.1568440   0.3065408
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1057229   0.0796215   0.1318243
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1119398   0.0554346   0.1684449
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1350803   0.0940552   0.1761055
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1317869   0.0642650   0.1993089
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2133571   0.1457342   0.2809801
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1576022   0.0901888   0.2250155
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0572012   0.0426496   0.0717529
6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0796460   0.0297102   0.1295818
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0502392   0.0292917   0.0711867
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0975928   0.0766792   0.1185064
24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1907524   0.1061369   0.2753679
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1057614   0.0701804   0.1413424


### Parameter: E(Y)


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS   NA                   NA                0.2078724   0.1422510   0.2734938
6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1152416   0.0868962   0.1435870
6 months    ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1805930   0.1413965   0.2197895
6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0569536   0.0452605   0.0686468
24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1016949   0.0852459   0.1181439


### Parameter: RR


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.0657793   0.8027916   1.414920
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          1.1246238   0.9440064   1.339799
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0588037   0.6008461   1.865811
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2776829   0.8966410   1.820655
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.6189553   0.8870263   2.954835
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1958863   0.6130252   2.332929
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3923831   0.7077955   2.739111
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8782895   0.5389064   1.431403
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.9545749   1.1948957   3.197236
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.0837012   0.7278473   1.613537


### Parameter: PAR


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0018547   -0.0001542   0.0038636
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0095188   -0.0185913   0.0376289
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0488061   -0.0114866   0.1090987
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0002476   -0.0088444   0.0083492
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0041021   -0.0092493   0.0174536


### Parameter: PAF


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0089223   -0.0019500   0.0196766
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0825983   -0.1825185   0.2882767
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2702545   -0.1492121   0.5366142
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0043471   -0.1672214   0.1357996
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0403377   -0.1003467   0.1630350
