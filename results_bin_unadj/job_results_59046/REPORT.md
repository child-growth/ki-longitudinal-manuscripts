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

**Outcome Variable:** wasted

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

agecat      studyid         country     fhtcm           wasted   n_cell       n
----------  --------------  ----------  -------------  -------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm             0       22     192
Birth       COHORTS         GUATEMALA   >=167 cm             1        4     192
Birth       COHORTS         GUATEMALA   <162 cm              0       92     192
Birth       COHORTS         GUATEMALA   <162 cm              1       20     192
Birth       COHORTS         GUATEMALA   [162-167) cm         0       42     192
Birth       COHORTS         GUATEMALA   [162-167) cm         1       12     192
Birth       Keneba          GAMBIA      >=167 cm             0      550    1114
Birth       Keneba          GAMBIA      >=167 cm             1      183    1114
Birth       Keneba          GAMBIA      <162 cm              0       58    1114
Birth       Keneba          GAMBIA      <162 cm              1       25    1114
Birth       Keneba          GAMBIA      [162-167) cm         0      228    1114
Birth       Keneba          GAMBIA      [162-167) cm         1       70    1114
Birth       PROBIT          BELARUS     >=167 cm             0     9244   12461
Birth       PROBIT          BELARUS     >=167 cm             1     2428   12461
Birth       PROBIT          BELARUS     <162 cm              0      128   12461
Birth       PROBIT          BELARUS     <162 cm              1       40   12461
Birth       PROBIT          BELARUS     [162-167) cm         0      482   12461
Birth       PROBIT          BELARUS     [162-167) cm         1      139   12461
Birth       SAS-CompFeed    INDIA       >=167 cm             0      286     657
Birth       SAS-CompFeed    INDIA       >=167 cm             1       26     657
Birth       SAS-CompFeed    INDIA       <162 cm              0      153     657
Birth       SAS-CompFeed    INDIA       <162 cm              1        6     657
Birth       SAS-CompFeed    INDIA       [162-167) cm         0      164     657
Birth       SAS-CompFeed    INDIA       [162-167) cm         1       22     657
6 months    COHORTS         GUATEMALA   >=167 cm             0       44     336
6 months    COHORTS         GUATEMALA   >=167 cm             1        0     336
6 months    COHORTS         GUATEMALA   <162 cm              0      190     336
6 months    COHORTS         GUATEMALA   <162 cm              1        8     336
6 months    COHORTS         GUATEMALA   [162-167) cm         0       89     336
6 months    COHORTS         GUATEMALA   [162-167) cm         1        5     336
6 months    Keneba          GAMBIA      >=167 cm             0      923    1510
6 months    Keneba          GAMBIA      >=167 cm             1       56    1510
6 months    Keneba          GAMBIA      <162 cm              0      104    1510
6 months    Keneba          GAMBIA      <162 cm              1        9    1510
6 months    Keneba          GAMBIA      [162-167) cm         0      397    1510
6 months    Keneba          GAMBIA      [162-167) cm         1       21    1510
6 months    PROBIT          BELARUS     >=167 cm             0    11068   11891
6 months    PROBIT          BELARUS     >=167 cm             1       74   11891
6 months    PROBIT          BELARUS     <162 cm              0      155   11891
6 months    PROBIT          BELARUS     <162 cm              1        1   11891
6 months    PROBIT          BELARUS     [162-167) cm         0      592   11891
6 months    PROBIT          BELARUS     [162-167) cm         1        1   11891
6 months    SAS-CompFeed    INDIA       >=167 cm             0      332     807
6 months    SAS-CompFeed    INDIA       >=167 cm             1       38     807
6 months    SAS-CompFeed    INDIA       <162 cm              0      170     807
6 months    SAS-CompFeed    INDIA       <162 cm              1       23     807
6 months    SAS-CompFeed    INDIA       [162-167) cm         0      212     807
6 months    SAS-CompFeed    INDIA       [162-167) cm         1       32     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm             0       88     371
6 months    SAS-FoodSuppl   INDIA       >=167 cm             1       14     371
6 months    SAS-FoodSuppl   INDIA       <162 cm              0      115     371
6 months    SAS-FoodSuppl   INDIA       <162 cm              1       33     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         0      101     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         1       20     371
24 months   COHORTS         GUATEMALA   >=167 cm             0       69     532
24 months   COHORTS         GUATEMALA   >=167 cm             1        3     532
24 months   COHORTS         GUATEMALA   <162 cm              0      292     532
24 months   COHORTS         GUATEMALA   <162 cm              1       19     532
24 months   COHORTS         GUATEMALA   [162-167) cm         0      140     532
24 months   COHORTS         GUATEMALA   [162-167) cm         1        9     532
24 months   Keneba          GAMBIA      >=167 cm             0      743    1298
24 months   Keneba          GAMBIA      >=167 cm             1       80    1298
24 months   Keneba          GAMBIA      <162 cm              0       79    1298
24 months   Keneba          GAMBIA      <162 cm              1       17    1298
24 months   Keneba          GAMBIA      [162-167) cm         0      344    1298
24 months   Keneba          GAMBIA      [162-167) cm         1       35    1298
24 months   PROBIT          BELARUS     >=167 cm             0     3361    3608
24 months   PROBIT          BELARUS     >=167 cm             1       25    3608
24 months   PROBIT          BELARUS     <162 cm              0       50    3608
24 months   PROBIT          BELARUS     <162 cm              1        2    3608
24 months   PROBIT          BELARUS     [162-167) cm         0      168    3608
24 months   PROBIT          BELARUS     [162-167) cm         1        2    3608


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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/a9316e37-3ff5-4994-993e-fbd1172549e9/164f5c0e-4682-4ea5-8f32-56a4ca241979/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9316e37-3ff5-4994-993e-fbd1172549e9/164f5c0e-4682-4ea5-8f32-56a4ca241979/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9316e37-3ff5-4994-993e-fbd1172549e9/164f5c0e-4682-4ea5-8f32-56a4ca241979/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9316e37-3ff5-4994-993e-fbd1172549e9/164f5c0e-4682-4ea5-8f32-56a4ca241979/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                0.2496589   0.2183121   0.2810058
Birth       Keneba          GAMBIA    <162 cm              NA                0.3012048   0.2024610   0.3999486
Birth       Keneba          GAMBIA    [162-167) cm         NA                0.2348993   0.1867450   0.2830536
Birth       PROBIT          BELARUS   >=167 cm             NA                0.2080192   0.1422502   0.2737882
Birth       PROBIT          BELARUS   <162 cm              NA                0.2380952   0.2003729   0.2758176
Birth       PROBIT          BELARUS   [162-167) cm         NA                0.2238325   0.1498475   0.2978176
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                0.0833333   0.0448740   0.1217926
Birth       SAS-CompFeed    INDIA     <162 cm              NA                0.0377358   0.0169272   0.0585445
Birth       SAS-CompFeed    INDIA     [162-167) cm         NA                0.1182796   0.0425886   0.1939705
6 months    Keneba          GAMBIA    >=167 cm             NA                0.0572012   0.0426496   0.0717529
6 months    Keneba          GAMBIA    <162 cm              NA                0.0796460   0.0297102   0.1295818
6 months    Keneba          GAMBIA    [162-167) cm         NA                0.0502392   0.0292917   0.0711867
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.1027027   0.0768935   0.1285119
6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.1191710   0.0499344   0.1884076
6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.1311475   0.0911059   0.1711892
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1372549   0.0703837   0.2041261
6 months    SAS-FoodSuppl   INDIA     <162 cm              NA                0.2229730   0.1558227   0.2901232
6 months    SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1652893   0.0990170   0.2315615
24 months   Keneba          GAMBIA    >=167 cm             NA                0.0972053   0.0769586   0.1174521
24 months   Keneba          GAMBIA    <162 cm              NA                0.1770833   0.1006916   0.2534751
24 months   Keneba          GAMBIA    [162-167) cm         NA                0.0923483   0.0631895   0.1215071


