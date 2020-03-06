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

**Outcome Variable:** wast_rec90d

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

agecat        studyid         country     fhtcm           wast_rec90d   n_cell      n
------------  --------------  ----------  -------------  ------------  -------  -----
0-24 months   COHORTS         GUATEMALA   >=167 cm                  0        8    128
0-24 months   COHORTS         GUATEMALA   >=167 cm                  1        4    128
0-24 months   COHORTS         GUATEMALA   <162 cm                   0       62    128
0-24 months   COHORTS         GUATEMALA   <162 cm                   1       16    128
0-24 months   COHORTS         GUATEMALA   [162-167) cm              0       30    128
0-24 months   COHORTS         GUATEMALA   [162-167) cm              1        8    128
0-24 months   Keneba          GAMBIA      >=167 cm                  0      329   1317
0-24 months   Keneba          GAMBIA      >=167 cm                  1      521   1317
0-24 months   Keneba          GAMBIA      <162 cm                   0       40   1317
0-24 months   Keneba          GAMBIA      <162 cm                   1       64   1317
0-24 months   Keneba          GAMBIA      [162-167) cm              0      131   1317
0-24 months   Keneba          GAMBIA      [162-167) cm              1      232   1317
0-24 months   PROBIT          BELARUS     >=167 cm                  0      360   3570
0-24 months   PROBIT          BELARUS     >=167 cm                  1     2983   3570
0-24 months   PROBIT          BELARUS     <162 cm                   0       15   3570
0-24 months   PROBIT          BELARUS     <162 cm                   1       39   3570
0-24 months   PROBIT          BELARUS     [162-167) cm              0       14   3570
0-24 months   PROBIT          BELARUS     [162-167) cm              1      159   3570
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  0      117    463
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  1       84    463
0-24 months   SAS-CompFeed    INDIA       <162 cm                   0       68    463
0-24 months   SAS-CompFeed    INDIA       <162 cm                   1       42    463
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              0       96    463
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              1       56    463
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       61    223
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1        3    223
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       97    223
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1        5    223
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       52    223
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1        5    223
0-6 months    COHORTS         GUATEMALA   >=167 cm                  0        0     44
0-6 months    COHORTS         GUATEMALA   >=167 cm                  1        4     44
0-6 months    COHORTS         GUATEMALA   <162 cm                   0        9     44
0-6 months    COHORTS         GUATEMALA   <162 cm                   1       16     44
0-6 months    COHORTS         GUATEMALA   [162-167) cm              0        7     44
0-6 months    COHORTS         GUATEMALA   [162-167) cm              1        8     44
0-6 months    Keneba          GAMBIA      >=167 cm                  0       75    526
0-6 months    Keneba          GAMBIA      >=167 cm                  1      267    526
0-6 months    Keneba          GAMBIA      <162 cm                   0       13    526
0-6 months    Keneba          GAMBIA      <162 cm                   1       37    526
0-6 months    Keneba          GAMBIA      [162-167) cm              0       25    526
0-6 months    Keneba          GAMBIA      [162-167) cm              1      109    526
0-6 months    PROBIT          BELARUS     >=167 cm                  0      287   3460
0-6 months    PROBIT          BELARUS     >=167 cm                  1     2953   3460
0-6 months    PROBIT          BELARUS     <162 cm                   0       12   3460
0-6 months    PROBIT          BELARUS     <162 cm                   1       38   3460
0-6 months    PROBIT          BELARUS     [162-167) cm              0       11   3460
0-6 months    PROBIT          BELARUS     [162-167) cm              1      159   3460
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  0       31    173
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  1       41    173
0-6 months    SAS-CompFeed    INDIA       <162 cm                   0       21    173
0-6 months    SAS-CompFeed    INDIA       <162 cm                   1       19    173
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              0       29    173
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              1       32    173
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  0       21     72
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  1        0     72
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   0       33     72
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   1        0     72
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              0       18     72
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              1        0     72
6-24 months   COHORTS         GUATEMALA   >=167 cm                  0        8     84
6-24 months   COHORTS         GUATEMALA   >=167 cm                  1        0     84
6-24 months   COHORTS         GUATEMALA   <162 cm                   0       53     84
6-24 months   COHORTS         GUATEMALA   <162 cm                   1        0     84
6-24 months   COHORTS         GUATEMALA   [162-167) cm              0       23     84
6-24 months   COHORTS         GUATEMALA   [162-167) cm              1        0     84
6-24 months   Keneba          GAMBIA      >=167 cm                  0      254    791
6-24 months   Keneba          GAMBIA      >=167 cm                  1      254    791
6-24 months   Keneba          GAMBIA      <162 cm                   0       27    791
6-24 months   Keneba          GAMBIA      <162 cm                   1       27    791
6-24 months   Keneba          GAMBIA      [162-167) cm              0      106    791
6-24 months   Keneba          GAMBIA      [162-167) cm              1      123    791
6-24 months   PROBIT          BELARUS     >=167 cm                  0       73    110
6-24 months   PROBIT          BELARUS     >=167 cm                  1       30    110
6-24 months   PROBIT          BELARUS     <162 cm                   0        3    110
6-24 months   PROBIT          BELARUS     <162 cm                   1        1    110
6-24 months   PROBIT          BELARUS     [162-167) cm              0        3    110
6-24 months   PROBIT          BELARUS     [162-167) cm              1        0    110
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  0       86    290
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  1       43    290
6-24 months   SAS-CompFeed    INDIA       <162 cm                   0       47    290
6-24 months   SAS-CompFeed    INDIA       <162 cm                   1       23    290
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              0       67    290
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              1       24    290
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       40    151
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1        3    151
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       64    151
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1        5    151
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       34    151
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1        5    151


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/41def8c4-f9ac-47e4-94fe-c7e3a9c65ce4/3afc248a-53d7-48ea-81d7-697b009ccd5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/41def8c4-f9ac-47e4-94fe-c7e3a9c65ce4/3afc248a-53d7-48ea-81d7-697b009ccd5c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/41def8c4-f9ac-47e4-94fe-c7e3a9c65ce4/3afc248a-53d7-48ea-81d7-697b009ccd5c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/41def8c4-f9ac-47e4-94fe-c7e3a9c65ce4/3afc248a-53d7-48ea-81d7-697b009ccd5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                0.6129412   0.5779879   0.6478944
0-24 months   Keneba         GAMBIA    <162 cm              NA                0.6153846   0.5221496   0.7086196
0-24 months   Keneba         GAMBIA    [162-167) cm         NA                0.6391185   0.5832445   0.6949924
0-24 months   PROBIT         BELARUS   >=167 cm             NA                0.8923123   0.8819071   0.9027174
0-24 months   PROBIT         BELARUS   <162 cm              NA                0.7222222   0.6502357   0.7942088
0-24 months   PROBIT         BELARUS   [162-167) cm         NA                0.9190751   0.8786507   0.9594996
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                0.4179104   0.3474856   0.4883353
0-24 months   SAS-CompFeed   INDIA     <162 cm              NA                0.3818182   0.2793354   0.4843010
0-24 months   SAS-CompFeed   INDIA     [162-167) cm         NA                0.3684211   0.2906814   0.4461607
0-6 months    Keneba         GAMBIA    >=167 cm             NA                0.7807018   0.7374572   0.8239463
0-6 months    Keneba         GAMBIA    <162 cm              NA                0.7400000   0.6298783   0.8501217
0-6 months    Keneba         GAMBIA    [162-167) cm         NA                0.8134328   0.7497729   0.8770928
0-6 months    PROBIT         BELARUS   >=167 cm             NA                0.9114198   0.9015844   0.9212551
0-6 months    PROBIT         BELARUS   <162 cm              NA                0.7600000   0.6908229   0.8291771
0-6 months    PROBIT         BELARUS   [162-167) cm         NA                0.9352941   0.8979163   0.9726719
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                0.5694444   0.4527096   0.6861793
0-6 months    SAS-CompFeed   INDIA     <162 cm              NA                0.4750000   0.3170488   0.6329512
0-6 months    SAS-CompFeed   INDIA     [162-167) cm         NA                0.5245902   0.4031575   0.6460228
6-24 months   Keneba         GAMBIA    >=167 cm             NA                0.5000000   0.4538481   0.5461519
6-24 months   Keneba         GAMBIA    <162 cm              NA                0.5000000   0.3687111   0.6312889
6-24 months   Keneba         GAMBIA    [162-167) cm         NA                0.5371179   0.4652929   0.6089429
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                0.3333333   0.2505168   0.4161499
6-24 months   SAS-CompFeed   INDIA     <162 cm              NA                0.3285714   0.2131238   0.4440191
6-24 months   SAS-CompFeed   INDIA     [162-167) cm         NA                0.2637363   0.1681527   0.3593198


