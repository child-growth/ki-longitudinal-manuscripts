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

agecat        studyid                    country     fhtcm           ever_co   n_cell       n
------------  -------------------------  ----------  -------------  --------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      327     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       80     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      162     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       64     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      196     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       66     895
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       73     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       33     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       84     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       79     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       91     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       39     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0     1062    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      183    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm               0      111    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       21    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      444    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      108    1929
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0    11722   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1       22   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm               0      168   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        0   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      624   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        1   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       59     495
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        4     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      244     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1       49     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      119     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       20     495
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      388     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       19     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      210     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       13     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      238     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       20     888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0      101     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1        5     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0      145     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       17     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0      122     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1        7     397
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0     1081    1722
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1       32    1722
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm               0      121    1722
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm               1        2    1722
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      471    1722
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       15    1722
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    11729   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1       15   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      168   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm               1        0   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      625   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1        0   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       48     334
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0      192     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1        3     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       89     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     334
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      315     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       73     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      139     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       61     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      186     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       62     836
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       74     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       31     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       86     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       73     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       91     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       37     392
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0     1014    1850
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      172    1850
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm               0      112    1850
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       19    1850
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      431    1850
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      102    1850
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0    11730   12530
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1        8   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm               0      168   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        0   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      623   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        1   12530
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       59     488
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        4     488
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      239     488
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1       48     488
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      120     488
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       18     488


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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/35bcab87-04f0-4945-bdae-58fe8d04321b/cd309570-4ea1-459c-9593-61a4b15fd84d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/35bcab87-04f0-4945-bdae-58fe8d04321b/cd309570-4ea1-459c-9593-61a4b15fd84d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/35bcab87-04f0-4945-bdae-58fe8d04321b/cd309570-4ea1-459c-9593-61a4b15fd84d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/35bcab87-04f0-4945-bdae-58fe8d04321b/cd309570-4ea1-459c-9593-61a4b15fd84d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.2069374   0.1525688   0.2613060
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.2582228   0.1616096   0.3548360
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.2590499   0.1902123   0.3278875
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3155131   0.2255094   0.4055169
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.4874817   0.4106357   0.5643276
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.3039038   0.2245398   0.3832678
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1520870   0.1314385   0.1727355
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1767697   0.1118006   0.2417388
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1955855   0.1610069   0.2301642
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0478564   0.0253310   0.0703818
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0574001   0.0134317   0.1013686
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0802750   0.0546543   0.1058957
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0471698   0.0067604   0.0875792
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1049383   0.0576850   0.1521915
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.0542636   0.0151218   0.0934053
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1998366   0.1540526   0.2456205
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.2789184   0.1828676   0.3749692
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.2532158   0.1854930   0.3209386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.2876696   0.1994235   0.3759157
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.4598476   0.3818928   0.5378024
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.2858660   0.2065479   0.3651841
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1480182   0.1279697   0.1680668
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1332544   0.0715122   0.1949966
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1851730   0.1517395   0.2186064


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.2346369   0.1798928   0.2893809
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.3784461   0.3307978   0.4260945
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1617418   0.1453059   0.1781778
0-6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0585586   0.0394255   0.0776916
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.0730479   0.0474188   0.0986769
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.2344498   0.1848813   0.2840182
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.3596939   0.3121253   0.4072624
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1583784   0.1417371   0.1750196


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2478303   0.8379373   1.858230
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2518273   1.0037175   1.561268
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5450440   1.1154876   2.140016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9632048   0.6541559   1.418261
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.1622932   0.7865159   1.717607
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.2860111   1.0299527   1.605728
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1994238   0.4570734   3.147454
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.6774130   1.0396655   2.706365
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.2246913   0.8451872   5.855805
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1503876   0.3753798   3.525474
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.3957328   0.9991358   1.949755
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2671144   0.9874626   1.625964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5985268   1.1257206   2.269913
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9937302   0.6575521   1.501782
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          0.9002566   0.5556796   1.458506
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.2510144   0.9985557   1.567301


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0276995   -0.0059035   0.0613024
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0629330   -0.0154682   0.1413342
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0096549   -0.0036689   0.0229786
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0107021   -0.0093260   0.0307303
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0258780   -0.0117754   0.0635315
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0346132    0.0027394   0.0664870
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0720243   -0.0049970   0.1490455
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0103601   -0.0024211   0.0231414


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1180524   -0.0301202   0.2449119
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1662931   -0.0691028   0.3498594
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0596930   -0.0263215   0.1384987
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1827597   -0.2188026   0.4520181
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3542615   -0.4046217   0.7031385
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1476359    0.0123850   0.2643646
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.2002377   -0.0455117   0.3882232
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0654138   -0.0185164   0.1424278
