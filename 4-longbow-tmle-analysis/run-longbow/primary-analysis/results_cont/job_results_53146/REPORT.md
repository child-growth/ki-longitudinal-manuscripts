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
![](/tmp/55157e8e-86bc-4ee2-a93c-2e7c584959e0/41b35599-af96-4cbf-99a9-aaee96e0b56d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/55157e8e-86bc-4ee2-a93c-2e7c584959e0/41b35599-af96-4cbf-99a9-aaee96e0b56d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/55157e8e-86bc-4ee2-a93c-2e7c584959e0/41b35599-af96-4cbf-99a9-aaee96e0b56d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9536310   -1.1966776   -0.7105845
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.2124416   -1.5904763   -0.8344070
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.0212009   -1.3179891   -0.7244128
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.5184766   -0.8347999   -0.2021533
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.9511143   -1.4925877   -0.4096408
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.2284579   -1.5653960   -0.8915197
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 1.2610192    1.1350321    1.3870062
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                 1.3265143    1.1731790    1.4798495
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                 1.3008960    1.1149903    1.4868017
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.3179808    0.1179004    0.5180611
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.0803871   -0.0712608    0.2320350
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1302851   -0.0918163    0.3523865
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1774046   -0.3121027   -0.0427065
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2673834   -0.3248958   -0.2098711
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.3898689   -0.6011653   -0.1785725
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.0113830   -1.2521385   -0.7706276
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.2686116   -2.4698976   -2.0673256
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.2233537   -1.4956501   -0.9510572
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1812636   -0.1354622    0.4979894
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.1539004   -0.7529430    0.4451422
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1495571   -0.1988209    0.4979351
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.4554482   -1.8989188   -1.0119776
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.4037553   -1.7016044   -1.1059062
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9701808   -1.1832231   -0.7571385
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.5123576   -1.1837931    0.1590779
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.5220929   -0.8315615   -0.2126243
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.8315702   -1.0822785   -0.5808620
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.0619211   -1.2629667   -0.8608755
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -1.2930478   -1.7204728   -0.8656228
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.5560240   -2.0194156   -1.0926323
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367187   -1.0969700   -0.5764675
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4345717   -1.7201828   -1.1489606
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6595938   -2.2489437   -1.0702439
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4236261   -1.7179429   -1.1293092
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7971851   -2.2898814   -1.3044889
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -2.0885132   -2.2430352   -1.9339912
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.8381828   -2.3538708   -1.3224949
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1654495    0.0618880    0.2690110
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.1109175    0.0158373    0.2059976
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.1156624   -0.0300291    0.2613538
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.6827160   -1.8593129   -1.5061191
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.8254833   -1.9522271   -1.6987395
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.9311201   -2.1154955   -1.7467448
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -1.2154410   -1.3816565   -1.0492255
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -1.1078420   -1.1783861   -1.0372980
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -1.2129370   -1.4120809   -1.0137932
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.4605861   -1.7209423   -1.2002298
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.5961789   -1.8968466   -1.2955111
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.8517435   -2.1889061   -1.5145810
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.8588879   -2.1160601   -1.6017158
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.8706060   -3.0829299   -2.6582820
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -2.0204735   -2.3604914   -1.6804556
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.3104042   -0.0132580    0.6340665
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0548980   -0.5469317    0.4371358
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0710558   -0.3478820    0.4899936
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -2.0195355   -2.3788858   -1.6601852
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.9071468   -2.2446919   -1.5696017
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.8208352   -2.0934909   -1.5481795
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -1.2460350   -1.6825016   -0.8095684
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.3760635   -1.9045004   -0.8476266
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -1.5964448   -1.8197445   -1.3731452
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.6568607   -1.9878223   -1.3258991
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -1.5575472   -1.9247374   -1.1903569
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.7304529   -2.2648145   -1.1960913
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6263693   -2.8868650   -2.3658735
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -3.0315548   -3.5606442   -2.5024653
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8515917   -3.2139968   -2.4891865
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1379616   -0.5046529    0.2287296
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.1350475   -0.4471885    0.1770936
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.2150053   -0.4664446    0.0364339
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -2.8553750   -3.0183551   -2.6923948
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -2.8953536   -2.9878522   -2.8028551
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -3.0403768   -3.2141347   -2.8666189
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -2.6295778   -2.8131798   -2.4459758
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -2.3508417   -2.4213916   -2.2802917
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -2.3724852   -2.5465870   -2.1983834
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.7625486   -2.0935238   -1.4315734
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.8546314   -2.1660500   -1.5432129
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.5566148   -2.0667236   -1.0465061


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1980333   -1.3314438   -1.0646229
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0543249   -0.1697391    0.2783889
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1778882   -1.3228601   -1.0329163
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7277004   -0.9122329   -0.5431679
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3317470   -1.5395361   -1.1239579
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9078464   -1.1231179   -0.6925750
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9893377   -2.1309533   -1.8477222
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1366034   -0.0878045    0.3610113
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8803727   -2.0319827   -1.7287626
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.5368987   -1.7259939   -1.3478035
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7017511   -1.8926845   -1.5108176
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4819850   -1.6947019   -1.2692681
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.7648500   -2.9586982   -2.5710018
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9828012   -3.0482527   -2.9173497
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4204386   -2.4659064   -2.3749708
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.7832432   -1.9856110   -1.5808754


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.2588106   -0.7086800    0.1910588
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0675699   -0.4522453    0.3171055
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4326377   -1.0540883    0.1888129
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.7099813   -1.1743580   -0.2456046
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
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0654951   -0.0297430    0.1607332
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0398768   -0.1028329    0.1825866
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.2375937   -0.4887246    0.0135372
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1876957   -0.4869616    0.1115702
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0899788   -0.2361498    0.0561921
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.2124643   -0.4630422    0.0381136
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.2572286   -1.5782135   -0.9362437
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.2119706   -0.5744288    0.1504875
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3351640   -1.0134712    0.3431431
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0317065   -0.5064985    0.4430854
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0516929   -0.4822550    0.5856407
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.4852674   -0.0068222    0.9773570
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0097353   -0.7497570    0.7302864
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.3192126   -1.0369973    0.3985720
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.2311267   -0.6978748    0.2356214
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4941028   -0.9997993    0.0115936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367187   -0.4472439    0.7206814
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2250221   -0.8774479    0.4274037
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0109456   -0.4027849    0.4246761
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2913281   -0.8060930    0.2234369
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0409977   -0.7538781    0.6718827
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0545320   -0.1645787    0.0555146
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0497871   -0.1926484    0.0930741
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1427673   -0.3600235    0.0744889
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2484041   -0.5040180    0.0072099
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1075990   -0.0726563    0.2878542
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0025040   -0.2569665    0.2619744
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1355928   -0.5364018    0.2652162
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3911575   -0.8194018    0.0370869
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.0117180   -1.3532745   -0.6701615
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1615856   -0.5864398    0.2632686
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3653022   -0.9558343    0.2252299
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2393484   -0.7726882    0.2939914
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1123887   -0.3771863    0.6019637
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.1987003   -0.2504993    0.6478998
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1300285   -0.8167636    0.5567067
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.3504098   -0.8425767    0.1417572
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0993135   -0.3957417    0.5943687
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0735922   -0.7068416    0.5596571
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4051855   -0.9957033    0.1853323
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2252224   -0.6727568    0.2223121
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0029141   -0.4653745    0.4712028
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0770437   -0.5298818    0.3757944
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0399787   -0.2258789    0.1459215
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1850018   -0.4222487    0.0522450
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.2787362    0.0819300    0.4755423
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.2570926    0.0039569    0.5102283
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0920828   -0.5497007    0.3655350
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.2059338   -0.4029929    0.8148604


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0564441   -0.2368696    0.1239813
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.4150017   -0.7199184   -0.1100849
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0747236   -0.0224695    0.1719167
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1802773   -0.3678562    0.0073017
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0694942   -0.2017747    0.0627864
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1866503   -0.3899155    0.0166148
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1269387   -0.4062371    0.1523597
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2775600   -0.1208870    0.6760070
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2153428   -0.8402533    0.4095677
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2698259   -0.5151080   -0.0245437
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0399117   -0.2424200    0.1625966
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1014991   -0.5880502    0.3850520
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0488365   -0.1493691    0.0516961
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1241193   -0.2879607    0.0397221
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0733145   -0.0896527    0.2362816
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1605460   -0.4289645    0.1078724
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1304498   -0.3370210    0.0761214
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1738009   -0.4675273    0.1199255
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1391628   -0.1884488    0.4667744
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2908637   -0.6778850    0.0961576
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0448904   -0.3586055    0.2688247
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1384807   -0.3440900    0.0671286
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0124773   -0.4337379    0.4586924
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1274262   -0.2806241    0.0257716
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.2091392    0.0292122    0.3890662
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0206946   -0.3243211    0.2829318
