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

**Outcome Variable:** y_rate_len

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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           345     765  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            196     765  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       224     765  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           631     965  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             75     965  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       259     965  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm         10773   11500  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm            151   11500  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       576   11500  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            25     180  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm            106     180  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        49     180  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           308     682  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            175     682  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       199     682  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673    1037  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             74    1037  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       290    1037  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          9473   10104  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm            129   10104  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       502   10104  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            37     261  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm            148     261  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        76     261  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           312     683  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            167     683  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       204     683  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            89     311  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            124     311  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        98     311  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm           442     663  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm             53     663  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm       168     663  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm          8928    9530  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm            126    9530  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm       476    9530  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            39     308  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm            186     308  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        83     308  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           317     685  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            167     685  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       201     685  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            86     308  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            128     308  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        94     308  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           420     653  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm             52     653  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       181     653  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          9108    9730  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm            126    9730  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       496    9730  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            51     370  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm            224     370  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        95     370  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           329     702  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            169     702  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       204     702  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            77     302  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            131     302  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        94     302  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm           652    1041  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm             85    1041  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm       304    1041  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm           843     897  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              9     897  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm        45     897  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            53     387  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm            224     387  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       110     387  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           335     717  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            169     717  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       213     717  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            79     290  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            121     290  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        90     290  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm           658    1050  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm             82    1050  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm       310    1050  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS     >=167 cm           226     239  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS     <162 cm              1     239  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS     [162-167) cm        12     239  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            47     347  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm            205     347  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        95     347  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm           635    1043  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm             84    1043  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm       324    1043  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS     >=167 cm           183     194  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS     <162 cm              2     194  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS     [162-167) cm         9     194  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            51     369  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm            211     369  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       107     369  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           582     933  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm             72     933  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       279     933  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS     >=167 cm           175     185  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS     <162 cm              4     185  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         6     185  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            58     417  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            237     417  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       122     417  y_rate_len       


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
![](/tmp/b0f45f80-8b0e-41d1-84df-47b8e980379f/34fd46aa-c299-4c82-b55c-fcfecb14b98c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b0f45f80-8b0e-41d1-84df-47b8e980379f/34fd46aa-c299-4c82-b55c-fcfecb14b98c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b0f45f80-8b0e-41d1-84df-47b8e980379f/34fd46aa-c299-4c82-b55c-fcfecb14b98c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                3.4131819   3.3387104   3.4876534
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                3.2753311   3.1960988   3.3545634
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                3.3121954   3.2171680   3.4072227
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                3.1190269   3.0487188   3.1893349
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                3.0386533   2.8260500   3.2512565
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                3.0202751   2.9257198   3.1148304
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.8104801   2.6992151   2.9217451
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.6595079   2.5915706   2.7274451
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.7530423   2.6161608   2.8899237
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                2.7515972   2.4983463   3.0048480
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                2.6218762   2.5034713   2.7402811
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                2.6468846   2.4888517   2.8049176
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.9692092   1.9027048   2.0357136
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.9015391   1.8345291   1.9685490
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.9284971   1.8349533   2.0220410
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.9967805   1.9412706   2.0522903
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.9222280   1.7194533   2.1250028
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.9571128   1.8691426   2.0450829
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.0942522   2.0529386   2.1355657
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.0515499   1.9641048   2.1389949
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.9969557   1.9189847   2.0749267
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.8301673   1.6947043   1.9656303
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                1.7247152   1.6540198   1.7954106
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.9251356   1.7933611   2.0569101
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.2522181   1.1959672   1.3084690
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.1969259   1.1245786   1.2692733
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.1630760   1.0655611   1.2605909
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1664626   1.0982159   1.2347093
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                1.1337563   1.0660554   1.2014572
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.1258016   1.0483134   1.2032898
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.4040753   1.3285289   1.4796217
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.5607625   1.2946755   1.8268494
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.2951020   1.1965625   1.3936414
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.5741629   1.5451506   1.6031751
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                1.5076990   1.4546128   1.5607852
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.5047854   1.4275664   1.5820044
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.2066146   1.0734717   1.3397575
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                1.0744594   1.0163186   1.1326002
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.0864948   1.0071226   1.1658669
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.9969746   0.9041466   1.0898027
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.9837976   0.9040125   1.0635828
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.0203813   0.9449514   1.0958111
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.8288090   0.5307595   1.1268586
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.6688965   0.5212031   0.8165899
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.9128069   0.6295352   1.1960787
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9863556   0.9279467   1.0447646
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8706908   0.6172684   1.1241132
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9969018   0.9051131   1.0886904
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.3768753   1.3225205   1.4312301
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                1.3301192   1.2734424   1.3867959
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.3078761   1.2227876   1.3929647
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.0655194   0.9457480   1.1852908
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8996722   0.8435943   0.9557501
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.9077629   0.8261666   0.9893592
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.9074748   0.8466773   0.9682722
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.7500718   0.6339421   0.8662015
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7669243   0.6704662   0.8633825
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1535379   1.0235644   1.2835114
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9367071   0.7816196   1.0917946
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0604034   0.9013445   1.2194623
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9391494   0.8941728   0.9841260
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.9189045   0.7138792   1.1239297
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9250869   0.8616069   0.9885669
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.1725526   0.8471348   1.4979705
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                1.3492496   0.9957939   1.7027052
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.2893796   0.6866184   1.8921407
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7662212   0.6252163   0.9072260
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7783921   0.7118253   0.8449589
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8210154   0.7537876   0.8882431
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.9165507   0.8577274   0.9753740
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.9052714   0.8316890   0.9788537
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.9377110   0.7983576   1.0770644
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7935426   0.7204215   0.8666638
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.7871799   0.7329777   0.8413822
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8015242   0.7384696   0.8645788
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8649373   0.8193743   0.9105002
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8580562   0.7317210   0.9843914
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.8984309   0.8404443   0.9564175
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6307806   0.4870326   0.7745285
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7482106   0.6954793   0.8009419
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7598493   0.6664293   0.8532693
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8312928   0.7828125   0.8797731
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.7707769   0.6748560   0.8666977
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.8148263   0.7501007   0.8795519
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.8367536   0.6990671   0.9744402
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7423613   0.6833081   0.8014146
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7220923   0.6391889   0.8049957
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.7388730   0.6879714   0.7897746
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.6949642   0.5991751   0.7907533
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.6739041   0.6052387   0.7425695
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6258591   0.5231604   0.7285577
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.6885961   0.6455519   0.7316402
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.6932192   0.6335589   0.7528795


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                3.3449470   3.2851675   3.4047265
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                3.0944274   3.0398727   3.1489822
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.8038915   2.6921727   2.9156104
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                2.6353712   2.5465302   2.7242122
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.9381168   1.8722991   2.0039344
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                1.9794873   1.9347361   2.0242384
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.0916969   2.0506004   2.1327933
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                1.7979953   1.7423030   1.8536877
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.2144768   1.1795030   1.2494506
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                1.1405137   1.0997387   1.1812887
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                1.3966930   1.3370412   1.4563449
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                1.5712042   1.5417439   1.6006645
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                1.0891323   1.0450915   1.1331731
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.9930838   0.9436059   1.0425616
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7916715   0.6618281   0.9215150
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.9708891   0.9222915   1.0194866
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                1.3756313   1.3222614   1.4290012
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.9293038   0.8874492   0.9711585
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.8285766   0.7562994   0.9008539
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                1.0258822   0.9363066   1.1154578
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.9309324   0.8952046   0.9666602
12-15 months   ki1119695-PROBIT           BELARUS     NA                   NA                1.1801864   0.8594720   1.5009008
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8018513   0.7601969   0.8435058
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.9190004   0.8846761   0.9533247
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7935645   0.7577956   0.8293333
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.8726682   0.8384641   0.9068722
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7314958   0.6886307   0.7743608
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.8178809   0.7819425   0.8538193
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7418707   0.7002233   0.7835182
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.7242397   0.6859939   0.7624856
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6767187   0.6431305   0.7103068


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1378508   -0.2341221   -0.0415795
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1009866   -0.2002538   -0.0017193
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0803736   -0.3046131    0.1438659
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0987518   -0.2166234    0.0191199
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1509723   -0.2423170   -0.0596276
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0574379   -0.1239217    0.0090459
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1297210   -0.4068554    0.1474135
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1047126   -0.4031492    0.1937241
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0676702   -0.1227230   -0.0126173
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0407121   -0.0983674    0.0169432
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0745524   -0.2848523    0.1357474
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0396677   -0.1443354    0.0650000
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0427023   -0.1268387    0.0414341
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0972965   -0.1777238   -0.0168692
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1054521   -0.2555629    0.0446588
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0949683   -0.0927245    0.2826612
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0552922   -0.1673165    0.0567321
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0891422   -0.2100727    0.0317884
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0327063   -0.1290870    0.0636744
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0406610   -0.1442215    0.0628995
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.1566871   -0.1198955    0.4332698
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1089734   -0.2339870    0.0160403
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0664638   -0.1193136   -0.0136141
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0693775   -0.1394267    0.0006718
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1321552   -0.2780920    0.0137816
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1201198   -0.2744935    0.0342538
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0131770   -0.1384929    0.1121388
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0234066   -0.1056282    0.1524414
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1599125   -0.4949277    0.1751027
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0839979   -0.3314415    0.4994372
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1156649   -0.3759303    0.1446006
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0105461   -0.0983258    0.1194181
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0467561   -0.1145604    0.0210482
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0689991   -0.1438482    0.0058499
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1658472   -0.2980281   -0.0336663
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1577565   -0.3022294   -0.0132836
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1574030   -0.2748869   -0.0399190
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1405504   -0.2258966   -0.0552042
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.2168308   -0.4193922   -0.0142695
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0931345   -0.2989508    0.1126818
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0202449   -0.2303391    0.1898493
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0140625   -0.0921553    0.0640304
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.1766969   -0.2590238    0.6124177
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.1168269   -0.4444099    0.6780637
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0121709   -0.1433389    0.1676808
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0547942   -0.1011810    0.2107695
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0112793   -0.1037249    0.0811663
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0211603   -0.1522746    0.1945952
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0063627   -0.0974527    0.0847273
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0079815   -0.0885620    0.1045251
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0068811   -0.1413013    0.1275392
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0334936   -0.0404229    0.1074102
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.1174300   -0.0357231    0.2705831
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.1290687   -0.0420397    0.3001772
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0605159   -0.1679988    0.0469670
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0164665   -0.0976846    0.0647517
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0943923   -0.2436358    0.0548512
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1146613   -0.2748310    0.0455084
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0439087   -0.1524914    0.0646739
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0649689   -0.1507705    0.0208327
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0627370   -0.0487508    0.1742248
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0673601   -0.0513538    0.1860740


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0682349   -0.1141742   -0.0222956
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0245994   -0.0648832    0.0156843
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0065886   -0.0108613   -0.0023159
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1162260   -0.3490464    0.1165945
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0310924   -0.0557338   -0.0064511
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0172932   -0.0526463    0.0180599
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0025553   -0.0072196    0.0021090
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0321720   -0.1582243    0.0938803
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0377414   -0.0879245    0.0124418
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0259489   -0.0873747    0.0354768
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0073823   -0.0501611    0.0353965
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0029587   -0.0067365    0.0008192
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1174823   -0.2421627    0.0071981
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0038909   -0.0665586    0.0587768
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0371375   -0.2848035    0.2105285
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0154666   -0.0539079    0.0229748
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0012440   -0.0051770    0.0026891
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1362156   -0.2477875   -0.0246437
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0788981   -0.1319321   -0.0258641
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1276557   -0.2571770    0.0018655
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0082170   -0.0370397    0.0206057
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0076338   -0.0216943    0.0369618
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0356302   -0.0995169    0.1707773
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0024497   -0.0585477    0.0634471
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0000218   -0.0612404    0.0612841
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0077309   -0.0227051    0.0381669
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1007152   -0.0345656    0.2359961
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0134119   -0.0427337    0.0159100
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0948829   -0.2239425    0.0341767
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0146332   -0.0435200    0.0142535
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0508596   -0.0439991    0.1457183
