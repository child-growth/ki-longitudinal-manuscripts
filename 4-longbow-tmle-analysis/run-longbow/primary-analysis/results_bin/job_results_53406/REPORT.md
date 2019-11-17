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

**Outcome Variable:** stunted

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

agecat      studyid                    country     fhtcm           stunted   n_cell       n
----------  -------------------------  ----------  -------------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      253     746
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       90     746
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      126     746
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       64     746
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      148     746
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       65     746
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      735    1167
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       37    1167
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       82    1167
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        5    1167
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      291    1167
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       17    1167
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    11714   12533
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1       26   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      168   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        0   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      622   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1        3   12533
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       26     206
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        3     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      111     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1       10     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       54     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     206
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      281     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       88     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      129     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       65     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      168     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       76     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       64     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       38     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       72     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       76     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      849    1511
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1      130    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0       98    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1       15    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      355    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       64    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    10535   11895
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1      611   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      131   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1       25   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      529   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1       64   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       31     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1       14     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0       88     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1      109     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       61     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       33     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      565    1297
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      256    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       63    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       34    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      216    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      163    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3161    3670
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1      284    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       42    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1       11    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      149    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1       23    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       24     526
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1       46     526
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0       40     526
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1      267     526
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       36     526
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1      113     526


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

* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/58ecea8c-20eb-4f04-8967-345ecbf4a16f/d7bab45b-e21f-48cd-abaa-b70c56853181/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58ecea8c-20eb-4f04-8967-345ecbf4a16f/d7bab45b-e21f-48cd-abaa-b70c56853181/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58ecea8c-20eb-4f04-8967-345ecbf4a16f/d7bab45b-e21f-48cd-abaa-b70c56853181/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58ecea8c-20eb-4f04-8967-345ecbf4a16f/d7bab45b-e21f-48cd-abaa-b70c56853181/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2734250   0.2277502   0.3190999
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3175758   0.2628426   0.3723089
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3039056   0.2354628   0.3723485
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063981
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.0551948   0.0296808   0.0807088
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2521530   0.2179136   0.2863924
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3064188   0.2371949   0.3756428
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3116115   0.2423894   0.3808335
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3704068   0.2780769   0.4627366
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.4957813   0.4154078   0.5761547
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3692195   0.2841003   0.4543386
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1337275   0.1124611   0.1549939
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1329844   0.0685567   0.1974122
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1503012   0.1159064   0.1846961
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0558540   0.0437788   0.0679292
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1119433   0.0903239   0.1335628
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1096075   0.0747205   0.1444945
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3090688   0.1642945   0.4538431
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5542306   0.4843251   0.6241361
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3522287   0.2544046   0.4500528
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3169118   0.2847749   0.3490486
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3726916   0.2676415   0.4777417
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4360010   0.3848638   0.4871382
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0841512   0.0514795   0.1168229
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1451524   0.0621572   0.2281476
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1427759   0.0560815   0.2294704
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6831685   0.5577558   0.8085812
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8727662   0.8352476   0.9102848
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7729278   0.7066089   0.8392467


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2935657   0.2562276   0.3309038
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                0.0505570   0.0379815   0.0631324
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3492675   0.3233122   0.3752228
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8098859   0.7763209   0.8434510


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1614728   0.9485658   1.422167
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1114769   0.8626373   1.432098
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838515   2.971807
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1516321   0.6584043   2.014350
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.2152099   1.0339183   1.428290
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2358030   0.9313452   1.639788
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3384779   0.9966070   1.797622
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.9967947   0.7122673   1.394982
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9944434   0.5972013   1.655920
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1239363   0.8508156   1.484732
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.0042126   1.5630845   2.569834
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.9623926   1.4599302   2.637787
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7932273   1.1039857   2.912777
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1396450   0.6607966   1.965492
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1760106   0.8718392   1.586303
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.3757804   1.1797438   1.604392
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.7248999   1.0654548   2.792497
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.6966597   0.8933712   3.222237
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2775271   1.0584097   1.542007
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1313868   0.9246185   1.384394


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0201406   -0.0059426   0.0462239
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0026295   -0.0065753   0.0118343
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0316140    0.0045181   0.0587100
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0570126   -0.0219074   0.1359326
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0045915   -0.0084273   0.0176102
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0029942    0.0012060   0.0047825
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1552169    0.0188400   0.2915938
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0323558    0.0118359   0.0528756
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0024973   -0.0004928   0.0054874
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1267175    0.0111432   0.2422918


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0686069   -0.0251466   0.1537863
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0520111   -0.1482148   0.2173215
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1114083    0.0168404   0.1968800
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1333880   -0.0726455   0.2998466
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0331948   -0.0655547   0.1227928
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0508807    0.0222997   0.0786261
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3343133   -0.0368056   0.5725923
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0926389    0.0319409   0.1495311
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0288212   -0.0057785   0.0622306
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1564633   -0.0004238   0.2887474
