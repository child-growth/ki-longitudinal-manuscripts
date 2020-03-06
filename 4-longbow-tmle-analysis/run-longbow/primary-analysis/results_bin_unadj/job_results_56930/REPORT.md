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

agecat      studyid         country     fhtcm           swasted   n_cell       n
----------  --------------  ----------  -------------  --------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm              0       25     192
Birth       COHORTS         GUATEMALA   >=167 cm              1        1     192
Birth       COHORTS         GUATEMALA   <162 cm               0      104     192
Birth       COHORTS         GUATEMALA   <162 cm               1        8     192
Birth       COHORTS         GUATEMALA   [162-167) cm          0       52     192
Birth       COHORTS         GUATEMALA   [162-167) cm          1        2     192
Birth       Keneba          GAMBIA      >=167 cm              0      679    1114
Birth       Keneba          GAMBIA      >=167 cm              1       54    1114
Birth       Keneba          GAMBIA      <162 cm               0       76    1114
Birth       Keneba          GAMBIA      <162 cm               1        7    1114
Birth       Keneba          GAMBIA      [162-167) cm          0      277    1114
Birth       Keneba          GAMBIA      [162-167) cm          1       21    1114
Birth       PROBIT          BELARUS     >=167 cm              0    10903   12461
Birth       PROBIT          BELARUS     >=167 cm              1      769   12461
Birth       PROBIT          BELARUS     <162 cm               0      160   12461
Birth       PROBIT          BELARUS     <162 cm               1        8   12461
Birth       PROBIT          BELARUS     [162-167) cm          0      580   12461
Birth       PROBIT          BELARUS     [162-167) cm          1       41   12461
Birth       SAS-CompFeed    INDIA       >=167 cm              0      309     657
Birth       SAS-CompFeed    INDIA       >=167 cm              1        3     657
Birth       SAS-CompFeed    INDIA       <162 cm               0      156     657
Birth       SAS-CompFeed    INDIA       <162 cm               1        3     657
Birth       SAS-CompFeed    INDIA       [162-167) cm          0      183     657
Birth       SAS-CompFeed    INDIA       [162-167) cm          1        3     657
6 months    COHORTS         GUATEMALA   >=167 cm              0       44     336
6 months    COHORTS         GUATEMALA   >=167 cm              1        0     336
6 months    COHORTS         GUATEMALA   <162 cm               0      197     336
6 months    COHORTS         GUATEMALA   <162 cm               1        1     336
6 months    COHORTS         GUATEMALA   [162-167) cm          0       93     336
6 months    COHORTS         GUATEMALA   [162-167) cm          1        1     336
6 months    Keneba          GAMBIA      >=167 cm              0      963    1510
6 months    Keneba          GAMBIA      >=167 cm              1       16    1510
6 months    Keneba          GAMBIA      <162 cm               0      109    1510
6 months    Keneba          GAMBIA      <162 cm               1        4    1510
6 months    Keneba          GAMBIA      [162-167) cm          0      414    1510
6 months    Keneba          GAMBIA      [162-167) cm          1        4    1510
6 months    PROBIT          BELARUS     >=167 cm              0    11137   11891
6 months    PROBIT          BELARUS     >=167 cm              1        5   11891
6 months    PROBIT          BELARUS     <162 cm               0      156   11891
6 months    PROBIT          BELARUS     <162 cm               1        0   11891
6 months    PROBIT          BELARUS     [162-167) cm          0      593   11891
6 months    PROBIT          BELARUS     [162-167) cm          1        0   11891
6 months    SAS-CompFeed    INDIA       >=167 cm              0      360     807
6 months    SAS-CompFeed    INDIA       >=167 cm              1       10     807
6 months    SAS-CompFeed    INDIA       <162 cm               0      186     807
6 months    SAS-CompFeed    INDIA       <162 cm               1        7     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          0      236     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          1        8     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm              0      101     371
6 months    SAS-FoodSuppl   INDIA       >=167 cm              1        1     371
6 months    SAS-FoodSuppl   INDIA       <162 cm               0      136     371
6 months    SAS-FoodSuppl   INDIA       <162 cm               1       12     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0      116     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1        5     371
24 months   COHORTS         GUATEMALA   >=167 cm              0       72     532
24 months   COHORTS         GUATEMALA   >=167 cm              1        0     532
24 months   COHORTS         GUATEMALA   <162 cm               0      308     532
24 months   COHORTS         GUATEMALA   <162 cm               1        3     532
24 months   COHORTS         GUATEMALA   [162-167) cm          0      148     532
24 months   COHORTS         GUATEMALA   [162-167) cm          1        1     532
24 months   Keneba          GAMBIA      >=167 cm              0      809    1298
24 months   Keneba          GAMBIA      >=167 cm              1       14    1298
24 months   Keneba          GAMBIA      <162 cm               0       92    1298
24 months   Keneba          GAMBIA      <162 cm               1        4    1298
24 months   Keneba          GAMBIA      [162-167) cm          0      377    1298
24 months   Keneba          GAMBIA      [162-167) cm          1        2    1298
24 months   PROBIT          BELARUS     >=167 cm              0     3379    3608
24 months   PROBIT          BELARUS     >=167 cm              1        7    3608
24 months   PROBIT          BELARUS     <162 cm               0       52    3608
24 months   PROBIT          BELARUS     <162 cm               1        0    3608
24 months   PROBIT          BELARUS     [162-167) cm          0      170    3608
24 months   PROBIT          BELARUS     [162-167) cm          1        0    3608


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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/a994b1a2-65b0-4855-91b6-64243d2fc785/0f9eac1a-e349-4bbd-a896-f555209652a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a994b1a2-65b0-4855-91b6-64243d2fc785/0f9eac1a-e349-4bbd-a896-f555209652a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a994b1a2-65b0-4855-91b6-64243d2fc785/0f9eac1a-e349-4bbd-a896-f555209652a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a994b1a2-65b0-4855-91b6-64243d2fc785/0f9eac1a-e349-4bbd-a896-f555209652a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      Keneba         GAMBIA    >=167 cm             NA                0.0736698   0.0547499   0.0925898
Birth      Keneba         GAMBIA    <162 cm              NA                0.0843373   0.0245263   0.1441484
Birth      Keneba         GAMBIA    [162-167) cm         NA                0.0704698   0.0413982   0.0995414
Birth      PROBIT         BELARUS   >=167 cm             NA                0.0658842   0.0331231   0.0986452
Birth      PROBIT         BELARUS   <162 cm              NA                0.0476190   0.0238107   0.0714274
Birth      PROBIT         BELARUS   [162-167) cm         NA                0.0660225   0.0319036   0.1001415
6 months   SAS-CompFeed   INDIA     >=167 cm             NA                0.0270270   0.0121681   0.0418860
6 months   SAS-CompFeed   INDIA     <162 cm              NA                0.0362694   0.0081223   0.0644166
6 months   SAS-CompFeed   INDIA     [162-167) cm         NA                0.0327869   0.0187768   0.0467969


