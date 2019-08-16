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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           65     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        24      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38           26     128
Birth       ki0047075b-MAL-ED          INDIA                          <32            43     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        59     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        37      59
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      78
Birth       ki0047075b-MAL-ED          PERU                           <32            26      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        25      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           135     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        28     166
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13333
Birth       ki1119695-PROBIT           BELARUS                        <32         10676   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2051   13333
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
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15179
6 months    ki1119695-PROBIT           BELARUS                        <32         12174   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15179
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
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3848
24 months   ki1119695-PROBIT           BELARUS                        <32          3094    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3848
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

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

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
![](/tmp/9875888d-62ef-4c79-b4f7-9e49e8b0d901/75c7acfd-cc7e-4482-89b6-d9f653c93d6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9875888d-62ef-4c79-b4f7-9e49e8b0d901/75c7acfd-cc7e-4482-89b6-d9f653c93d6b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9875888d-62ef-4c79-b4f7-9e49e8b0d901/75c7acfd-cc7e-4482-89b6-d9f653c93d6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.0098393   -1.3111788   -0.7084997
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.4587716   -1.7555938   -1.1619495
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8467000   -1.1970690   -0.4963310
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2026166   -0.3388246    0.7440579
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.7148013    0.3364154    1.0931872
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.6248978    0.1620915    1.0877041
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.9084306   -1.3431480   -0.4737132
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.2729942   -1.5509958   -0.9949926
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.1508010   -1.3905440   -0.9110580
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.7415385   -1.1600111   -0.3230658
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.1600000   -1.7640146   -0.5559854
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.6481081   -0.9759608   -0.3202554
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2684619   -0.0163641    0.5532879
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.2061904   -0.6213837    0.2090030
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0227231   -0.3913489    0.3459027
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2282692   -0.0472275    0.5037660
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.2037500   -1.0516357    0.6441357
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0233333   -0.7676448    0.7209781
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.8760000    0.3647303    1.3872697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 1.0650000    0.2867134    1.8432866
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6194444    0.0212639    1.2176250
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.9442806   -1.0917421   -0.7968191
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                -1.1468694   -1.3563637   -0.9373752
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                -1.0857021   -1.3008814   -0.8705227
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.1694274   -1.4377480   -0.9011067
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.2196612   -1.3827445   -1.0565779
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.0032795   -1.2895127   -0.7170463
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.5644323   -0.7904729   -0.3383918
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.7529387   -0.8183205   -0.6875569
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.6984026   -0.8882878   -0.5085174
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.3540934   -0.5984457   -0.1097411
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.1633086   -0.0368334    0.3634505
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.2594069   -0.6788201    0.1600063
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 1.0407358    0.5278392    1.5536325
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 1.0100825    0.3814005    1.6387646
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.7363911    0.3168419    1.1559403
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7348444   -1.2184636   -0.2512251
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.6690374   -0.9762138   -0.3618610
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.8065130   -1.0276311   -0.5853949
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0036395   -0.7341721    0.7268930
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.5004951   -0.7933606   -0.2076297
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.1934374   -0.1183906    0.5052655
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.9310650    0.6066414    1.2554885
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.7448855    0.4500465    1.0397245
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.4560698    0.9163846    1.9957550
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5540104    0.2423876    0.8656332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3786845    0.0732275    0.6841415
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.8866525    0.3333154    1.4399896
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6664996    0.3259415    1.0070577
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6730853   -0.8628448   -0.4833257
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6635909   -0.7902500   -0.5369318
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5975538   -0.9974478   -0.1976597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.4779164   -1.9754355   -0.9803974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -1.0535626   -1.2275945   -0.8795308
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6890929   -1.2043342   -0.1738516
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.6795125    0.6230547    0.7359703
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5776168    0.5141875    0.6410460
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5595546    0.4465507    0.6725585
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1272364   -0.0629635    0.3174363
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.3570033    0.2124056    0.5016011
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.0735308   -0.1524178    0.2994793
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1781044   -0.3576632    0.0014544
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2676186   -0.3359479   -0.1992893
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.2047162   -0.3705427   -0.0388897
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.6886962    0.3361226    1.0412699
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.5152559    0.2137684    0.8167435
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.2984645   -0.0255476    0.6224765
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8963552   -1.1330912   -0.6596193
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.8799333   -1.0798478   -0.6800188
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8749050   -1.2199166   -0.5298935
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.4216743   -0.1066928    0.9500415
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.5837145   -0.2165232    1.3839522
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1763151   -0.3982554    0.7508856
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.6939822   -1.0268308   -0.3611335
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.9355541   -1.1587414   -0.7123669
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.8872130   -1.1122148   -0.6622112
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1381959   -0.6301479    0.3537562
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.2777149   -0.8147402    0.2593104
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2873084   -0.5332336   -0.0413833
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.3525302    0.0479593    0.6571012
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0727437   -0.3260896    0.1806021
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.2696749   -0.2078925    0.7472422
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4608462    0.2091394    0.7125530
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5500000   -0.0688276    1.1688276
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3771875   -0.0538993    0.8082743
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3449706    0.0777761    0.6121650
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0708182   -0.6745982    0.5329617
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0821508   -0.3620182    0.1977166
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.8657108    0.6882480    1.0431737
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6900944    0.5748783    0.8053104
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6398711    0.5078141    0.7719281
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2538399   -0.3968751   -0.1108047
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.1827976   -0.2800668   -0.0855285
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.2778908   -0.4336288   -0.1221528
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6607523   -0.8041227   -0.5173818
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5645721   -0.6194923   -0.5096520
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.5599851   -0.7218728   -0.3980975
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1458921   -0.3145725    0.6063568
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.4089870   -0.7181783   -0.0997958
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.3772862   -0.9242323    0.1696598


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0282143   -1.1991720   -0.8572566
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4923077    0.1981785    0.7864369
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1116406   -1.2776411   -0.9456401
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7467797   -0.9945570   -0.4990023
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0162821   -0.2170871    0.1845230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.1318667   -0.1289649    0.3926982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7968182    0.4398380    1.1537983
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1410673   -1.3516550   -0.9304795
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5783069    0.5185614    0.6380524
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6846323    0.5733690    0.7958955
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.1982432   -0.4246666    0.0281801


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.4489323   -0.8743027   -0.0235620
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.1631393   -0.3001409    0.6264195
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.5121847   -0.1126245    1.1369938
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.4222812   -0.3015722    1.1461346
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.3645636   -0.8818730    0.1527458
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2423704   -0.7420063    0.2572656
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.4184615   -1.1532764    0.3163534
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0934304   -0.4381773    0.6250380
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4746523   -0.9835656    0.0342611
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2911850   -0.7529754    0.1706054
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.4320192   -1.3235396    0.4595011
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2516026   -1.0452637    0.5420586
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1890000   -0.7421964    1.1201964
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2565556   -1.0434588    0.5303477
Birth       ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.2025888   -0.3384861   -0.0666915
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1414215   -0.2678522   -0.0149907
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0502338   -0.3643967    0.2639290
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.1661478   -0.2256017    0.5578974
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1885064   -0.4239090    0.0468961
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.1339703   -0.4293435    0.1614029
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.5174020    0.1997890    0.8350150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0946865   -0.3882759    0.5776489
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0306533   -0.8450796    0.7837731
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.3043448   -0.9739299    0.3652404
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0658070   -0.5069137    0.6385277
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0716687   -0.6028189    0.4594816
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.4968556   -1.3106639    0.3169527
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.1970769   -0.5933127    0.9874666
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1861794   -0.6217485    0.2493896
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.5250048   -0.1047680    1.1547777
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2467882   -1.1712264    0.6776500
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0761979   -0.7499466    0.5975508
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.5079680   -0.1291821    1.1451182
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2878151   -0.1706284    0.7462586
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0094944   -0.1658627    0.1848515
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0755315   -0.2572137    0.4082768
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.4243538   -0.1029669    0.9516746
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.7888235    0.0720390    1.5056080
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1018957   -0.1626936   -0.0410978
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1199579   -0.2370854   -0.0028303
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.2297669   -0.0086257    0.4681595
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0537057   -0.3490435    0.2416321
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0895142   -0.2817055    0.1026771
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0266118   -0.2710229    0.2177993
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1734403   -0.6402889    0.2934083
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3902318   -0.8773910    0.0969275
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0164220   -0.2941078    0.3269517
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0214502   -0.3965024    0.4394029
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1620401   -0.8031716    1.1272518
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2453592   -1.0266413    0.5359229
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2415720   -0.6439120    0.1607681
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1932308   -0.5969521    0.2104904
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1395190   -0.8744024    0.5953644
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1491126   -0.7033179    0.4050928
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4252739   -0.8231087   -0.0274392
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0828554   -0.6460691    0.4803584
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0891538   -0.5789059    0.7572136
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0836587   -0.5828501    0.4155328
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4157888   -1.0757133    0.2441357
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4271214   -0.8163368   -0.0379059
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1756165   -0.3485601   -0.0026729
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.2258398   -0.4120697   -0.0396098
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0710422   -0.1019972    0.2440817
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0240509   -0.2355583    0.1874565
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0961801   -0.0574699    0.2498302
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.1007671   -0.1154247    0.3169589
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5548792   -1.1081323   -0.0016260
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.5231784   -1.2411505    0.1947937


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0183750   -0.2564460    0.2196960
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2896911   -0.1365455    0.7159276
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2032100   -0.6089091    0.2024891
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0052412   -0.4044175    0.3939351
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2847439   -0.5522054   -0.0172825
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0964026   -0.2930893    0.1002842
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0791818   -0.4680239    0.3096603
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1967867   -0.3248529   -0.0687205
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1113865   -0.1332781    0.3560512
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1665437   -0.3878799    0.0547925
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1563101   -0.0394357    0.3520559
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1013476   -0.4923037    0.2896084
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0141611   -0.4468238    0.4751461
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.1814665   -0.4691912    0.8321243
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0829712   -0.2121475    0.3780899
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0386546   -0.2035480    0.1262388
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1247655   -0.0988122    0.3483432
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0089793   -0.1479384    0.1658971
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.4657585   -0.0228282    0.9543453
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1012056   -0.1562863   -0.0461249
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0653550   -0.1112305    0.2419404
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1096988   -0.2848299    0.0654323
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1828472   -0.5021171    0.1364227
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0101963   -0.1804936    0.2008862
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1224396   -0.3215653    0.5664445
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2037197   -0.5219400    0.1145006
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1456649   -0.5825938    0.2912640
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2321505   -0.5175951    0.0532942
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0070259   -0.1244623    0.1104104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2683206   -0.4686835   -0.0679576
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1810786   -0.3424848   -0.0196724
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0222454   -0.1563993    0.1119085
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0519938   -0.0889817    0.1929694
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.3441354   -0.7304021    0.0421314