### Parameter: E(Y)


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    NA                   NA                0.6203493   0.5920542   0.6486444
0-24 months   PROBIT         BELARUS   NA                   NA                0.8910364   0.8809112   0.9011616
0-24 months   SAS-CompFeed   INDIA     NA                   NA                0.3930886   0.3463071   0.4398700
0-6 months    Keneba         GAMBIA    NA                   NA                0.7851711   0.7510257   0.8193166
0-6 months    PROBIT         BELARUS   NA                   NA                0.9104046   0.9008342   0.9199750
0-6 months    SAS-CompFeed   INDIA     NA                   NA                0.5317919   0.4572362   0.6063476
6-24 months   Keneba         GAMBIA    NA                   NA                0.5107459   0.4734246   0.5480672
6-24 months   SAS-CompFeed   INDIA     NA                   NA                0.3103448   0.2551537   0.3655360


### Parameter: RR


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA    <162 cm              >=167 cm          1.0039864   0.8539277   1.1804147
0-24 months   Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0427077   0.9393576   1.1574285
0-24 months   PROBIT         BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROBIT         BELARUS   <162 cm              >=167 cm          0.8093828   0.7321009   0.8948227
0-24 months   PROBIT         BELARUS   [162-167) cm         >=167 cm          1.0299927   0.9841748   1.0779436
0-24 months   SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9136364   0.6654870   1.2543166
0-24 months   SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8815789   0.6729674   1.1548574
0-6 months    Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba         GAMBIA    <162 cm              >=167 cm          0.9478652   0.8086871   1.1109963
0-6 months    Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0419252   0.9466475   1.1467923
0-6 months    PROBIT         BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROBIT         BELARUS   <162 cm              >=167 cm          0.8338639   0.7608302   0.9139081
0-6 months    PROBIT         BELARUS   [162-167) cm         >=167 cm          1.0261947   0.9845825   1.0695655
0-6 months    SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.8341463   0.5644033   1.2328066
0-6 months    SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9212315   0.6762121   1.2550315
6-24 months   Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA    <162 cm              >=167 cm          1.0000000   0.7570181   1.3209724
6-24 months   Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0742358   0.9131059   1.2637993
6-24 months   SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9857143   0.6410644   1.5156553
6-24 months   SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7912088   0.5098227   1.2279001


