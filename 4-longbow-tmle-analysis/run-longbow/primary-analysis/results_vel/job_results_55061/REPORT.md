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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country     fhtcm           n_cell       n  outcome_variable 
-------------  -------------------------  ----------  -------------  -------  ------  -----------------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           347     768  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            197     768  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       224     768  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           768    1181  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             82    1181  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       331    1181  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm         10778   11505  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm            151   11505  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       576   11505  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            37     243  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm            141     243  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        65     243  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           309     681  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            173     681  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       199     681  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673    1039  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             75    1039  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       291    1039  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          9479   10110  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm            129   10110  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       502   10110  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            37     263  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm            150     263  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        76     263  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           311     681  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            166     681  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       204     681  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            89     306  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            122     306  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        95     306  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm           442     663  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm             53     663  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm       168     663  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm          8933    9535  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm            126    9535  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm       476    9535  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            40     309  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm            187     309  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        82     309  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           317     683  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            165     683  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       201     683  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            83     297  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            125     297  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        89     297  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           419     652  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm             52     652  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       181     652  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          9112    9734  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm            126    9734  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       496    9734  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            51     371  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm            226     371  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     371  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           330     701  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            166     701  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       205     701  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            77     299  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            130     299  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        92     299  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm           652    1041  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm             85    1041  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm       304    1041  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm           842     898  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              9     898  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm        47     898  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            53     391  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm            228     391  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       110     391  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           335     716  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            168     716  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       213     716  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            79     289  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            120     289  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        90     289  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm           660    1053  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm             82    1053  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm       311    1053  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS     >=167 cm           229     242  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS     <162 cm              1     242  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS     [162-167) cm        12     242  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            48     356  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm            213     356  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        95     356  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm           636    1044  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm             84    1044  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm       324    1044  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS     >=167 cm           180     191  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS     <162 cm              2     191  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS     [162-167) cm         9     191  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            53     384  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm            224     384  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       107     384  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           584     935  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm             72     935  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       279     935  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS     >=167 cm           175     186  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS     <162 cm              4     186  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         7     186  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            60     428  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            246     428  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       122     428  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/0244dccc-fa1a-4289-a801-02a7d46a12f5/24c945c4-612a-4395-9656-6957f62444a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0244dccc-fa1a-4289-a801-02a7d46a12f5/24c945c4-612a-4395-9656-6957f62444a8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0244dccc-fa1a-4289-a801-02a7d46a12f5/24c945c4-612a-4395-9656-6957f62444a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.8254039   0.7959161   0.8548916
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.7594999   0.7155270   0.8034728
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7810032   0.7482297   0.8137766
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9198646   0.9043135   0.9354156
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.9622769   0.9056681   1.0188856
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9104917   0.8866971   0.9342863
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.8370904   0.8266286   0.8475522
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.7965719   0.7840001   0.8091437
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.8220250   0.8048819   0.8391682
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7965066   0.7144403   0.8785728
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7580445   0.7149356   0.8011533
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8069725   0.7513360   0.8626090
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.4580524   0.4328998   0.4832050
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4029084   0.3741355   0.4316812
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4249066   0.3988595   0.4509538
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.4490491   0.4354558   0.4626425
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4163778   0.3842118   0.4485437
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4214026   0.3992183   0.4435870
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.6670671   0.6590794   0.6750547
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.6324525   0.6127744   0.6521306
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.6242615   0.6022034   0.6463197
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.4461618   0.3865970   0.5057266
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.4190824   0.3931882   0.4449767
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.4790186   0.4437481   0.5142890
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1898967   0.1687007   0.2110927
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1779415   0.1401183   0.2157647
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1800503   0.1624127   0.1976880
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1989942   0.1690520   0.2289364
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.2045359   0.1803958   0.2286760
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1924861   0.1591902   0.2257820
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2019504   0.1849220   0.2189789
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.2226896   0.1671951   0.2781841
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1962323   0.1674475   0.2250170
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.4741643   0.4651198   0.4832088
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.4138899   0.3980980   0.4296819
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.4598846   0.4385283   0.4812408
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2198347   0.1658475   0.2738220
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2039018   0.1822511   0.2255526
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2001026   0.1697002   0.2305051
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2193567   0.1991419   0.2395715
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2075721   0.1951185   0.2200256
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2222407   0.1932446   0.2512368
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1419056   0.1072111   0.1766001
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1406776   0.1101079   0.1712472
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1440786   0.1085398   0.1796174
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1539656   0.1374902   0.1704410
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1722836   0.1256863   0.2188809
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1350858   0.1089687   0.1612030
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.3657006   0.3513484   0.3800527
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.4013252   0.3861306   0.4165197
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.3530245   0.3295342   0.3765149
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1911265   0.1566562   0.2255968
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1494396   0.1295073   0.1693719
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1221668   0.0879882   0.1563453
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1972816   0.1704059   0.2241572
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2040715   0.1636523   0.2444908
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1961523   0.1763776   0.2159271
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1654995   0.1327626   0.1982365
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1760964   0.1510409   0.2011519
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1800203   0.1497396   0.2103009
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1750584   0.1607253   0.1893916
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1892728   0.1575506   0.2209950
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1998654   0.1776614   0.2220694
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2205129   0.1432668   0.2977591
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1522740   0.0175183   0.2870298
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2228026   0.0337787   0.4118265
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1219842   0.0781096   0.1658588
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1352428   0.1149844   0.1555012
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1811676   0.1449281   0.2174071
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1652185   0.1294168   0.2010202
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1565907   0.1302252   0.1829562
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1705630   0.1479511   0.1931748
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1479179   0.1185530   0.1772828
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1727041   0.1468168   0.1985915
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1504639   0.1229058   0.1780220
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1675877   0.1532224   0.1819530
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1252812   0.0835074   0.1670549
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1559368   0.1329529   0.1789207
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1019554   0.0410330   0.1628779
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1614958   0.1388241   0.1841676
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1119624   0.0736724   0.1502524
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1581100   0.1428773   0.1733428
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1391563   0.0969643   0.1813483
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1505917   0.1281871   0.1729964
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1960773   0.1413032   0.2508515
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1636394   0.1417991   0.1854797
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1931255   0.1634520   0.2227990
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1750533   0.1607334   0.1893733
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1263165   0.0699044   0.1827287
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1476095   0.1256886   0.1695305
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2437495   0.2009991   0.2864999
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1910985   0.1676850   0.2145119
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1779303   0.1529513   0.2029092


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.7960458   0.7686355   0.8234560
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.9211456   0.9088113   0.9334799
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.8356662   0.8251725   0.8461599
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7654973   0.7339322   0.7970623
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4356742   0.4152410   0.4561073
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.4414007   0.4306421   0.4521592
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.6656062   0.6576784   0.6735340
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4405506   0.4209873   0.4601139
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1837219   0.1641903   0.2032534
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1989315   0.1824576   0.2154054
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.1996667   0.1855792   0.2137542
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.4725860   0.4635806   0.4815913
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.2044428   0.1875679   0.2213176
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2183762   0.2032601   0.2334924
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1420248   0.1229762   0.1610734
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1517153   0.1384995   0.1649312
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.3658028   0.3511114   0.3804943
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1482194   0.1336860   0.1627527
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1982163   0.1855655   0.2108670
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1741570   0.1580782   0.1902359
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1849266   0.1739388   0.1959143
12-15 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2199488   0.1433039   0.2965938
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1495595   0.1344884   0.1646306
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1646882   0.1450730   0.1843033
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1645149   0.1487075   0.1803222
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1612322   0.1498772   0.1725872
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1392318   0.1223264   0.1561372
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1562372   0.1442891   0.1681853
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1732169   0.1574345   0.1889994
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1630013   0.1513318   0.1746708
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1888602   0.1739625   0.2037579


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0659040   -0.1057948   -0.0260131
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0444007   -0.0709555   -0.0178459
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0424123   -0.0162813    0.1011059
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0093729   -0.0376306    0.0188848
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0405185   -0.0525865   -0.0284505
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0150654   -0.0315487    0.0014179
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0384621   -0.1315074    0.0545832
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0104660   -0.0896391    0.1105710
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0551441   -0.0803710   -0.0299171
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0331458   -0.0623656   -0.0039259
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0326713   -0.0676385    0.0022958
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0276465   -0.0536176   -0.0016753
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0346146   -0.0527034   -0.0165258
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0428055   -0.0664365   -0.0191745
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0270793   -0.0915042    0.0373456
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0328568   -0.0364306    0.1021442
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0119551   -0.0437557    0.0198454
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0098463   -0.0305795    0.0108868
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0055417   -0.0327135    0.0437968
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0065080   -0.0515041    0.0384880
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0207392   -0.0371933    0.0786717
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0057182   -0.0393270    0.0278907
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0602744   -0.0768346   -0.0437141
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0142798   -0.0333782    0.0048187
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0159329   -0.0741871    0.0423213
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0197321   -0.0817646    0.0423005
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0117847   -0.0329718    0.0094025
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0028840   -0.0286642    0.0344322
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0012281   -0.0475017    0.0450456
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0021730   -0.0475086    0.0518545
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0183180   -0.0311715    0.0678076
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0188797   -0.0498586    0.0120991
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0356246    0.0214737    0.0497755
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0126760   -0.0279317    0.0025797
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0416870   -0.0815600   -0.0018140
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0689598   -0.1175685   -0.0203510
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0067900   -0.0450509    0.0586308
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0011292   -0.0418657    0.0396073
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0105969   -0.0309134    0.0521072
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0145208   -0.0303860    0.0594275
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0142144   -0.0207025    0.0491313
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0248070   -0.0016155    0.0512295
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0682389   -0.2093002    0.0728225
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0022897   -0.1774832    0.1820626
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0132586   -0.0350825    0.0615996
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0591834    0.0022336    0.1161332
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0086279   -0.0515225    0.0342668
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0053444   -0.0338897    0.0445785
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0247862   -0.0145207    0.0640932
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0025460   -0.0380467    0.0431387
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0423066   -0.0864099    0.0017968
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0116509   -0.0388017    0.0154998
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0595404   -0.0054338    0.1245146
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0100070   -0.0619468    0.0819608
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0189537   -0.0638915    0.0259840
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0075183   -0.0347359    0.0196993
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0324379   -0.0913846    0.0265088
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0029518   -0.0652019    0.0592983
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0487368   -0.1070149    0.0095413
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0274438   -0.0537073   -0.0011803
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0526510   -0.1018500   -0.0034520
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0658192   -0.1156179   -0.0160205


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0293581   -0.0424989   -0.0162173
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0012811   -0.0080247    0.0105868
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0014242   -0.0021699   -0.0006786
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0310093   -0.1093941    0.0473755
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0223782   -0.0351118   -0.0096446
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0076484   -0.0159403    0.0006435
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0014609   -0.0025714   -0.0003504
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0056112   -0.0607335    0.0495111
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0061748   -0.0183376    0.0059880
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0000627   -0.0256578    0.0255325
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0022837   -0.0122630    0.0076955
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0015783   -0.0028474   -0.0003093
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0153920   -0.0656948    0.0349109
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0009805   -0.0133928    0.0114318
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0001192   -0.0301479    0.0303862
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0022502   -0.0123146    0.0078141
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0001023   -0.0008419    0.0010465
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0429072   -0.0768301   -0.0089842
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0009347   -0.0207396    0.0226090
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0086575   -0.0197690    0.0370840
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0098682    0.0007940    0.0189423
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0005641   -0.0103590    0.0092309
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0275753   -0.0143960    0.0695465
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0005304   -0.0217177    0.0206570
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0165970   -0.0089964    0.0421903
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0063555   -0.0155140    0.0028029
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0372764   -0.0207855    0.0953382
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0018728   -0.0120930    0.0083474
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0228604   -0.0737605    0.0280397
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0120521   -0.0213465   -0.0027576
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0548893   -0.0958730   -0.0139056