### Parameter: E(Y)


agecat      studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA    NA                   NA                0.2495512   0.2241273   0.2749750
Birth       PROBIT          BELARUS   NA                   NA                0.2092127   0.1437518   0.2746737
Birth       SAS-CompFeed    INDIA     NA                   NA                0.0821918   0.0448621   0.1195215
6 months    Keneba          GAMBIA    NA                   NA                0.0569536   0.0452605   0.0686468
6 months    SAS-CompFeed    INDIA     NA                   NA                0.1152416   0.0868962   0.1435870
6 months    SAS-FoodSuppl   INDIA     NA                   NA                0.1805930   0.1413965   0.2197895
24 months   Keneba          GAMBIA    NA                   NA                0.1016949   0.0852459   0.1181439


### Parameter: RR


agecat      studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth       Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       Keneba          GAMBIA    <162 cm              >=167 cm          1.2064652   0.8492881   1.713857
Birth       Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9408809   0.7398306   1.196567
Birth       PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       PROBIT          BELARUS   <162 cm              >=167 cm          1.1445830   0.8707577   1.504518
Birth       PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0760186   0.9271992   1.248724
Birth       SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.4528302   0.2154344   0.951822
Birth       SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.4193548   1.0317831   1.952511
6 months    Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    Keneba          GAMBIA    <162 cm              >=167 cm          1.3923831   0.7077955   2.739111
6 months    Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8782895   0.5389064   1.431403
6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1603491   0.6458134   2.084828
6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2769629   0.8805208   1.851897
6 months    SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.6245174   0.9161651   2.880547
6 months    SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.2042503   0.6407500   2.263314
24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.8217448   1.1283469   2.941253
24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9500330   0.6508220   1.386804


### Parameter: PAR


agecat      studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                -0.0001078   -0.0184349   0.0182193
Birth       PROBIT          BELARUS   >=167 cm             NA                 0.0011936   -0.0006941   0.0030812
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                -0.0011416   -0.0094022   0.0071191
6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0002476   -0.0088444   0.0083492
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0125389   -0.0119135   0.0369913
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0433381   -0.0162376   0.1029138
24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0044896   -0.0081858   0.0171650


### Parameter: PAF


agecat      studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                -0.0004319   -0.0766348   0.0703776
Birth       PROBIT          BELARUS   >=167 cm             NA                 0.0057050   -0.0037952   0.0151152
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                -0.0138889   -0.1195659   0.0818131
6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0043471   -0.1672214   0.1357996
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.1088056   -0.1145182   0.2873804
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2399766   -0.1688644   0.5058147
24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0441474   -0.0888027   0.1608635