### Parameter: PAR


agecat        studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0074081   -0.0137073   0.0285235
0-24 months   PROBIT         BELARUS   >=167 cm             NA                -0.0012759   -0.0041071   0.0015553
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0248219   -0.0780926   0.0284488
0-6 months    Keneba         GAMBIA    >=167 cm             NA                 0.0044693   -0.0201414   0.0290801
0-6 months    PROBIT         BELARUS   >=167 cm             NA                -0.0010151   -0.0036910   0.0016607
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                -0.0376525   -0.1262124   0.0509074
6-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0107459   -0.0172868   0.0387786
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0229885   -0.0845554   0.0385784


### Parameter: PAF


agecat        studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0119418   -0.0226820   0.0453934
0-24 months   PROBIT         BELARUS   >=167 cm             NA                -0.0014319   -0.0046151   0.0017412
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0631458   -0.2080309   0.0643625
0-6 months    Keneba         GAMBIA    >=167 cm             NA                 0.0056922   -0.0261675   0.0365628
0-6 months    PROBIT         BELARUS   >=167 cm             NA                -0.0011150   -0.0040590   0.0018203
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                -0.0708031   -0.2511294   0.0835325
6-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0210396   -0.0353989   0.0744017
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0740741   -0.2924332   0.1073928
