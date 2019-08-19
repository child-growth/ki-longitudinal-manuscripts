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

**Outcome Variable:** swasted

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

agecat      studyid                    country     fhtcm           swasted   n_cell       n
----------  -------------------------  ----------  -------------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0       46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0       20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0       24      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        0      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      705    1079
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1        5    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       80    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        1    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      287    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1        1    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    10922   12474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1      762   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      161   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        7   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      581   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1       41   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       25     192
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        1     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      104     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1        8     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       52     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      360     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       10     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      186     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        7     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      236     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        8     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0      101     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1        1     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0      136     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       12     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0      116     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1        5     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      963    1510
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1       16    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0      109    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1        4    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      414    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1        4    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    11132   11892
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1       11   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      156   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1        0   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      593   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1        0   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       44     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0      197     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1        1     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       93     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        1     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      809    1298
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1       14    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       92    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1        4    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      377    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1        2    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3384    3609
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1        3    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       51    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        1    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      170    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        0    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       72     532
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      308     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1        3     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      148     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        1     532


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/73377699-dfd3-40f2-a32d-5edd90156abe/11f8a8f4-2ca2-47bc-9aa1-e970011876e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73377699-dfd3-40f2-a32d-5edd90156abe/11f8a8f4-2ca2-47bc-9aa1-e970011876e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73377699-dfd3-40f2-a32d-5edd90156abe/11f8a8f4-2ca2-47bc-9aa1-e970011876e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73377699-dfd3-40f2-a32d-5edd90156abe/11f8a8f4-2ca2-47bc-9aa1-e970011876e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.0652174   0.0324018   0.0980330
Birth      ki1119695-PROBIT          BELARUS   <162 cm              NA                0.0416667   0.0189096   0.0644237
Birth      ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.0659164   0.0338088   0.0980240
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.0270270   0.0121681   0.0418860
6 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.0362694   0.0081223   0.0644166
6 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.0327869   0.0187768   0.0467969


### Parameter: E(Y)


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT          BELARUS   NA                   NA                0.0649351   0.0325633   0.0973069
6 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.0309789   0.0217091   0.0402488


### Parameter: RR


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth      ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.6388889   0.4064928   1.004148
Birth      ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0107181   0.7357249   1.388496
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.3419689   0.5455891   3.300800
6 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.2131148   0.6041146   2.436040


### Parameter: PAR


agecat     studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0002823   -0.0014526   0.0008880
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0039519   -0.0052884   0.0131922


### Parameter: PAF


agecat     studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0043478   -0.0218507   0.0128553
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.1275676   -0.2467301   0.3894923