### Parameter: E(Y)


agecat     studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth      Keneba         GAMBIA    NA                   NA                0.0736086   0.0582673   0.0889499
Birth      PROBIT         BELARUS   NA                   NA                0.0656448   0.0332417   0.0980479
6 months   SAS-CompFeed   INDIA     NA                   NA                0.0309789   0.0217091   0.0402488


### Parameter: RR


agecat     studyid        country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  -------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth      Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth      Keneba         GAMBIA    <162 cm              >=167 cm          1.1448014   0.5384682   2.433886
Birth      Keneba         GAMBIA    [162-167) cm         >=167 cm          0.9565623   0.5883948   1.555098
Birth      PROBIT         BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth      PROBIT         BELARUS   <162 cm              >=167 cm          0.7227692   0.4789120   1.090796
Birth      PROBIT         BELARUS   [162-167) cm         >=167 cm          1.0021003   0.7124327   1.409544
6 months   SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months   SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.3419689   0.5455891   3.300800
6 months   SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.2131148   0.6041146   2.436040


### Parameter: PAR


agecat     studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      Keneba         GAMBIA    >=167 cm             NA                -0.0000612   -0.0111178   0.0109953
Birth      PROBIT         BELARUS   >=167 cm             NA                -0.0002394   -0.0014429   0.0009642
6 months   SAS-CompFeed   INDIA     >=167 cm             NA                 0.0039519   -0.0052884   0.0131922


### Parameter: PAF


agecat     studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth      Keneba         GAMBIA    >=167 cm             NA                -0.0008319   -0.1628962   0.1386468
Birth      PROBIT         BELARUS   >=167 cm             NA                -0.0036462   -0.0217204   0.0141082
6 months   SAS-CompFeed   INDIA     >=167 cm             NA                 0.1275676   -0.2467301   0.3894923
