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




# Results Detail

## Results Plots
![](/tmp/ea05511a-924f-4837-b2f4-60452ca291f7/b75fe625-5ff9-4375-ba6e-0478cae3beb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ea05511a-924f-4837-b2f4-60452ca291f7/b75fe625-5ff9-4375-ba6e-0478cae3beb8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ea05511a-924f-4837-b2f4-60452ca291f7/b75fe625-5ff9-4375-ba6e-0478cae3beb8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ea05511a-924f-4837-b2f4-60452ca291f7/b75fe625-5ff9-4375-ba6e-0478cae3beb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0430804   0.0104106   0.0757502
Birth       SAS-CompFeed    INDIA       <162 cm              NA                0.1246073   0.0778741   0.1713405
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                0.0727026   0.0464944   0.0989108
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0091513   0.0042279   0.0140747
6 months    PROBIT          BELARUS     <162 cm              NA                0.0448718   0.0264882   0.0632554
6 months    PROBIT          BELARUS     [162-167) cm         NA                0.0202703   0.0030201   0.0375204
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0688768   0.0454703   0.0922833
6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.1485553   0.1014412   0.1956695
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.0979531   0.0637516   0.1321546
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1066498   0.0463124   0.1669873
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.1532643   0.0947358   0.2117928
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1328454   0.0711215   0.1945692
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.3630217   0.2594640   0.4665793
24 months   COHORTS         GUATEMALA   <162 cm              NA                0.5586968   0.5025276   0.6148661
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.4112931   0.3280290   0.4945573
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
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.892433   1.5440093   5.418471
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.687600   0.8155783   3.491995
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          4.903343   2.7323237   8.799388
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          2.215024   1.1232780   4.367869
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.156829   1.5465267   3.007972
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.422150   0.8917717   2.267969
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.437080   0.7267624   2.841643
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.245622   0.5999228   2.586289
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.539018   1.1401236   2.077473
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.132971   0.7999836   1.604563
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.360272   0.6947196   2.663436
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.585988   1.0800767   2.328869


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0293056    0.0094352   0.0491760
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0010219    0.0000057   0.0020381
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0290167    0.0119327   0.0461006
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0304470   -0.0232623   0.0841562
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1331760    0.0356321   0.2307200
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0135176    0.0015474   0.0254877


### Parameter: PAF


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.4048517    0.0504783   0.6269685
6 months    PROBIT          BELARUS     >=167 cm             NA                0.1004533    0.0123077   0.1807325
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.2964109    0.1168736   0.4394487
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2220837   -0.2822732   0.5280618
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.2683931    0.0433336   0.4405065
24 months   Keneba          GAMBIA      >=167 cm             NA                0.1653988    0.0084770   0.2974857
