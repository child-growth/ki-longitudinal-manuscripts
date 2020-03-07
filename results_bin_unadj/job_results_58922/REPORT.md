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

**Outcome Variable:** sstunted

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

agecat      studyid         country     fhtcm           sstunted   n_cell       n
----------  --------------  ----------  -------------  ---------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm               0       27     206
Birth       COHORTS         GUATEMALA   >=167 cm               1        2     206
Birth       COHORTS         GUATEMALA   <162 cm                0      119     206
Birth       COHORTS         GUATEMALA   <162 cm                1        2     206
Birth       COHORTS         GUATEMALA   [162-167) cm           0       56     206
Birth       COHORTS         GUATEMALA   [162-167) cm           1        0     206
Birth       Keneba          GAMBIA      >=167 cm               0      755    1167
Birth       Keneba          GAMBIA      >=167 cm               1       17    1167
Birth       Keneba          GAMBIA      <162 cm                0       87    1167
Birth       Keneba          GAMBIA      <162 cm                1        0    1167
Birth       Keneba          GAMBIA      [162-167) cm           0      304    1167
Birth       Keneba          GAMBIA      [162-167) cm           1        4    1167
Birth       PROBIT          BELARUS     >=167 cm               0    11737   12535
Birth       PROBIT          BELARUS     >=167 cm               1        5   12535
Birth       PROBIT          BELARUS     <162 cm                0      168   12535
Birth       PROBIT          BELARUS     <162 cm                1        0   12535
Birth       PROBIT          BELARUS     [162-167) cm           0      625   12535
Birth       PROBIT          BELARUS     [162-167) cm           1        0   12535
Birth       SAS-CompFeed    INDIA       >=167 cm               0      329     746
Birth       SAS-CompFeed    INDIA       >=167 cm               1       14     746
Birth       SAS-CompFeed    INDIA       <162 cm                0      166     746
Birth       SAS-CompFeed    INDIA       <162 cm                1       24     746
Birth       SAS-CompFeed    INDIA       [162-167) cm           0      197     746
Birth       SAS-CompFeed    INDIA       [162-167) cm           1       16     746
6 months    COHORTS         GUATEMALA   >=167 cm               0       42     336
6 months    COHORTS         GUATEMALA   >=167 cm               1        3     336
6 months    COHORTS         GUATEMALA   <162 cm                0      157     336
6 months    COHORTS         GUATEMALA   <162 cm                1       40     336
6 months    COHORTS         GUATEMALA   [162-167) cm           0       85     336
6 months    COHORTS         GUATEMALA   [162-167) cm           1        9     336
6 months    Keneba          GAMBIA      >=167 cm               0      948    1511
6 months    Keneba          GAMBIA      >=167 cm               1       31    1511
6 months    Keneba          GAMBIA      <162 cm                0      111    1511
6 months    Keneba          GAMBIA      <162 cm                1        2    1511
6 months    Keneba          GAMBIA      [162-167) cm           0      403    1511
6 months    Keneba          GAMBIA      [162-167) cm           1       16    1511
6 months    PROBIT          BELARUS     >=167 cm               0    11044   11894
6 months    PROBIT          BELARUS     >=167 cm               1      102   11894
6 months    PROBIT          BELARUS     <162 cm                0      149   11894
6 months    PROBIT          BELARUS     <162 cm                1        7   11894
6 months    PROBIT          BELARUS     [162-167) cm           0      580   11894
6 months    PROBIT          BELARUS     [162-167) cm           1       12   11894
6 months    SAS-CompFeed    INDIA       >=167 cm               0      345     807
6 months    SAS-CompFeed    INDIA       >=167 cm               1       24     807
6 months    SAS-CompFeed    INDIA       <162 cm                0      163     807
6 months    SAS-CompFeed    INDIA       <162 cm                1       31     807
6 months    SAS-CompFeed    INDIA       [162-167) cm           0      220     807
6 months    SAS-CompFeed    INDIA       [162-167) cm           1       24     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm               0       91     372
6 months    SAS-FoodSuppl   INDIA       >=167 cm               1       11     372
6 months    SAS-FoodSuppl   INDIA       <162 cm                0      125     372
6 months    SAS-FoodSuppl   INDIA       <162 cm                1       23     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm           0      105     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm           1       17     372
24 months   COHORTS         GUATEMALA   >=167 cm               0       44     526
24 months   COHORTS         GUATEMALA   >=167 cm               1       26     526
24 months   COHORTS         GUATEMALA   <162 cm                0      134     526
24 months   COHORTS         GUATEMALA   <162 cm                1      173     526
24 months   COHORTS         GUATEMALA   [162-167) cm           0       87     526
24 months   COHORTS         GUATEMALA   [162-167) cm           1       62     526
24 months   Keneba          GAMBIA      >=167 cm               0      765    1297
24 months   Keneba          GAMBIA      >=167 cm               1       56    1297
24 months   Keneba          GAMBIA      <162 cm                0       88    1297
24 months   Keneba          GAMBIA      <162 cm                1        9    1297
24 months   Keneba          GAMBIA      [162-167) cm           0      338    1297
24 months   Keneba          GAMBIA      [162-167) cm           1       41    1297
24 months   PROBIT          BELARUS     >=167 cm               0     3394    3670
24 months   PROBIT          BELARUS     >=167 cm               1       51    3670
24 months   PROBIT          BELARUS     <162 cm                0       49    3670
24 months   PROBIT          BELARUS     <162 cm                1        4    3670
24 months   PROBIT          BELARUS     [162-167) cm           0      167    3670
24 months   PROBIT          BELARUS     [162-167) cm           1        5    3670


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
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/28f5b8ab-8aad-4cf5-80f6-bd4be1a19d38/2e72e8f5-073b-4794-bc53-8d3a9bce1a9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28f5b8ab-8aad-4cf5-80f6-bd4be1a19d38/2e72e8f5-073b-4794-bc53-8d3a9bce1a9f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28f5b8ab-8aad-4cf5-80f6-bd4be1a19d38/2e72e8f5-073b-4794-bc53-8d3a9bce1a9f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28f5b8ab-8aad-4cf5-80f6-bd4be1a19d38/2e72e8f5-073b-4794-bc53-8d3a9bce1a9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0408163   0.0078721   0.0737606
Birth       SAS-CompFeed    INDIA       <162 cm              NA                0.1263158   0.0755682   0.1770633
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                0.0751174   0.0464375   0.1037972
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0091513   0.0042279   0.0140747
6 months    PROBIT          BELARUS     <162 cm              NA                0.0448718   0.0264882   0.0632554
6 months    PROBIT          BELARUS     [162-167) cm         NA                0.0202703   0.0030201   0.0375204
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0650407   0.0418212   0.0882601
6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.1597938   0.1141226   0.2054650
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.0983607   0.0673384   0.1293829
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1078431   0.0475664   0.1681198
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.1554054   0.0969588   0.2138520
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1393443   0.0778107   0.2008778
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.3714286   0.2581293   0.4847279
24 months   COHORTS         GUATEMALA   <162 cm              NA                0.5635179   0.5079877   0.6190481
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.4161074   0.3368869   0.4953278
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0682095   0.0509581   0.0854609
24 months   Keneba          GAMBIA      <162 cm              NA                0.0927835   0.0350244   0.1505426
24 months   Keneba          GAMBIA      [162-167) cm         NA                0.1081794   0.0768965   0.1394623


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       SAS-CompFeed    INDIA       NA                   NA                0.0723861   0.0394059   0.1053662
6 months    PROBIT          BELARUS     NA                   NA                0.0101732   0.0047762   0.0155702
6 months    SAS-CompFeed    INDIA       NA                   NA                0.0978934   0.0736377   0.1221492
6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.1370968   0.1020978   0.1720958
24 months   COHORTS         GUATEMALA   NA                   NA                0.4961977   0.4534290   0.5389664
24 months   Keneba          GAMBIA      NA                   NA                0.0817271   0.0668124   0.0966418


