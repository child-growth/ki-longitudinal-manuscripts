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

agecat      studyid                    country     fhtcm           sstunted   n_cell       n
----------  -------------------------  ----------  -------------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm               0       49     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm               1        1     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm                0       22     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm                1        1     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           0       26     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           1        3     102
Birth       ki1101329-Keneba           GAMBIA      >=167 cm               0      755    1165
Birth       ki1101329-Keneba           GAMBIA      >=167 cm               1       17    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm                0       87    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm                1        0    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm           0      302    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm           1        4    1165
Birth       ki1119695-PROBIT           BELARUS     >=167 cm               0    11736   12533
Birth       ki1119695-PROBIT           BELARUS     >=167 cm               1        4   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm                0      168   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm                1        0   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm           0      624   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm           1        1   12533
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm               0       27     206
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm               1        2     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm                0      119     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm                1        2     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm           0       56     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm           1        0     206
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm               0      345     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm               1       24     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                0      163     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                1       31     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           0      220     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           1       24     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm               0       91     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm               1       11     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                0      125     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                1       23     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm           0      105     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm           1       17     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm               0      948    1511
6 months    ki1101329-Keneba           GAMBIA      >=167 cm               1       31    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm                0      111    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm                1        2    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm           0      403    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm           1       16    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm               0    11012   11895
6 months    ki1119695-PROBIT           BELARUS     >=167 cm               1      134   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm                0      147   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm                1        9   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm           0      578   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm           1       15   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm               0       42     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm               1        3     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                0      157     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                1       40     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm           0       85     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm           1        9     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm               0      765    1297
24 months   ki1101329-Keneba           GAMBIA      >=167 cm               1       56    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm                0       88    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm                1        9    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm           0      340    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm           1       39    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm               0     3395    3670
24 months   ki1119695-PROBIT           BELARUS     >=167 cm               1       50    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm                0       47    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm                1        6    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm           0      167    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm           1        5    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm               0       49     528
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm               1       23     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                0      161     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                1      146     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm           0       95     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm           1       54     528


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/3b8e1665-8338-4f99-a605-d0729425e284/5dce4295-1acc-4917-b246-dd33cd028241/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b8e1665-8338-4f99-a605-d0729425e284/5dce4295-1acc-4917-b246-dd33cd028241/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b8e1665-8338-4f99-a605-d0729425e284/5dce4295-1acc-4917-b246-dd33cd028241/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b8e1665-8338-4f99-a605-d0729425e284/5dce4295-1acc-4917-b246-dd33cd028241/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0657884    0.0432806   0.0882963
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1531390    0.1064535   0.1998244
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1008444    0.0677743   0.1339145
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1084541    0.0484170   0.1684911
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1534747    0.0947623   0.2121871
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1345594    0.0727514   0.1963674
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0120223    0.0079019   0.0161426
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0576923    0.0358042   0.0795804
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0252951   -0.0025152   0.0531054
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0682095    0.0509581   0.0854609
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0927835    0.0350244   0.1505426
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1029024    0.0723019   0.1335029
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0145138    0.0022992   0.0267283
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1132075   -0.0103712   0.2367863
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0290698   -0.0059881   0.0641276
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3820131    0.2798525   0.4841737
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.4678846    0.4110861   0.5246831
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3607444    0.2817050   0.4397838


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.0978934   0.0736377   0.1221492
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1370968   0.1020978   0.1720958
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0132829   0.0086021   0.0179637
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.0801850   0.0653993   0.0949708
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0166213   0.0025092   0.0307333
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4223485   0.3801777   0.4645192


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.3277489   1.6538780    3.276188
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.5328589   0.9545336    2.461575
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.4151127   0.7228985    2.770159
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.2407039   0.6060025    2.540165
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          4.7987945   3.3403900    6.893934
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.1040246   0.7075144    6.257003
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.3602725   0.6947196    2.663436
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.5086223   1.0210316    2.229061
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          7.8000000   3.5504170   17.136015
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.0029070   0.4406297    9.104326
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2247870   0.9170900    1.635721
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          0.9443248   0.6714122    1.328170


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0321050    0.0145389   0.0496710
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0286427   -0.0246600   0.0819455
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0012606   -0.0001507   0.0026720
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0119755    0.0001665   0.0237846
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0021075   -0.0012752   0.0054902
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0403354   -0.0551812   0.1358521


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3279586    0.1479214   0.4699555
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2089234   -0.2883792   0.5142717
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0949072   -0.0032410   0.1834534
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1493488   -0.0088168   0.2827167
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.1267934   -0.0458934   0.2709680
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0955027   -0.1609893   0.2953291
