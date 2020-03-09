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




# Results Detail

## Results Plots
![](/tmp/6961b38f-b6d4-44e5-8b22-8a5d02deb692/6be88ebb-9211-40bd-a4ff-74b555d51824/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6961b38f-b6d4-44e5-8b22-8a5d02deb692/6be88ebb-9211-40bd-a4ff-74b555d51824/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6961b38f-b6d4-44e5-8b22-8a5d02deb692/6be88ebb-9211-40bd-a4ff-74b555d51824/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6961b38f-b6d4-44e5-8b22-8a5d02deb692/6be88ebb-9211-40bd-a4ff-74b555d51824/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                0.2504857   0.2185120   0.2824593
Birth       Keneba          GAMBIA    <162 cm              NA                0.3132068   0.2091307   0.4172829
Birth       Keneba          GAMBIA    [162-167) cm         NA                0.2579417   0.2067125   0.3091708
Birth       PROBIT          BELARUS   >=167 cm             NA                0.2073666   0.1413893   0.2733439
Birth       PROBIT          BELARUS   <162 cm              NA                0.2530902   0.2210391   0.2851413
Birth       PROBIT          BELARUS   [162-167) cm         NA                0.2307971   0.1596011   0.3019931
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                0.0833333   0.0448740   0.1217926
Birth       SAS-CompFeed    INDIA     <162 cm              NA                0.0377358   0.0169272   0.0585445
Birth       SAS-CompFeed    INDIA     [162-167) cm         NA                0.1182796   0.0425886   0.1939705
6 months    Keneba          GAMBIA    >=167 cm             NA                0.0572012   0.0426496   0.0717529
6 months    Keneba          GAMBIA    <162 cm              NA                0.0796460   0.0297102   0.1295818
6 months    Keneba          GAMBIA    [162-167) cm         NA                0.0502392   0.0292917   0.0711867
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.1124780   0.0833565   0.1415995
6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.1076729   0.0414124   0.1739335
6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.1180099   0.0747699   0.1612499
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1401995   0.0730503   0.2073487
6 months    SAS-FoodSuppl   INDIA     <162 cm              NA                0.2243902   0.1575283   0.2912520
6 months    SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1636498   0.0963598   0.2309398
24 months   Keneba          GAMBIA    >=167 cm             NA                0.0966363   0.0757531   0.1175196
24 months   Keneba          GAMBIA    <162 cm              NA                0.2117540   0.1251575   0.2983506
24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1037661   0.0685031   0.1390291


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
Birth       Keneba          GAMBIA    <162 cm              >=167 cm          1.2503982   0.8756097   1.785608
Birth       Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0297661   0.8129381   1.304427
Birth       PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       PROBIT          BELARUS   <162 cm              >=167 cm          1.2204964   0.9251042   1.610209
Birth       PROBIT          BELARUS   [162-167) cm         >=167 cm          1.1129906   0.9386245   1.319748
Birth       SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.4528302   0.2154344   0.951822
Birth       SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.4193548   1.0317831   1.952511
6 months    Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    Keneba          GAMBIA    <162 cm              >=167 cm          1.3923831   0.7077955   2.739111
6 months    Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8782895   0.5389064   1.431403
6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9572797   0.4974801   1.842053
6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.0491817   0.6691051   1.645156
6 months    SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.6005064   0.9130518   2.805559
6 months    SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1672639   0.6215557   2.192088
24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   Keneba          GAMBIA    <162 cm              >=167 cm          2.1912470   1.3806194   3.477833
24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0737795   0.7183885   1.604985


### Parameter: PAR


agecat      studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                -0.0009345   -0.0200323   0.0181633
Birth       PROBIT          BELARUS   >=167 cm             NA                 0.0018461   -0.0000425   0.0037347
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                -0.0011416   -0.0094022   0.0071191
6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0002476   -0.0088444   0.0083492
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0027636   -0.0275164   0.0330436
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0403935   -0.0193085   0.1000955
24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0050586   -0.0082669   0.0183841


### Parameter: PAF


agecat      studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       Keneba          GAMBIA    >=167 cm             NA                -0.0037447   -0.0832624   0.0699360
Birth       PROBIT          BELARUS   >=167 cm             NA                 0.0088241   -0.0013308   0.0188761
Birth       SAS-CompFeed    INDIA     >=167 cm             NA                -0.0138889   -0.1195659   0.0818131
6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0043471   -0.1672214   0.1357996
6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0239810   -0.2736860   0.2520817
6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2236715   -0.1845102   0.4911939
24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0497429   -0.0907853   0.1721666