### Parameter: RR


agecat      studyid         country     intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  --------------  ----------  -------------------  ---------------  ---------  ----------  ---------
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          3.094737   1.6641121   5.755259
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.840376   0.8687643   3.898621
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          4.903343   2.7323237   8.799388
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          2.215024   1.1232780   4.367869
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.456830   1.7027872   3.544784
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.512295   0.9648625   2.370324
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.441032   0.7346789   2.826504
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.292101   0.6337789   2.634240
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.517164   1.1010716   2.090496
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.120289   0.7819320   1.605060
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.360272   0.6947196   2.663436
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.585988   1.0800767   2.328869


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0315697    0.0145500   0.0485894
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0010219    0.0000057   0.0020381
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0328528    0.0158810   0.0498246
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0292536   -0.0242792   0.0827865
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1247691    0.0187066   0.2308317
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0135176    0.0015474   0.0254877


### Parameter: PAF


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.4361300    0.0971323   0.6478450
6 months    PROBIT          BELARUS     >=167 cm             NA                0.1004533    0.0123077   0.1807325
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.3355974    0.1564362   0.4767073
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2133795   -0.2875613   0.5194234
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.2514505    0.0033634   0.4377826
24 months   Keneba          GAMBIA      >=167 cm             NA                0.1653988    0.0084770   0.2974857
