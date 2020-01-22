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

**Outcome Variable:** swasted

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

agecat      studyid                    country     fhtcm           swasted   n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  --------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      309     657  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1        3     657  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      156     657  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        3     657  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      183     657  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        3     657  swasted          
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      679    1114  swasted          
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       54    1114  swasted          
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       76    1114  swasted          
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        7    1114  swasted          
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      277    1114  swasted          
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       21    1114  swasted          
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    10925   12474  swasted          
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1      759   12474  swasted          
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      161   12474  swasted          
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        7   12474  swasted          
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      581   12474  swasted          
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1       41   12474  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       25     192  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        1     192  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      104     192  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1        8     192  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       52     192  swasted          
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     192  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      360     807  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       10     807  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      186     807  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        7     807  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      236     807  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        8     807  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0      101     371  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1        1     371  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0      136     371  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       12     371  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0      116     371  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1        5     371  swasted          
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      963    1510  swasted          
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1       16    1510  swasted          
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0      109    1510  swasted          
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1        4    1510  swasted          
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      414    1510  swasted          
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1        4    1510  swasted          
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    11132   11892  swasted          
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1       11   11892  swasted          
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      156   11892  swasted          
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1        0   11892  swasted          
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      593   11892  swasted          
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1        0   11892  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       44     336  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     336  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0      197     336  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1        1     336  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       93     336  swasted          
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        1     336  swasted          
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      809    1298  swasted          
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1       14    1298  swasted          
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       92    1298  swasted          
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1        4    1298  swasted          
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      377    1298  swasted          
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1        2    1298  swasted          
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3385    3610  swasted          
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1        3    3610  swasted          
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       51    3610  swasted          
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        1    3610  swasted          
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      170    3610  swasted          
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        0    3610  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       72     532  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     532  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      308     532  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1        3     532  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      148     532  swasted          
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        1     532  swasted          


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/5d1854b2-f4e2-4f9d-b066-bebc35f14150/5b23fc0c-9e5f-44a3-86ae-ce11c5b2059b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d1854b2-f4e2-4f9d-b066-bebc35f14150/5b23fc0c-9e5f-44a3-86ae-ce11c5b2059b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d1854b2-f4e2-4f9d-b066-bebc35f14150/5b23fc0c-9e5f-44a3-86ae-ce11c5b2059b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d1854b2-f4e2-4f9d-b066-bebc35f14150/5b23fc0c-9e5f-44a3-86ae-ce11c5b2059b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.0736698   0.0547499   0.0925898
Birth      ki1101329-Keneba          GAMBIA    <162 cm              NA                0.0843373   0.0245263   0.1441484
Birth      ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.0704698   0.0413982   0.0995414
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.0649606   0.0321535   0.0977678
Birth      ki1119695-PROBIT          BELARUS   <162 cm              NA                0.0416667   0.0189096   0.0644237
Birth      ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.0659164   0.0338088   0.0980240
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.0270270   0.0121681   0.0418860
6 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.0362694   0.0081223   0.0644166
6 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.0327869   0.0187768   0.0467969


### Parameter: E(Y)


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1101329-Keneba          GAMBIA    NA                   NA                0.0736086   0.0582673   0.0889499
Birth      ki1119695-PROBIT          BELARUS   NA                   NA                0.0646946   0.0323323   0.0970568
6 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.0309789   0.0217091   0.0402488


### Parameter: RR


agecat     studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth      ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1448014   0.5384682   2.433886
Birth      ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9565623   0.5883948   1.555098
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth      ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.6414142   0.4077568   1.008965
Birth      ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0147130   0.7373583   1.396394
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.3419689   0.5455891   3.300800
6 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.2131148   0.6041146   2.436040


### Parameter: PAR


agecat     studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0000612   -0.0111178   0.0109953
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0002661   -0.0014393   0.0009072
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0039519   -0.0052884   0.0131922


### Parameter: PAF


agecat     studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0008319   -0.1628962   0.1386468
Birth      ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0041126   -0.0217581   0.0132281
6 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.1275676   -0.2467301   0.3894923
