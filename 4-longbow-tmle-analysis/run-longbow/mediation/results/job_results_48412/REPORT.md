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

**Outcome Variable:** haz

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
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           369     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            194     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       122     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       419    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11146   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            45     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            197     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           821    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm             97    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3445    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm             53    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       172    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            307     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     528


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f7f772be-90b2-44c9-a5ae-daa921c0ec5b/75c23f1c-c1b2-4156-992c-f2e56284b507/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f7f772be-90b2-44c9-a5ae-daa921c0ec5b/75c23f1c-c1b2-4156-992c-f2e56284b507/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f7f772be-90b2-44c9-a5ae-daa921c0ec5b/75c23f1c-c1b2-4156-992c-f2e56284b507/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -1.2522183   -1.3736784   -1.1307581
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -1.7300584   -1.8574818   -1.6026351
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5304470   -1.6613287   -1.3995652
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6487661   -1.8554587   -1.4420735
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1180137   -2.2864240   -1.9496034
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7662537   -1.9749586   -1.5575487
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8788746   -0.9476258   -0.8101233
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.0002437   -1.1869440   -0.8135433
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.0360936   -1.1387578   -0.9334294
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.1379265    0.0495302    0.2263227
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.5261084   -0.6398151   -0.4124017
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.2976865   -0.5361749   -0.0591980
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -1.6028228   -1.9269798   -1.2786657
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -2.1551794   -2.2939992   -2.0163596
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -1.6964582   -1.9177928   -1.4751237
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -1.5300289   -1.6005724   -1.4594854
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -1.7407327   -1.9762332   -1.5052322
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -1.7583447   -1.8631219   -1.6535675
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.1025772   -0.4043794    0.1992249
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.7855904   -1.1119575   -0.4592233
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4619219   -0.8237397   -0.1001041
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -2.5353366   -2.8044259   -2.2662473
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -3.0492526   -3.1705098   -2.9279954
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -2.6456731   -2.8077734   -2.4835728


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.1203779    0.0296502    0.2111056
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -1.6048736   -1.6613661   -1.5483810
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.1266303   -0.4286611    0.1754004
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -2.8628788   -2.9576712   -2.7680864


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4778402   -0.5900324   -0.3656479
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2782287   -0.4415167   -0.1149407
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4692476   -0.7365224   -0.2019728
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1174875   -0.4115850    0.1766099
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1213691   -0.3192069    0.0764687
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1572190   -0.2787088   -0.0357293
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6640349   -0.7954424   -0.5326274
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.4356129   -0.6375165   -0.2337093
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5523567   -0.9055410   -0.1991723
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0936355   -0.4893910    0.3021201
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.2107038   -0.4561275    0.0347199
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.2283158   -0.3530700   -0.1035616
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.6830132   -1.0340470   -0.3319794
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.3593447   -0.7433629    0.0246735
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.5139160   -0.8086403   -0.2191917
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1103365   -0.4238437    0.2031707


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1878561   -0.2544307   -0.1212815
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2383844   -0.4177854   -0.0589834
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0532806   -0.0940888   -0.0124723
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0175486   -0.0263558   -0.0087413
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3624749   -0.6679246   -0.0570251
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0748447   -0.1187953   -0.0308940
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0240531   -0.0418178   -0.0062884
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3275422   -0.5758736   -0.0792108
