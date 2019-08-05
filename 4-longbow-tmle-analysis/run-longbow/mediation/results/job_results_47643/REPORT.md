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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1125    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        77     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15183
6 months    ki1119695-PROBIT           BELARUS                        <32         12176   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2306   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          275     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          300    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1829    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2624
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   ki1119695-PROBIT           BELARUS                        >=38          178    3909
24 months   ki1119695-PROBIT           BELARUS                        <32          3143    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       588    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32           492    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       247    1024
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          270    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1666    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI



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
![](/tmp/805504c4-6438-4510-b4bf-491427224ba2/419b70f3-ad8d-4acb-b8e6-c819f8d75f6f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/805504c4-6438-4510-b4bf-491427224ba2/419b70f3-ad8d-4acb-b8e6-c819f8d75f6f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/805504c4-6438-4510-b4bf-491427224ba2/419b70f3-ad8d-4acb-b8e6-c819f8d75f6f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.0251188   -1.2247229   -0.8255146
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.6133838   -1.8954300   -1.3313375
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.1919486   -1.4091794   -0.9747179
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2017918   -0.0863858    0.4899693
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.1550383   -0.9199273    0.6098508
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0671775   -0.2628240    0.3971789
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.1604147   -1.5244036   -0.7964258
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.3295721   -1.5941084   -1.0650358
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.0831533   -1.2669567   -0.8993499
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.4216971   -1.1539303    0.3105361
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.3852201   -0.6829015   -0.0875387
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.8647740   -1.1059802   -0.6235677
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.0146629   -1.2546440   -0.7746817
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -1.3811994   -1.7734441   -0.9889548
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.5410462   -1.9920003   -1.0900921
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8373958   -1.0973701   -0.5774216
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4640771   -1.7575120   -1.1706422
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.7843226   -2.4658617   -1.1027835
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4626077   -1.7675906   -1.1576248
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -2.0099169   -2.3366410   -1.6831929
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3676317   -1.4968526   -1.2384108
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.4408091   -1.7106609   -1.1709573
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7899345   -2.3356234   -1.2442456
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -2.0422948   -2.2211887   -1.8634009
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.7851309   -2.2223856   -1.3478762
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.2012605    0.0952067    0.3073142
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.1144723    0.0186215    0.2103231
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.1308627   -0.0132678    0.2749932
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.7106418   -1.8890686   -1.5322151
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.8329693   -1.9551386   -1.7108000
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.9278007   -2.1121703   -1.7434310
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -1.2972035   -1.4611318   -1.1332753
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -1.1167769   -1.1853016   -1.0482521
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -1.1663506   -1.3395492   -0.9931520
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.4787518   -1.7392713   -1.2182322
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.5944445   -1.8918884   -1.2970006
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.9031306   -2.2513559   -1.5549053
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.8643441   -2.0802922   -1.6483961
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.3217726   -2.5969495   -2.0465957
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.9989910   -2.2993882   -1.6985939
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.3154190    0.0115770    0.6192610
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0491089   -0.4962127    0.3979948
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0989463   -0.3220977    0.5199903
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.6018402   -1.9488001   -1.2548803
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -2.0080937   -2.2854820   -1.7307054
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.8001176   -2.0166832   -1.5835520
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -1.1120571   -1.5287809   -0.6953332
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.4999801   -2.0526140   -0.9473462
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -1.5910710   -1.8358184   -1.3463235
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.5474204   -1.8126217   -1.2822191
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -1.7232432   -2.0532143   -1.3932721
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.8105425   -2.1864814   -1.4346036
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5213077   -1.7646345   -1.2779809
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8812500   -1.6713902   -0.0911098
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5543750   -2.0461910   -1.0625590
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.5721934   -2.8343668   -2.3100200
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -3.0421465   -3.6379999   -2.4462930
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8660540   -3.2099669   -2.5221411
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1728035   -0.5164507    0.1708437
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.1343948   -0.4511776    0.1823881
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.2093914   -0.4634826    0.0446998
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -2.7707681   -2.9224071   -2.6191291
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -2.8084136   -2.9046039   -2.7122233
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -2.9581583   -3.1220459   -2.7942708
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -2.5945946   -2.8111048   -2.3780844
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -2.3401134   -2.4076082   -2.2726185
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -2.3330998   -2.5155038   -2.1506958
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.7645633   -2.0922751   -1.4368516
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.8525760   -2.1589011   -1.5462509
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.5788941   -2.0873268   -1.0704615


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1979000   -1.3314769   -1.0643231
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0554008   -0.1690575    0.2798592
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1894617   -1.3346428   -1.0442806
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7256962   -0.9111717   -0.5402207
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3300201   -1.5375346   -1.1225056
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9083333   -1.1234247   -0.6932420
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9567550   -2.0984173   -1.8150926
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1588608   -0.0651474    0.3828689
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8373292   -1.9909581   -1.6837003
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5030380   -1.6956243   -1.3104516
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.6960127   -1.8853995   -1.5066258
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4697191   -1.6840618   -1.2553764
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.7318500   -2.9253580   -2.5383420
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8513770   -2.9170436   -2.7857104
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3958878   -2.4412250   -2.3505506
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.7689189   -1.9714091   -1.5664287


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.5882650   -0.9346962   -0.2418338
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1668299   -0.4615795    0.1279198
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3568300   -1.1815542    0.4678941
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1346143   -0.5745789    0.3053503
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.1691574   -0.6174044    0.2790896
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0772614   -0.3287018    0.4832246
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0364770   -0.7536377    0.8265917
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.4430768   -1.2137679    0.3276142
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.3665365   -0.8257872    0.0927141
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.5263833   -1.0455103   -0.0072563
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1373958   -0.4464434    0.7212351
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4718750   -1.0023136    0.0585636
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3202455   -1.0702694    0.4297784
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0014694   -0.4258568    0.4287957
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.6422852    0.2730951    1.0114753
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.5691078    0.3848979    0.7533177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2523603   -0.8262460    0.3215254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0048036   -0.6945183    0.7041256
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0867882   -0.1972155    0.0236392
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0703978   -0.2197627    0.0789671
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1223275   -0.3384519    0.0937969
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2171589   -0.4739712    0.0396535
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1804267    0.0027013    0.3581521
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.1308530   -0.1077308    0.3694367
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1156927   -0.5170749    0.2856894
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.4243789   -0.8609665    0.0122088
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.4574285   -0.8092242   -0.1056327
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1346469   -0.5031607    0.2338670
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3645279   -0.9076525    0.1785967
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2164727   -0.7355549    0.3026095
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.4062535   -0.8492804    0.0367733
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1982774   -0.6041541    0.2075993
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.3879230   -1.0669748    0.2911288
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.4790139   -0.9677108    0.0096830
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1758228   -0.6049152    0.2532696
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2631221   -0.7253785    0.1991342
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6400577   -0.1867007    1.4668161
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0330673   -0.5817848    0.5156502
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4699531   -1.1234676    0.1835615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2938606   -0.7284402    0.1407191
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0384088   -0.4227351    0.4995526
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0365879   -0.4702778    0.3971020
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0376456   -0.2157900    0.1404989
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1873903   -0.4096843    0.0349038
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.2544812    0.0276475    0.4813150
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.2614948   -0.0217177    0.5447074
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0880127   -0.5393650    0.3633397
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.1856692   -0.4216095    0.7929479


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1727812   -0.3193422   -0.0262203
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1463909   -0.4072342    0.1144524
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0290470   -0.3406595    0.2825655
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.3039991   -0.9906474    0.3826492
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3153572   -0.5793100   -0.0514044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0709375   -0.1999633    0.0580883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0104062   -0.2267957    0.2059832
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.6092793    0.2701707    0.9483878
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1087497   -0.6439307    0.4264313
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0846475   -0.1866432    0.0173483
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0961935   -0.2608391    0.0684522
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1550770   -0.0052440    0.3153981
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1423803   -0.4157789    0.1310182
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0924108   -0.2573256    0.0725039
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1565582   -0.4353109    0.1221945
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2354890   -0.5416975    0.0707195
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.3909809   -0.7599310   -0.0220308
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.1485923   -0.3980980    0.1009134
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0515886   -0.0850395    0.1882167
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1596566   -0.3657666    0.0464534
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0473192   -0.3866819    0.4813203
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0806089   -0.2227232    0.0615054
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1987068   -0.0129863    0.4103999
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0043556   -0.3041238    0.2954126
