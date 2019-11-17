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

agecat        studyid                    country     fhtcm           pers_wast   n_cell       n
------------  -------------------------  ----------  -------------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1038    1720
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       69    1720
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      112    1720
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       12    1720
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      466    1720
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1720
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                0      927    1489
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                1       32    1489
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 0      103    1489
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 1        7    1489
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            0      411    1489
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            1        9    1489
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                0    10294   12014
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                1      962   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 0      145   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 1       16   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            0      547   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            1       50   12014
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1038    1720
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       69    1720
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      112    1720
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       12    1720
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      466    1720
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1720
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/6271eced-0a2d-4559-8b91-c6928ff54be1/27a01a9e-c5b9-47bf-836c-5a81414fba84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6271eced-0a2d-4559-8b91-c6928ff54be1/27a01a9e-c5b9-47bf-836c-5a81414fba84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6271eced-0a2d-4559-8b91-c6928ff54be1/27a01a9e-c5b9-47bf-836c-5a81414fba84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6271eced-0a2d-4559-8b91-c6928ff54be1/27a01a9e-c5b9-47bf-836c-5a81414fba84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0713165   0.0244665   0.1181664
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0722774   0.0536597   0.0908952
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0961379   0.0752814   0.1169944
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1102624   0.0493238   0.1712010
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2211662   0.1556569   0.2866755
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1597129   0.0929183   0.2265076
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0633346   0.0490470   0.0776222
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0771325   0.0236661   0.1305989
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0483181   0.0294229   0.0672132
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0333681   0.0219976   0.0447386
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0636364   0.0180040   0.1092687
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0214286   0.0075750   0.0352822
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0851382   0.0576311   0.1126453
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0955571   0.0780792   0.1130351
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0806738   0.0414494   0.1198982
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0713165   0.0244665   0.1181664
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0722774   0.0536597   0.0908952
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0961379   0.0752814   0.1169944
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1121516   0.0507894   0.1735139
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2239384   0.1577772   0.2900996
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1532819   0.0877815   0.2187823
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0630118   0.0487318   0.0772918
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0817787   0.0282910   0.1352664
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0471258   0.0281196   0.0661321


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324
0-6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0322364   0.0232620   0.0412108
0-6 months    ki1119695-PROBIT           BELARUS   NA                   NA                0.0855668   0.0580084   0.1131253
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0134742   0.5201950   1.974510
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3480464   0.6749168   2.692523
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.0058171   1.0717498   3.753957
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.4484805   0.7251937   2.893152
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.2178576   0.5875695   2.524258
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.7629017   0.4854957   1.198814
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.9071023   0.8621358   4.218638
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.6421875   0.3092258   1.333669
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.1223766   0.8200848   1.536096
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.9475628   0.6878075   1.305417
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.0134742   0.5201950   1.974510
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3480464   0.6749168   2.692523
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.9967464   1.0728167   3.716382
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3667382   0.6836625   2.732303
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.2978309   0.6495409   2.593163
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.7478888   0.4706906   1.188334


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0075670   -0.0199849   0.0351189
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0600079    0.0037235   0.1162923
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0028695   -0.0112214   0.0054825
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0011317   -0.0077112   0.0054478
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0004286   -0.0011559   0.0020132
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0075670   -0.0199849   0.0351189
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0581186    0.0015135   0.1147238
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0025467   -0.0108932   0.0057997


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0959264   -0.3621896   0.3999741
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3524272   -0.0663579   0.6067450
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0474565   -0.1950308   0.0818939
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0351060   -0.2604545   0.1499539
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0050094   -0.0136531   0.0233284
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0959264   -0.3621896   0.3999741
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3413317   -0.0790771   0.5979491
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0421187   -0.1896224   0.0870956
