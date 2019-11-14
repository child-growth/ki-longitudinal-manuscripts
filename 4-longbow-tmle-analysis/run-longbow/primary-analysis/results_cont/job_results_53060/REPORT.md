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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           63     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        45     133
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            6      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        11      18
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      27
Birth       ki0047075b-MAL-ED          INDIA                          <32             9      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        11      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      69
Birth       ki0047075b-MAL-ED          PERU                           <32            22      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        24      69
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           17      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      31
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32          1045    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1249
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13396
Birth       ki1119695-PROBIT           BELARUS                        <32         10729   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2061   13396
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          245     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32           380     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       198     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          328    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          2079    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       537    2944
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
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32           491    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       245    1021
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL

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
![](/tmp/f2e4adf8-b39c-4270-94af-4019b9e586e7/465a6ce2-4e2a-4b37-b73c-c345a5b79bc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f2e4adf8-b39c-4270-94af-4019b9e586e7/465a6ce2-4e2a-4b37-b73c-c345a5b79bc5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f2e4adf8-b39c-4270-94af-4019b9e586e7/465a6ce2-4e2a-4b37-b73c-c345a5b79bc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9302748   -1.1692290   -0.6913206
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.2251611   -1.6191908   -0.8311315
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.0034864   -1.3105213   -0.6964516
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.5431884   -0.8548248   -0.2315519
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.9439490   -1.5485942   -0.3393037
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.2007765   -1.5210491   -0.8805040
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 1.2442554    1.1154077    1.3731032
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                 1.3292970    1.1755429    1.4830512
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                 1.2945422    1.1053851    1.4836994
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.3072436    0.0909595    0.5235278
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.0337143   -0.1287373    0.1961659
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1205097   -0.0843625    0.3253818
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1706796   -0.3155211   -0.0258382
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2732000   -0.3322026   -0.2141974
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.3588723   -0.5411521   -0.1765926
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9740964   -1.2105404   -0.7376524
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.0530640   -2.3075242   -1.7986037
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.2016253   -1.4470000   -0.9562506
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1958882   -0.1381479    0.5299244
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.2782245   -0.8178360    0.2613870
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1508216   -0.2082947    0.5099379
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.4242980   -1.9210817   -0.9275144
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.3925665   -1.6768669   -1.1082660
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9829807   -1.1898085   -0.7761530
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.4435920   -1.3774677    0.4902836
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.2365082   -0.4754945    0.0024781
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.8782222   -1.1229131   -0.6335312
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.0803161   -1.2785982   -0.8820340
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -1.3281329   -1.7594882   -0.8967777
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.5349358   -2.0136348   -1.0562367
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8373958   -1.0973701   -0.5774216
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4164650   -1.6997121   -1.1332179
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.5502553   -2.0862750   -1.0142357
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.3971362   -1.6663219   -1.1279505
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -2.0695657   -2.7393603   -1.3997711
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -2.0504036   -2.2124862   -1.8883210
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.8772298   -2.3892708   -1.3651889
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.2004819    0.0954952    0.3054686
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.1120251    0.0179129    0.2061374
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.1180019   -0.0303518    0.2663556
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.6965868   -1.8692380   -1.5239356
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.7899983   -1.9120374   -1.6679593
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.9044528   -2.0962847   -1.7126208
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -1.2638261   -1.4195336   -1.1081187
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -1.1075587   -1.1734421   -1.0416754
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -1.1978513   -1.3834383   -1.0122643
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.4573271   -1.7201103   -1.1945438
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.5850797   -1.8843548   -1.2858045
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.8806605   -2.2114671   -1.5498540
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.8407356   -2.0922115   -1.5892597
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -3.0625575   -3.2703789   -2.8547360
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -2.0531806   -2.3974994   -1.7088618
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2677000   -0.0405701    0.5759702
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0023555   -0.4633264    0.4680375
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0830983   -0.3563190    0.5225157
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -2.0167660   -2.4024071   -1.6311250
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.9372504   -2.2903414   -1.5841595
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.8054848   -2.0852488   -1.5257207
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -1.3263346   -1.7673975   -0.8852716
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.5364829   -2.0530238   -1.0199419
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -1.6486925   -1.8732958   -1.4240893
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.6176911   -1.9268348   -1.3085474
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -1.6270990   -1.9367865   -1.3174115
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.8539136   -2.3510620   -1.3567653
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5392308   -1.7841109   -1.2943506
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8937500   -1.6433814   -0.1441186
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5871875   -2.0724607   -1.1019143
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6219365   -2.8834902   -2.3603827
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -3.0263231   -3.5429467   -2.5096994
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8424095   -3.2097267   -2.4750923
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1345217   -0.4730197    0.2039762
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.1368931   -0.4512192    0.1774329
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.2178315   -0.4869194    0.0512565
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -2.8789612   -3.0416339   -2.7162885
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -2.9318709   -3.0257815   -2.8379602
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -3.0942453   -3.2715324   -2.9169582
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -2.5365993   -2.7261857   -2.3470129
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -2.3477665   -2.4208832   -2.2746499
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -2.3648221   -2.5463299   -2.1833144
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.6895510   -2.0413703   -1.3377318
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.8562006   -2.1613969   -1.5510044
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.6669306   -2.1930039   -1.1408574


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0100752   -1.1744939   -0.8456565
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.3522222   -1.7800602   -0.9243843
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9334783   -1.1468994   -0.7200571
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7345161   -1.1414567   -0.3275756
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.0947826   -1.3988341   -0.7907311
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4300160   -1.5090211   -1.3510109
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3357428    1.1757840    1.4957016
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1377035    0.0520086    0.2233984
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2468988   -0.2865742   -0.2072233
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1976000   -1.3310224   -1.0641776
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0554008   -0.1690575    0.2798592
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1772360   -1.3224216   -1.0320505
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7256962   -0.9111717   -0.5402207
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3335141   -1.5408101   -1.1262180
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9083333   -1.1234247   -0.6932420
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9894040   -2.1310968   -1.8477111
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1370886   -0.0872159    0.3613931
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8784783   -2.0301474   -1.7268092
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5492405   -1.7384624   -1.3600186
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7029114   -1.8930361   -1.5127867
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4898315   -1.7035677   -1.2760952
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.7648500   -2.9586982   -2.5710018
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9828012   -3.0482527   -2.9173497
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4204386   -2.4659064   -2.3749708
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.7832432   -1.9856110   -1.5808754


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.2948864   -0.7564899    0.1667172
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0732116   -0.4616190    0.3151958
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4007606   -1.0830018    0.2814807
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.6575881   -1.1073990   -0.2077773
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.2445882   -0.8080795    1.2972560
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2527451   -1.0999063    0.5944161
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2290058   -0.9999691    0.5419574
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.3632164   -0.3239497    1.0503825
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.2475759   -0.5141574    0.0190057
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3693259   -0.7549031    0.0162513
Birth       ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0850416   -0.0105142    0.1805974
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0502868   -0.0925671    0.1931407
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.2735293   -0.5439748   -0.0030838
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1867340   -0.4849631    0.1114951
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1025204   -0.2586202    0.0535794
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.1881927   -0.4210373    0.0446519
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.0789675   -1.4263067   -0.7316284
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.2275289   -0.5700079    0.1149501
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.4741127   -1.1098456    0.1616201
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0450666   -0.5383501    0.4482168
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0317316   -0.5412998    0.6047629
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.4413173   -0.0979082    0.9805428
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.2070838   -0.7498593    1.1640270
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.4346301   -1.3952217    0.5259614
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.2478168   -0.7233487    0.2277151
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4546197   -0.9723599    0.0631206
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1373958   -0.4464434    0.7212351
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4718750   -1.0023136    0.0585636
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1337904   -0.7418255    0.4742447
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0193288   -0.3750663    0.4137238
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0191621   -0.6703519    0.7086762
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1923359   -0.6509779    1.0356496
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0884567   -0.1970159    0.0201024
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0824800   -0.2281588    0.0631988
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0934115   -0.3047960    0.1179730
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2078659   -0.4661465    0.0504146
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1562674   -0.0124014    0.3249362
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0659748   -0.1761366    0.3080863
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1277526   -0.5309773    0.2754721
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.4233335   -0.8483835    0.0017165
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.2218219   -1.5587040   -0.8849398
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.2124450   -0.6348709    0.2099809
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2653445   -0.8232546    0.2925656
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1846017   -0.7272809    0.3580775
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0795156   -0.4382766    0.5973079
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.2112813   -0.2624294    0.6849920
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.2101483   -0.8877169    0.4674203
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.3223580   -0.8175632    0.1728472
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0094079   -0.4468626    0.4280467
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2362226   -0.8233331    0.3508880
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6454808   -0.1431342    1.4340957
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0479567   -0.5915157    0.4956023
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4043866   -0.9856781    0.1769049
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2204730   -0.6736686    0.2327226
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0023714   -0.4368014    0.4320586
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0833097   -0.5107923    0.3441729
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0529097   -0.2402003    0.1343810
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2152841   -0.4558697    0.0253015
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1888328   -0.0144353    0.3921009
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.1717772   -0.0907804    0.4343347
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1666496   -0.6281450    0.2948458
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0226204   -0.6092742    0.6545150


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0798004   -0.2563315    0.0967307
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3902899   -0.6953952   -0.0851845
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0914873   -0.0070597    0.1900343
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1695401   -0.3725336    0.0334533
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0762191   -0.2184147    0.0659765
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.2235036   -0.4206393   -0.0263679
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1404874   -0.4312470    0.1502722
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2470620   -0.2031355    0.6972595
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2821042   -1.1699595    0.6057512
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2531979   -0.4981360   -0.0082598
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0709375   -0.1999633    0.0580883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0580184   -0.2647363    0.1486996
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.1708815   -0.4851195    0.8268826
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0838689   -0.1848979    0.0171601
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1102485   -0.2701289    0.0496319
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1216996   -0.0309610    0.2743602
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1638050   -0.4363654    0.1087554
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1486684   -0.3562956    0.0589588
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1306114   -0.4117708    0.1505479
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1382878   -0.2168071    0.4933827
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2229059   -0.6097116    0.1638997
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0852203   -0.3738367    0.2033961
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0493993   -0.0849818    0.1837804
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1429135   -0.3505894    0.0647623
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0090374   -0.4018431    0.4199179
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1038400   -0.2564432    0.0487633
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1161607   -0.0694494    0.3017707
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0936922   -0.4099811    0.2225967
