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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm               0      329     746
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm               1       14     746
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm                0      166     746
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm                1       24     746
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           0      197     746
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm           1       16     746
Birth       ki1101329-Keneba           GAMBIA      >=167 cm               0      755    1167
Birth       ki1101329-Keneba           GAMBIA      >=167 cm               1       17    1167
Birth       ki1101329-Keneba           GAMBIA      <162 cm                0       87    1167
Birth       ki1101329-Keneba           GAMBIA      <162 cm                1        0    1167
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm           0      304    1167
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm           1        4    1167
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
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm           0      338    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm           1       41    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm               0     3395    3670
24 months   ki1119695-PROBIT           BELARUS     >=167 cm               1       50    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm                0       47    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm                1        6    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm           0      167    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm           1        5    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm               0       44     526
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm               1       26     526
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                0      134     526
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                1      173     526
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm           0       87     526
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm           1       62     526


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
![](/tmp/92a5edcd-b152-48e2-b579-113045d38e27/bee26522-a412-4834-91ea-1cf6293bb345/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92a5edcd-b152-48e2-b579-113045d38e27/bee26522-a412-4834-91ea-1cf6293bb345/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92a5edcd-b152-48e2-b579-113045d38e27/bee26522-a412-4834-91ea-1cf6293bb345/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92a5edcd-b152-48e2-b579-113045d38e27/bee26522-a412-4834-91ea-1cf6293bb345/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0410756    0.0076308   0.0745205
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1278823    0.0728584   0.1829061
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.0744086    0.0460190   0.1027982
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0657884    0.0432806   0.0882963
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1531390    0.1064535   0.1998244
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1008444    0.0677743   0.1339145
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1113653    0.0513112   0.1714195
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1572372    0.0980763   0.2163982
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1370125    0.0756357   0.1983893
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0120223    0.0079019   0.0161426
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0576923    0.0358042   0.0795804
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0252951   -0.0025152   0.0531054
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0682095    0.0509581   0.0854609
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0927835    0.0350244   0.1505426
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1081794    0.0768965   0.1394623
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0145138    0.0022992   0.0267283
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1132075   -0.0103712   0.2367863
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0290698   -0.0059881   0.0641276
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3846741    0.2755676   0.4937806
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5570009    0.5004146   0.6135873
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.4067843    0.3237044   0.4898642


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.0723861   0.0394059   0.1053662
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.0978934   0.0736377   0.1221492
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1370968   0.1020978   0.1720958
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0132829   0.0086021   0.0179637
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.0817271   0.0668124   0.0966418
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0166213   0.0025092   0.0307333
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4961977   0.4534290   0.5389664


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ---------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          3.113336   1.6808266    5.766721
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.811503   0.8364897    3.922991
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          2.327749   1.6538780    3.276188
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.532859   0.9545336    2.461575
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.411905   0.7319372    2.723561
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.230298   0.6128142    2.469970
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          4.798794   3.3403900    6.893934
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.104025   0.7075144    6.257003
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.360272   0.6947196    2.663436
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.585988   1.0800767    2.328869
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          7.800000   3.5504170   17.136015
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.002907   0.4406297    9.104326
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.447982   1.0736571    1.952812
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.057478   0.7471424    1.496715


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0313104    0.0139253   0.0486956
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0321050    0.0145389   0.0496710
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0257315   -0.0275581   0.0790210
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0012606   -0.0001507   0.0026720
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0135176    0.0015474   0.0254877
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0021075   -0.0012752   0.0054902
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1115236    0.0082455   0.2148018


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.4325476    0.0831631   0.6487901
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3279586    0.1479214   0.4699555
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1876882   -0.3060620   0.4947787
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0949072   -0.0032410   0.1834534
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1653988    0.0084770   0.2974857
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.1267934   -0.0458934   0.2709680
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2247564   -0.0134841   0.4069936
