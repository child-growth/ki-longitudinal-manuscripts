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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country     fhtcm           wast_rec90d   n_cell      n
------------  -------------------------  ----------  -------------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      117    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       84    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       68    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       42    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       96    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       56    463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       61    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        3    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       97    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        5    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       52    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        5    223
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      329   1317
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      521   1317
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       40   1317
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       64   1317
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      131   1317
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      232   1317
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0      418   3583
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     2931   3583
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        9   3583
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       40   3583
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0       14   3583
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1      171   3583
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        8    128
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4    128
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       62    128
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       16    128
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       30    128
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        8    128
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       31    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       41    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       21    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       19    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       29    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       32    173
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       21     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        0     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       33     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        0     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       18     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        0     72
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0       75    526
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      267    526
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0       13    526
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       37    526
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0       25    526
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1      109    526
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0      329   3452
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     2896   3452
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0        7   3452
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       40   3452
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0        9   3452
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1      171   3452
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        0     44
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4     44
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0        9     44
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       16     44
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0        7     44
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        8     44
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       86    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       43    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       47    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       23    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       67    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       24    290
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       40    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        3    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       64    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        5    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       34    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        5    151
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      254    791
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      254    791
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       27    791
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       27    791
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      106    791
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      123    791
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0       89    131
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1       35    131
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        2    131
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        0    131
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0        5    131
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        0    131
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        8     84
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        0     84
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       53     84
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1        0     84
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       23     84
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        0     84


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

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/f9308000-bef0-4264-ac3b-f27fd3b9c6db/97899132-175d-4871-a157-3780e3ce01d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9308000-bef0-4264-ac3b-f27fd3b9c6db/97899132-175d-4871-a157-3780e3ce01d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f9308000-bef0-4264-ac3b-f27fd3b9c6db/97899132-175d-4871-a157-3780e3ce01d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f9308000-bef0-4264-ac3b-f27fd3b9c6db/97899132-175d-4871-a157-3780e3ce01d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.4154569   0.3454157   0.4854981
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.4020310   0.2982569   0.5058050
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3741850   0.2967444   0.4516255
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.6079946   0.5729234   0.6430657
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.6331035   0.5353069   0.7309000
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.6454189   0.5886676   0.7021702
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8751866   0.8640642   0.8863090
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8163265   0.7611017   0.8715513
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9243243   0.8863804   0.9622683
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.5570536   0.4384448   0.6756625
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.4395993   0.2730545   0.6061441
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.5215926   0.4004872   0.6426979
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.7777205   0.7335782   0.8218628
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.7447536   0.6218861   0.8676211
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.8137639   0.7500599   0.8774679
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8979845   0.8874533   0.9085156
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8510638   0.7949564   0.9071712
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9500000   0.9177878   0.9822122
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.3277577   0.2448972   0.4106182
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3382440   0.2184850   0.4580030
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.2662488   0.1695757   0.3629219
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.4998969   0.4536014   0.5461924
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5321213   0.3884807   0.6757619
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5377185   0.4628906   0.6125464


### Parameter: E(Y)


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.3930886   0.3463071   0.4398700
0-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.6203493   0.5920542   0.6486444
0-24 months   ki1119695-PROBIT          BELARUS   NA                   NA                0.8769188   0.8662437   0.8875939
0-6 months    ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.5317919   0.4572362   0.6063476
0-6 months    ki1101329-Keneba          GAMBIA    NA                   NA                0.7851711   0.7510257   0.8193166
0-6 months    ki1119695-PROBIT          BELARUS   NA                   NA                0.9000579   0.8899697   0.9101462
6-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.3103448   0.2551537   0.3655360
6-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.5107459   0.4734246   0.5480672


### Parameter: RR


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9676840   0.7113988   1.316297
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9006590   0.6904359   1.174891
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.0412979   0.8833311   1.227514
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0615537   0.9555404   1.179329
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9327457   0.8707006   0.999212
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0561454   1.0117213   1.102520
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.7891508   0.5109603   1.218801
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9363418   0.6835106   1.282695
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          0.9576109   0.8039889   1.140586
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0463449   0.9502040   1.152213
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9477489   0.8863647   1.013384
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0579247   1.0206409   1.096570
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.0319939   0.6670225   1.596665
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8123342   0.5217658   1.264719
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.0644622   0.8004816   1.415498
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0756588   0.9100732   1.271372


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0223683   -0.0752545   0.0305178
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0123547   -0.0090514   0.0337609
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0017322   -0.0008017   0.0042660
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0252617   -0.1154273   0.0649039
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0074506   -0.0183022   0.0332034
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0020734   -0.0002613   0.0044081
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0174129   -0.0793402   0.0445144
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0108490   -0.0176683   0.0393663


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0569040   -0.2006996   0.0696706
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0199158   -0.0151955   0.0538126
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0019753   -0.0009199   0.0048621
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0475030   -0.2314793   0.1089883
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0094891   -0.0238905   0.0417806
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0023037   -0.0002958   0.0048964
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0561082   -0.2760765   0.1259422
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0212415   -0.0361907   0.0754904
