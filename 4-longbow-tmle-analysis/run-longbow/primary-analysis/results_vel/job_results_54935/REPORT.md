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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           345     765  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            196     765  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       224     765  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           631     965  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             75     965  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       259     965  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm         10773   11500  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm            151   11500  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       576   11500  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            25     180  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm            106     180  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        49     180  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           308     682  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            175     682  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       199     682  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673    1037  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             74    1037  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       290    1037  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          9473   10104  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm            129   10104  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       502   10104  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            37     261  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm            148     261  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        76     261  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           312     683  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            167     683  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       204     683  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            89     311  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            124     311  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        98     311  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm           442     663  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm             53     663  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm       168     663  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm          8928    9530  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm            126    9530  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm       476    9530  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            39     308  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm            186     308  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        83     308  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           317     685  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            167     685  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       201     685  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            86     308  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            128     308  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        94     308  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           420     653  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm             52     653  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       181     653  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          9108    9730  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm            126    9730  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       496    9730  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            51     370  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm            224     370  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        95     370  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           329     702  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            169     702  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       204     702  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            77     302  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            131     302  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        94     302  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm           652    1041  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm             85    1041  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm       304    1041  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm           843     897  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              9     897  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm        45     897  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            53     387  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm            224     387  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       110     387  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm           335     717  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm            169     717  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       213     717  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            79     290  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            121     290  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        90     290  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm           658    1050  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm             82    1050  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm       310    1050  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS     >=167 cm           226     239  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS     <162 cm              1     239  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS     [162-167) cm        12     239  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            47     347  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm            205     347  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        95     347  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm           635    1043  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm             84    1043  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm       324    1043  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS     >=167 cm           183     194  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS     <162 cm              2     194  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS     [162-167) cm         9     194  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            51     369  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm            211     369  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       107     369  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           582     933  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm             72     933  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       279     933  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS     >=167 cm           175     185  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS     <162 cm              4     185  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         6     185  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            58     417  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            237     417  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       122     417  y_rate_haz       


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
![](/tmp/b5b7fdc2-edaf-484b-aca5-06bd6e4e7f45/8d14f39a-3ae4-49fa-a31d-691c839d4ee2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b5b7fdc2-edaf-484b-aca5-06bd6e4e7f45/8d14f39a-3ae4-49fa-a31d-691c839d4ee2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b5b7fdc2-edaf-484b-aca5-06bd6e4e7f45/8d14f39a-3ae4-49fa-a31d-691c839d4ee2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0886004   -0.1261193   -0.0510814
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.1666937   -0.2119788   -0.1214085
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1537406   -0.1998319   -0.1076494
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2777496   -0.3137254   -0.2417737
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.3221433   -0.4285154   -0.2157711
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.3301069   -0.3776826   -0.2825311
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.4312000   -0.4891351   -0.3732649
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.5080466   -0.5438311   -0.4722622
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4627241   -0.5372148   -0.3882334
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4709779   -0.6119595   -0.3299963
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.4895031   -0.5471215   -0.4318848
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.5213844   -0.5995733   -0.4431955
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0003947   -0.0330364    0.0322469
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0372189   -0.0651602   -0.0092776
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0216773   -0.0653608    0.0220063
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0179442   -0.0438313    0.0079429
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0461256   -0.1446898    0.0524386
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0358033   -0.0784487    0.0068421
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0479586    0.0285049    0.0674122
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0659364    0.0301589    0.1017139
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0127076   -0.0227415    0.0481567
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0536495   -0.1295510    0.0222520
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1017507   -0.1356583   -0.0678430
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0153095   -0.0726345    0.0420155
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0705458   -0.0951649   -0.0459268
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0864493   -0.1169048   -0.0559937
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1030906   -0.1468767   -0.0593045
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1016117   -0.1309560   -0.0722673
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1076708   -0.1380150   -0.0773267
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.1114264   -0.1470928   -0.0757601
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0173957   -0.0498454    0.0150541
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0511895   -0.0665121    0.1688911
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0533806   -0.0991328   -0.0076285
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0492978    0.0356580    0.0629376
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0314752    0.0105527    0.0523976
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0205720   -0.0146482    0.0557922
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0848800   -0.1423938   -0.0273662
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1305451   -0.1562443   -0.1048459
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.1287141   -0.1641486   -0.0932796
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0889233   -0.1262434   -0.0516032
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0813816   -0.1178797   -0.0448835
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0692278   -0.1024639   -0.0359917
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1324638   -0.2447577   -0.0201698
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1935022   -0.2541345   -0.1328700
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0951346   -0.2072273    0.0169581
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.1015335   -0.1263532   -0.0767139
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.1703263   -0.2834793   -0.0571732
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0893424   -0.1271909   -0.0514940
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0377624    0.0154897    0.0600352
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0340423    0.0100891    0.0579955
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0223996   -0.0126229    0.0574221
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0378782   -0.0858074    0.0100509
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1033944   -0.1256202   -0.0811687
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.1012809   -0.1367754   -0.0657863
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0587326   -0.0839968   -0.0334683
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.1138398   -0.1572465   -0.0704332
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1053476   -0.1415371   -0.0691581
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0452213   -0.0089557    0.0993984
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0230754   -0.0876019    0.0414511
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                 0.0228479   -0.0375111    0.0832068
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0526413   -0.0703584   -0.0349243
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0576126   -0.1390813    0.0238562
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0638952   -0.0889258   -0.0388645
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0006993   -0.1240837    0.1254824
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0835196   -0.0518096    0.2188487
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0620498   -0.1649794    0.2890789
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0883992   -0.1376568   -0.0391415
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0837846   -0.1100304   -0.0575389
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0785288   -0.1039426   -0.0531149
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0112108   -0.0330384    0.0106169
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0048714   -0.0312852    0.0215425
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                 0.0039121   -0.0451146    0.0529388
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0422184   -0.0708072   -0.0136297
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0345658   -0.0542647   -0.0148669
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0364503   -0.0613175   -0.0115832
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0404795   -0.0570045   -0.0239545
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0327477   -0.0735707    0.0080752
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0258893   -0.0472476   -0.0045310
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1055342   -0.1587585   -0.0523099
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0482245   -0.0671536   -0.0292953
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0549948   -0.0883906   -0.0215991
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0180471   -0.0348180   -0.0012762
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0289074   -0.0632106    0.0053959
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0201626   -0.0426427    0.0023175
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0118272   -0.0599050    0.0362507
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0184486   -0.0387172    0.0018201
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0357494   -0.0688031   -0.0026958
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0216207    0.0045559    0.0386855
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0125082   -0.0209581    0.0459744
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 0.0046930   -0.0177103    0.0270963
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0287395   -0.0619304    0.0044514
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0071440   -0.0219841    0.0076961
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0160580   -0.0369859    0.0048699


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.1293116   -0.1570838   -0.1015393
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.2925541   -0.3202623   -0.2648459
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                -0.4342647   -0.4924337   -0.3760958
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.4956734   -0.5391037   -0.4522430
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0172047   -0.0462110    0.0118016
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.0243287   -0.0453184   -0.0033389
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                 0.0468501    0.0275580    0.0661423
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0725836   -0.0990295   -0.0461377
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0826792   -0.0976756   -0.0676829
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.1060840   -0.1243061   -0.0878619
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.0162599   -0.0424084    0.0098886
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                 0.0485016    0.0347226    0.0622806
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.1250180   -0.1444785   -0.1055575
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0844546   -0.1064588   -0.0624505
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.1543023   -0.2067725   -0.1018321
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.1043948   -0.1248389   -0.0839507
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.0378681    0.0159031    0.0598331
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0937525   -0.1108820   -0.0766229
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0852063   -0.1134490   -0.0569636
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                 0.0086211   -0.0272082    0.0444504
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0546831   -0.0687903   -0.0405758
12-15 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.0046081   -0.1182953    0.1275114
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0795786   -0.0954422   -0.0637150
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0056259   -0.0184980    0.0072462
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.0372612   -0.0503965   -0.0241260
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0340694   -0.0467538   -0.0213851
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0589223   -0.0748896   -0.0429550
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0200780   -0.0325402   -0.0076159
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0212869   -0.0355114   -0.0070623
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                 0.0182744    0.0054117    0.0311371
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0126815   -0.0238129   -0.0015501


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0780933   -0.1411085   -0.0150781
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0651402   -0.1129044   -0.0173761
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0443937   -0.1569294    0.0681420
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0523573   -0.1119560    0.0072413
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0768466   -0.1232678   -0.0304255
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0315241   -0.0693898    0.0063415
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0185253   -0.1710466    0.1339961
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0504066   -0.2115370    0.1107239
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0368241   -0.0672834   -0.0063649
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0212825   -0.0536946    0.0111296
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0281814   -0.1301883    0.0738255
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0178591   -0.0680384    0.0323202
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0179779   -0.0176036    0.0535594
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0352509   -0.0720600    0.0015581
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0481012   -0.1301875    0.0339852
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0383400   -0.0559136    0.1325935
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0159034   -0.0637494    0.0319426
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0325448   -0.0853805    0.0202910
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0060592   -0.0483945    0.0362762
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0098148   -0.0561233    0.0364938
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0685852   -0.0534667    0.1906371
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0359850   -0.0924661    0.0204962
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0178226   -0.0381041    0.0024589
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0287258   -0.0601952    0.0027436
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0456651   -0.1087201    0.0173899
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0438341   -0.1114156    0.0237474
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0075417   -0.0443885    0.0594719
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0196955   -0.0341466    0.0735377
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0610384   -0.1892587    0.0671819
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0373291   -0.1217691    0.1964273
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0687927   -0.1847725    0.0471870
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0121911   -0.0329570    0.0573392
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0037202   -0.0318608    0.0244204
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0153628   -0.0476417    0.0169160
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0655162   -0.1181750   -0.0128574
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0634026   -0.1228430   -0.0039622
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0551072   -0.0937963   -0.0164182
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0466150   -0.0780290   -0.0152010
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0682968   -0.1526635    0.0160700
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0223735   -0.1034672    0.0587202
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0049712   -0.0884264    0.0784840
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0112538   -0.0420074    0.0194997
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0828202   -0.0855732    0.2512136
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0613504   -0.1494175    0.2721184
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0046145   -0.0511080    0.0603370
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0098704   -0.0456922    0.0654330
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0063394   -0.0294393    0.0421181
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0151229   -0.0456958    0.0759415
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0076526   -0.0274213    0.0427266
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0057681   -0.0326339    0.0441702
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0077318   -0.0363886    0.0518521
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0145902   -0.0123669    0.0415474
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0573097    0.0005951    0.1140243
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0505394   -0.0124521    0.1135308
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0108603   -0.0490495    0.0273290
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0021155   -0.0301776    0.0259465
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0066214   -0.0590316    0.0457888
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0239223   -0.0824251    0.0345805
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0091125   -0.0466629    0.0284378
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0169277   -0.0451045    0.0112491
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0215955   -0.0148902    0.0580813
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0126815   -0.0267050    0.0520681


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0407112   -0.0662724   -0.0151499
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0148045   -0.0353506    0.0057415
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0030647   -0.0053692   -0.0007603
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0246955   -0.1532104    0.1038194
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0168100   -0.0312827   -0.0023372
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0063845   -0.0229185    0.0101496
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0011084   -0.0032563    0.0010394
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0189341   -0.0888709    0.0510027
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0121334   -0.0335716    0.0093048
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0044724   -0.0312154    0.0222706
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0011357   -0.0172702    0.0195417
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0007962   -0.0024817    0.0008893
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0401380   -0.0938641    0.0135882
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0044687   -0.0207125    0.0296498
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0218385   -0.1140773    0.0704003
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0028613   -0.0191385    0.0134160
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0001057   -0.0013840    0.0015953
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0558742   -0.0997028   -0.0120457
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0264737   -0.0434628   -0.0094845
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0366003   -0.0901682    0.0169677
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0020417   -0.0134891    0.0094057
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0039088   -0.0071777    0.0149952
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0088206   -0.0381646    0.0558058
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0055848   -0.0175433    0.0287129
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0049572   -0.0191506    0.0290650
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0064101   -0.0043628    0.0171829
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0466119   -0.0031985    0.0964223
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0020309   -0.0121473    0.0080855
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0094597   -0.0546739    0.0357544
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0033463   -0.0130645    0.0063719
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0160580   -0.0142550    0.0463710
