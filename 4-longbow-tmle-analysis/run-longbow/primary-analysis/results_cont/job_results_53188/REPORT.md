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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           61     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            23     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        44     128
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            5      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        10      16
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      25
Birth       ki0047075b-MAL-ED          INDIA                          <32             8      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        10      25
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      67
Birth       ki0047075b-MAL-ED          PERU                           <32            21      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        23      67
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           16      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      30
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           34    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           923    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1101
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13339
Birth       ki1119695-PROBIT           BELARUS                        <32         10681   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2052   13339
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15180
6 months    ki1119695-PROBIT           BELARUS                        <32         12175   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15180
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
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
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3849
24 months   ki1119695-PROBIT           BELARUS                        <32          3095    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3849
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
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
![](/tmp/512630f5-66be-419d-87d8-e656a03502ff/a7871e47-7587-46ae-a85c-322d66e55503/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/512630f5-66be-419d-87d8-e656a03502ff/a7871e47-7587-46ae-a85c-322d66e55503/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/512630f5-66be-419d-87d8-e656a03502ff/a7871e47-7587-46ae-a85c-322d66e55503/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9887782   -1.3054455   -0.6721110
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.8352316   -2.1675041   -1.5029592
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8215762   -1.1943134   -0.4488390
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.3901094    0.0551023    0.7251165
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1622290   -0.5624735    0.2380155
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0681779   -0.4968938    0.3605381
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.5264390   -0.7893166   -0.2635614
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.5527289   -0.7163628   -0.3890950
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5932451   -1.2258433    0.0393531
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.9530008   -1.0915983   -0.8144034
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                -1.1485742   -1.3569846   -0.9401637
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                -1.0826810   -1.2944425   -0.8709194
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.0793004   -1.3439380   -0.8146628
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.2105037   -1.3667824   -1.0542250
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.0192333   -1.3025431   -0.7359235
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6020414   -0.8151161   -0.3889668
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.7623357   -0.8292139   -0.6954574
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.6959203   -0.8787576   -0.5130831
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.3067993   -0.5616002   -0.0519984
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.2496256    0.0336728    0.4655784
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.2408448   -0.6460277    0.1643382
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 1.1681664    0.6680650    1.6682679
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 1.1608233    0.5411367    1.7805098
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.8820100    0.4586134    1.3054067
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7883712   -1.2216140   -0.3551284
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.6014757   -0.9335760   -0.2693754
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.7744643   -1.0182905   -0.5306382
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0408662   -0.7802753    0.6985428
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.4012236   -0.6864556   -0.1159917
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.1961282   -0.0997759    0.4920322
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.8575935    0.5216994    1.1934877
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.7552974    0.4388307    1.0717642
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.3892746    0.8618577    1.9166916
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.4174312    0.1070283    0.7278340
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.8196431    0.2561773    1.3831088
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6462051    0.3019678    0.9904424
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6730853   -0.8628448   -0.4833257
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6635909   -0.7902500   -0.5369318
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5975538   -0.9974478   -0.1976597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.3894738   -1.9038579   -0.8750897
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -1.0351577   -1.2187523   -0.8515631
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6443412   -1.1643601   -0.1243222
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.7010331    0.6446027    0.7574635
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5793102    0.5154110    0.6432094
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5635733    0.4505311    0.6766154
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1396216   -0.0551966    0.3344397
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.3246411    0.1597756    0.4895067
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.0926180   -0.1274336    0.3126696
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1716448   -0.3360834   -0.0072061
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2747399   -0.3442998   -0.2051800
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.2000768   -0.3750394   -0.0251142
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.5468112    0.1930800    0.9005425
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.4938985    0.1839658    0.8038311
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.5061044    0.1965406    0.8156681
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8518292   -1.1008562   -0.6028023
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.5172380   -0.7171592   -0.3173168
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8446838   -1.1907783   -0.4985893
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.4662469   -0.0715619    1.0040558
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.3624478   -0.4500309    1.1749266
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1911641   -0.3879583    0.7702864
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.6957780   -0.9878007   -0.4037553
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.9070627   -1.1330098   -0.6811156
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9207637   -1.1450759   -0.6964515
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0362991   -0.3882327    0.4608308
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.1816044   -0.6164118    0.2532031
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2362636   -0.4861966    0.0136695
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.5048952    0.2327624    0.7770280
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0305202   -0.2831743    0.2221339
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.3327936   -0.1919626    0.8575497
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3204774    0.0548287    0.5861261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1381300   -0.7671777    0.4909176
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1219826   -0.3963883    0.1524231
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.8726229    0.6987920    1.0464538
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6940256    0.5772364    0.8108149
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6454022    0.5122453    0.7785590
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2914737   -0.4636502   -0.1192973
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.2739302   -0.3636867   -0.1841737
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.3043880   -0.4692015   -0.1395745
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6575075   -0.8044114   -0.5106035
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5607813   -0.6141348   -0.5074279
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.5665590   -0.7355930   -0.3975250
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.2255230   -0.2407368    0.6917829
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.3498856   -0.6651525   -0.0346187
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.1293076   -0.6055158    0.3469006


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0375000   -1.2165024   -0.8584976
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9464000   -1.3554144   -0.5373856
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0529851   -0.1628445    0.2688147
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0073333   -0.5181900    0.5035233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7115909    0.4034609    1.0197209
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1395817   -1.3497976   -0.9293658
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1950111   -0.3575506   -0.0324716
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9365401    0.6541549    1.2189253
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7292288   -0.8803893   -0.5780683
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1749789   -0.0644624    0.4144202
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0182129    0.7827641    1.2536616
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5158052    0.2517895    0.7798210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5271500    0.3177522    0.7365478
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5785982    0.5189015    0.6382948
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.5060377    0.3131397    0.6989358
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8844702   -1.0263143   -0.7426261
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.5448101    0.2082313    0.8813890
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8968012   -1.0287307   -0.7648718
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.2794304   -0.4767398   -0.0821210
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1198207   -0.0845120    0.3241534
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4414045    0.2336389    0.6491701
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6857534    0.5745271    0.7969798
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.1979730   -0.4244675    0.0285215


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.8464534   -1.3092348   -0.3836720
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.1672020   -0.3246346    0.6590387
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.5523384   -1.0756646   -0.0290122
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4582872   -0.9975301    0.0809556
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.6662500   -2.0685341    0.7360341
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3418056   -1.5342979    0.8506868
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2716340   -1.1241867    0.5809187
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0189216   -0.6785984    0.7164416
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0262900   -0.2486392    0.1960593
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0668061   -0.5391138    0.4055016
Birth       ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1955733   -0.3279865   -0.0631602
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1296801   -0.2556530   -0.0037072
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1312033   -0.4383592    0.1759525
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0600671   -0.3269866    0.4471209
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1602943   -0.3837787    0.0631901
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0938789   -0.3749078    0.1871500
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.5564249    0.2224338    0.8904160
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0659546   -0.4111988    0.5431080
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0073432   -0.8091640    0.7944776
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2861564   -0.9514858    0.3791729
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1868955   -0.3563721    0.7301631
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0139069   -0.4817277    0.5095414
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.3603574   -1.1774369    0.4567221
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.2369944   -0.5567992    1.0307880
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1022961   -0.5619112    0.3573189
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.5316811   -0.0926683    1.1560305
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.4022119   -0.2428998    1.0473236
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2287739   -0.2363985    0.6939464
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0094944   -0.1658627    0.1848515
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0755315   -0.2572137    0.4082768
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.3543161   -0.1949786    0.9036108
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.7451326    0.0123568    1.4779084
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1217229   -0.1834866   -0.0599592
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1374598   -0.2527778   -0.0221418
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1850196   -0.0694823    0.4395215
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0470035   -0.3409485    0.2469414
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1030951   -0.2815414    0.0753512
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0284320   -0.2687335    0.2118695
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0529128   -0.5258812    0.4200557
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0407069   -0.5184162    0.4370025
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.3345913    0.0128392    0.6563434
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0071455   -0.4201849    0.4344759
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1037991   -1.0963353    0.8887371
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2750829   -1.0665895    0.5164238
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2112847   -0.5803597    0.1577903
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2249857   -0.5921152    0.1421438
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.2179034   -0.8368946    0.4010877
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.2725626   -0.7639522    0.2188270
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.5354154   -0.9115254   -0.1593054
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1721016   -0.7575118    0.4133086
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4586074   -1.1420273    0.2248125
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4424600   -0.8266983   -0.0582217
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1785973   -0.3510367   -0.0061578
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.2272207   -0.4054765   -0.0489650
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0175435   -0.1766321    0.2117192
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0129143   -0.2512564    0.2254278
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0967261   -0.0596678    0.2531201
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0909485   -0.1329001    0.3147970
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5754086   -1.1426797   -0.0081375
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3548306   -1.0232105    0.3135493


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0487218   -0.2974042    0.1999607
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3371243   -0.6541289   -0.0201198
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1421078   -0.3467024    0.0624868
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1865808   -0.3130521   -0.0601095
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0212596   -0.2204823    0.2630015
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1289346   -0.3374465    0.0795772
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1117882   -0.0895723    0.3131487
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.2316264   -0.6176180    0.1543653
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0591424   -0.3559017    0.4741865
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2158451   -0.4457891    0.8774794
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1606193   -0.1497807    0.4710193
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1097188   -0.1124659    0.3319036
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0089793   -0.1479384    0.1658971
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.3773159   -0.1275842    0.8822161
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1224349   -0.1778904   -0.0669794
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0529698   -0.1285377    0.2344774
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1161584   -0.2765577    0.0442408
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0407735   -0.3592566    0.2777097
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0326409   -0.2388714    0.1735895
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0785632   -0.3763499    0.5334763
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2010233   -0.4817132    0.0796667
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.3157294   -0.7010495    0.0695906
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3850745   -0.6629145   -0.1072346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2438274   -0.4436434   -0.0440113
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1868695   -0.3441749   -0.0295640
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0153885   -0.1474659    0.1782428
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0487491   -0.0955870    0.1930851
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.4234960   -0.8175351   -0.0294569
