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

**Outcome Variable:** pers_wast

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

agecat        studyid         country     fhtcm           pers_wast   n_cell       n
------------  --------------  ----------  -------------  ----------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                0       55     424
0-24 months   COHORTS         GUATEMALA   >=167 cm                1        1     424
0-24 months   COHORTS         GUATEMALA   <162 cm                 0      237     424
0-24 months   COHORTS         GUATEMALA   <162 cm                 1       12     424
0-24 months   COHORTS         GUATEMALA   [162-167) cm            0      116     424
0-24 months   COHORTS         GUATEMALA   [162-167) cm            1        3     424
0-24 months   Keneba          GAMBIA      >=167 cm                0     1038    1720
0-24 months   Keneba          GAMBIA      >=167 cm                1       69    1720
0-24 months   Keneba          GAMBIA      <162 cm                 0      112    1720
0-24 months   Keneba          GAMBIA      <162 cm                 1       12    1720
0-24 months   Keneba          GAMBIA      [162-167) cm            0      466    1720
0-24 months   Keneba          GAMBIA      [162-167) cm            1       23    1720
0-24 months   PROBIT          BELARUS     >=167 cm                0    11650   12524
0-24 months   PROBIT          BELARUS     >=167 cm                1       82   12524
0-24 months   PROBIT          BELARUS     <162 cm                 0      165   12524
0-24 months   PROBIT          BELARUS     <162 cm                 1        3   12524
0-24 months   PROBIT          BELARUS     [162-167) cm            0      619   12524
0-24 months   PROBIT          BELARUS     [162-167) cm            1        5   12524
0-24 months   SAS-CompFeed    INDIA       >=167 cm                0      358     824
0-24 months   SAS-CompFeed    INDIA       >=167 cm                1       27     824
0-24 months   SAS-CompFeed    INDIA       <162 cm                 0      179     824
0-24 months   SAS-CompFeed    INDIA       <162 cm                 1       15     824
0-24 months   SAS-CompFeed    INDIA       [162-167) cm            0      222     824
0-24 months   SAS-CompFeed    INDIA       [162-167) cm            1       23     824
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
0-6 months    Keneba          GAMBIA      >=167 cm                0      927    1489
0-6 months    Keneba          GAMBIA      >=167 cm                1       32    1489
0-6 months    Keneba          GAMBIA      <162 cm                 0      103    1489
0-6 months    Keneba          GAMBIA      <162 cm                 1        7    1489
0-6 months    Keneba          GAMBIA      [162-167) cm            0      411    1489
0-6 months    Keneba          GAMBIA      [162-167) cm            1        9    1489
0-6 months    PROBIT          BELARUS     >=167 cm                0    10330   12006
0-6 months    PROBIT          BELARUS     >=167 cm                1      918   12006
0-6 months    PROBIT          BELARUS     <162 cm                 0      142   12006
0-6 months    PROBIT          BELARUS     <162 cm                 1       19   12006
0-6 months    PROBIT          BELARUS     [162-167) cm            0      552   12006
0-6 months    PROBIT          BELARUS     [162-167) cm            1       45   12006
6-24 months   COHORTS         GUATEMALA   >=167 cm                0       55     424
6-24 months   COHORTS         GUATEMALA   >=167 cm                1        1     424
6-24 months   COHORTS         GUATEMALA   <162 cm                 0      237     424
6-24 months   COHORTS         GUATEMALA   <162 cm                 1       12     424
6-24 months   COHORTS         GUATEMALA   [162-167) cm            0      116     424
6-24 months   COHORTS         GUATEMALA   [162-167) cm            1        3     424
6-24 months   Keneba          GAMBIA      >=167 cm                0     1038    1720
6-24 months   Keneba          GAMBIA      >=167 cm                1       69    1720
6-24 months   Keneba          GAMBIA      <162 cm                 0      112    1720
6-24 months   Keneba          GAMBIA      <162 cm                 1       12    1720
6-24 months   Keneba          GAMBIA      [162-167) cm            0      466    1720
6-24 months   Keneba          GAMBIA      [162-167) cm            1       23    1720
6-24 months   PROBIT          BELARUS     >=167 cm                0    11650   12524
6-24 months   PROBIT          BELARUS     >=167 cm                1       82   12524
6-24 months   PROBIT          BELARUS     <162 cm                 0      165   12524
6-24 months   PROBIT          BELARUS     <162 cm                 1        3   12524
6-24 months   PROBIT          BELARUS     [162-167) cm            0      619   12524
6-24 months   PROBIT          BELARUS     [162-167) cm            1        5   12524
6-24 months   SAS-CompFeed    INDIA       >=167 cm                0      358     824
6-24 months   SAS-CompFeed    INDIA       >=167 cm                1       27     824
6-24 months   SAS-CompFeed    INDIA       <162 cm                 0      179     824
6-24 months   SAS-CompFeed    INDIA       <162 cm                 1       15     824
6-24 months   SAS-CompFeed    INDIA       [162-167) cm            0      222     824
6-24 months   SAS-CompFeed    INDIA       [162-167) cm            1       23     824
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/459d474a-baf6-4636-b5ee-01bb3df4daff/9301c3e4-93f1-4269-867b-0db7508f7c50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/459d474a-baf6-4636-b5ee-01bb3df4daff/9301c3e4-93f1-4269-867b-0db7508f7c50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/459d474a-baf6-4636-b5ee-01bb3df4daff/9301c3e4-93f1-4269-867b-0db7508f7c50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/459d474a-baf6-4636-b5ee-01bb3df4daff/9301c3e4-93f1-4269-867b-0db7508f7c50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0629953   0.0487183   0.0772724
0-24 months   Keneba          GAMBIA    <162 cm              NA                0.0785385   0.0251953   0.1318818
0-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.0474715   0.0285228   0.0664201
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0789386   0.0288172   0.1290600
0-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.0722919   0.0545102   0.0900736
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.0837014   0.0637281   0.1036746
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1111014   0.0502963   0.1719066
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.2208978   0.1553565   0.2864391
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1502906   0.0864207   0.2141606
0-6 months    Keneba          GAMBIA    >=167 cm             NA                0.0333681   0.0219976   0.0447386
0-6 months    Keneba          GAMBIA    <162 cm              NA                0.0636364   0.0180040   0.1092687
0-6 months    Keneba          GAMBIA    [162-167) cm         NA                0.0214286   0.0075750   0.0352822
0-6 months    PROBIT          BELARUS   >=167 cm             NA                0.0812257   0.0558369   0.1066146
0-6 months    PROBIT          BELARUS   <162 cm              NA                0.1251797   0.1035788   0.1467806
0-6 months    PROBIT          BELARUS   [162-167) cm         NA                0.0734501   0.0389036   0.1079966
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0628692   0.0485749   0.0771635
6-24 months   Keneba          GAMBIA    <162 cm              NA                0.0776063   0.0240344   0.1311783
6-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.0474841   0.0285091   0.0664591
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0789386   0.0288172   0.1290600
6-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.0722919   0.0545102   0.0900736
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.0837014   0.0637281   0.1036746
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1153073   0.0523875   0.1782271
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.2226144   0.1562175   0.2890113
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1507818   0.0855879   0.2159757


