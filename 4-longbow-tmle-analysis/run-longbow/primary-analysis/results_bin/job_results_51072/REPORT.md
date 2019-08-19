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
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0       38     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       12     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0       17     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        6     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0       20     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        9     102
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      735    1165
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       37    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       82    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        5    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      290    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       16    1165
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
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      569    1297
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      252    1297
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
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       25     528
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1       47     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0       53     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1      254     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       40     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1      109     528


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
![](/tmp/bd55c125-cdad-4e61-87de-8cd92604c69c/08ff7902-dc45-44da-bcfa-dad9c21ec116/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd55c125-cdad-4e61-87de-8cd92604c69c/08ff7902-dc45-44da-bcfa-dad9c21ec116/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd55c125-cdad-4e61-87de-8cd92604c69c/08ff7902-dc45-44da-bcfa-dad9c21ec116/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd55c125-cdad-4e61-87de-8cd92604c69c/08ff7902-dc45-44da-bcfa-dad9c21ec116/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2400000   0.1335281   0.3464719
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2608696   0.0876979   0.4340412
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3103448   0.0805885   0.5401011
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063982
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.0522876   0.0273352   0.0772399
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2519968   0.2180586   0.2859349
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3129045   0.2429779   0.3828311
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3089097   0.2404046   0.3774149
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3674279   0.2741335   0.4607224
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5052801   0.4253752   0.5851849
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3753052   0.2896660   0.4609444
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1344405   0.1131435   0.1557374
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1344845   0.0709864   0.1979826
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1474628   0.1131208   0.1818049
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0558965   0.0438161   0.0679769
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1229788   0.1004367   0.1455210
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1001467   0.0614443   0.1388490
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2869699   0.1420116   0.4319282
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5539303   0.4841409   0.6237197
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3591614   0.2620923   0.4562305
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3109991   0.2788040   0.3431941
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3816842   0.2786920   0.4846763
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4334369   0.3830739   0.4838000
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0840417   0.0513915   0.1166918
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1316547   0.0452386   0.2180708
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1274080   0.0567646   0.1980514
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7009586   0.5832217   0.8186954
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8255525   0.7819966   0.8691084
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7426398   0.6707575   0.8145221


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2647059   0.1675094   0.3619023
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                0.0497854   0.0372905   0.0622803
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3461835   0.3202819   0.3720851
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7765152   0.7409486   0.8120817


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.086957   0.4854442   2.433801
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.293103   0.6762338   2.472690
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.199130   0.4838511   2.971809
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.090973   0.6160200   1.932117
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.241700   1.0504782   1.467731
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.225848   0.9234973   1.627187
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.375181   1.0214801   1.851356
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.021439   0.7283632   1.432441
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.000327   0.6079303   1.646002
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.096863   0.8279631   1.453096
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.200117   1.7188571   2.816123
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.791645   1.2574965   2.552683
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.930273   1.1466818   3.249336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.251565   0.7055780   2.220044
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.227284   0.9196010   1.637913
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.393692   1.1947143   1.625809
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.566541   0.9012457   2.722954
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.516010   0.8454372   2.718457
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.177748   0.9880741   1.403832
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.059463   0.8733424   1.285249


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0247059   -0.0254771   0.0748889
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0018579   -0.0072081   0.0109240
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0317702    0.0038376   0.0597029
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0599914   -0.0198643   0.1398472
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0038785   -0.0091466   0.0169037
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0029517    0.0011166   0.0047869
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1773158    0.0406855   0.3139461
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0351844    0.0145742   0.0557947
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0026068   -0.0004034   0.0056171
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0755566   -0.0334364   0.1845495


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0933333   -0.1186151   0.2651231
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0373191   -0.1628844   0.2030553
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1119589    0.0145007   0.1997792
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1403573   -0.0687115   0.3085266
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0280405   -0.0707471   0.1177140
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0501586    0.0207024   0.0787287
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3819110    0.0021796   0.6171314
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1016353    0.0400139   0.1593012
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0300852   -0.0047290   0.0636931
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0973021   -0.0551240   0.2277084