### Parameter: E(Y)


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324
0-24 months   SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
0-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
0-6 months    Keneba          GAMBIA    NA                   NA                0.0322364   0.0232620   0.0412108
0-6 months    PROBIT          BELARUS   NA                   NA                0.0817924   0.0563990   0.1071859
6-24 months   Keneba          GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324
6-24 months   SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
6-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209


### Parameter: RR


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.2467361   0.6092981   2.551052
0-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          0.7535712   0.4759535   1.193120
0-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9157992   0.4502393   1.862761
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.0603357   0.5209083   2.158368
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.9882540   1.0680547   3.701265
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3527340   0.6773123   2.701692
0-6 months    Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA    <162 cm              >=167 cm          1.9071023   0.8621358   4.218638
0-6 months    Keneba          GAMBIA    [162-167) cm         >=167 cm          0.6421875   0.3092258   1.333669
0-6 months    PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS   <162 cm              >=167 cm          1.5411332   1.1198429   2.120915
0-6 months    PROBIT          BELARUS   [162-167) cm         >=167 cm          0.9042713   0.6695953   1.221195
6-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.2344097   0.5970535   2.552145
6-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          0.7552843   0.4766532   1.196791
6-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9157992   0.4502393   1.862761
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.0603357   0.5209083   2.158368
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.9306188   1.0385704   3.588865
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3076519   0.6519516   2.622823


### Parameter: PAR


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0025302   -0.0108722   0.0058119
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                -0.0000551   -0.0311953   0.0310852
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0591689    0.0029112   0.1154266
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0011317   -0.0077112   0.0054478
0-6 months    PROBIT          BELARUS   >=167 cm             NA                 0.0005667   -0.0008350   0.0019684
6-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0024041   -0.0107544   0.0059462
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                -0.0000551   -0.0311953   0.0310852
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0549630   -0.0027240   0.1126500


### Parameter: PAF


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0418456   -0.1892683   0.0873025
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                -0.0006982   -0.4844362   0.3254026
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3474997   -0.0697208   0.6019927
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0351060   -0.2604545   0.1499539
0-6 months    PROBIT          BELARUS   >=167 cm             NA                 0.0069284   -0.0104270   0.0239857
6-24 months   Keneba          GAMBIA    >=167 cm             NA                -0.0397598   -0.1873356   0.0894735
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                -0.0006982   -0.4844362   0.3254026
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3227985   -0.1069064   0.5856905
