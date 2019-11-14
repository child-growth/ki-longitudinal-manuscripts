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
![](/tmp/936b0606-4e21-4ac6-886a-7b5b6d41e223/d37b4dc9-306c-4449-a2bc-2612659797d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/936b0606-4e21-4ac6-886a-7b5b6d41e223/d37b4dc9-306c-4449-a2bc-2612659797d0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/936b0606-4e21-4ac6-886a-7b5b6d41e223/d37b4dc9-306c-4449-a2bc-2612659797d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9984247   -1.2964530   -0.7003964
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.1329100   -2.4419294   -1.8238907
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8162439   -1.1942699   -0.4382180
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.3722347   -0.0456390    0.7901084
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1087263   -0.4215680    0.2041155
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0948782   -0.5703309    0.3805745
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.5264390   -0.7893166   -0.2635614
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.5527289   -0.7163628   -0.3890950
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5932451   -1.2258433    0.0393531
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.9345985   -1.0723351   -0.7968620
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                -1.1437493   -1.3535906   -0.9339081
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                -1.0855498   -1.2990864   -0.8720133
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.1235375   -1.3712794   -0.8757957
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.2270537   -1.3892287   -1.0648787
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.9881271   -1.2823352   -0.6939190
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6140180   -0.8355242   -0.3925117
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.7549767   -0.8214679   -0.6884856
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.6907801   -0.8706290   -0.5109311
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.3737349   -0.6110769   -0.1363928
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.0446541   -0.1265525    0.2158608
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.2507744   -0.6760201    0.1744713
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 1.0214987    0.5090726    1.5339248
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.9566730    0.3053634    1.6079827
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.7239832    0.3047961    1.1431704
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7166114   -1.1561300   -0.2770927
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.6695642   -0.9623250   -0.3768034
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.7892385   -1.0156915   -0.5627856
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0106715   -0.7848455    0.7635025
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.7050714   -1.0150594   -0.3950834
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.1874554   -0.1223344    0.4972452
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.8698975    0.5183080    1.2214870
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.8052634    0.5083749    1.1021520
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.3456071    0.8342739    1.8569402
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5540104    0.2423876    0.8656332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3915909    0.0830851    0.7000968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7252797    0.1508527    1.2997068
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.5910583    0.2457765    0.9363401
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6730853   -0.8628448   -0.4833257
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6635909   -0.7902500   -0.5369318
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5975538   -0.9974478   -0.1976597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.5684807   -2.2114466   -0.9255148
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -1.0639327   -1.2481040   -0.8797613
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6551211   -1.1202883   -0.1899540
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.6892479    0.6331835    0.7453123
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5806629    0.5166553    0.6446705
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5624838    0.4519634    0.6730042
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1221105   -0.0721084    0.3163294
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.3082090    0.1631477    0.4532703
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1141152   -0.1215592    0.3497896
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1818278   -0.3427940   -0.0208616
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2615745   -0.3327984   -0.1903505
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.2315661   -0.3943005   -0.0688316
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.5449606    0.1850303    0.9048909
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.5160943    0.2179371    0.8142515
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.3366227    0.0330323    0.6402131
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8941361   -1.1545202   -0.6337520
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.5426932   -0.7618814   -0.3235049
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8032552   -1.1312434   -0.4752670
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.7747981    0.2663396    1.2832567
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 1.1199974    0.2958032    1.9441916
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.3616439   -0.2113086    0.9345963
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.6907863   -1.0674239   -0.3141486
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.9853157   -1.1970617   -0.7735697
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9541548   -1.1685330   -0.7397765
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1647406   -0.6089789    0.2794977
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.2850341   -0.7978583    0.2277901
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2611422   -0.5056213   -0.0166631
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2971902   -0.0374069    0.6317873
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0494842   -0.2856750    0.1867066
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.3263118   -0.1742607    0.8268842
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4608462    0.2091394    0.7125530
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5531250   -0.0682013    1.1744513
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3771875   -0.0538993    0.8082743
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3849287    0.1128740    0.6569834
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0361272   -0.6420525    0.5697980
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1112529   -0.3875894    0.1650837
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.9040181    0.7347305    1.0733056
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6949309    0.5783777    0.8114841
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6466537    0.5062706    0.7870367
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2756688   -0.4320590   -0.1192785
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.2395017   -0.3276770   -0.1513265
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.2730904   -0.4375185   -0.1086622
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6573490   -0.7989542   -0.5157438
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5738848   -0.6327750   -0.5149945
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.5914969   -0.7650030   -0.4179908
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.2118427   -0.2655572    0.6892427
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.3731093   -0.6881911   -0.0580276
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.2234995   -0.6981721    0.2511732


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0341406   -1.2130997   -0.8551816
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9464000   -1.3554144   -0.5373856
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0529851   -0.1628445    0.2688147
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0073333   -0.5181900    0.5035233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7115909    0.4034609    1.0197209
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1395817   -1.3497976   -0.9293658
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1955333   -0.3580029   -0.0330638
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7302484   -0.8815603   -0.5789365
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0206627    0.7854137    1.2559116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5271500    0.3177522    0.7365478
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5785982    0.5189015    0.6382948
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.5060377    0.3131397    0.6989358
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4541011    0.2467238    0.6614784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6857534    0.5745271    0.7969798
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.1979730   -0.4244675    0.0285215


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.1344853   -1.5659650   -0.7030056
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.1821808   -0.2991725    0.6635341
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4809610   -1.0081451    0.0462232
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4671129   -1.0982766    0.1640508
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
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.2091508   -0.3476799   -0.0706217
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1509513   -0.2832682   -0.0186344
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1035161   -0.3996620    0.1926298
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.1354105   -0.2481987    0.5190196
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1409588   -0.3723889    0.0904713
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0767621   -0.3623125    0.2087883
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.4183890    0.1236045    0.7131735
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.1229605   -0.3626024    0.6085233
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0648257   -0.8952078    0.7655565
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2975154   -0.9659826    0.3709517
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0470472   -0.4810020    0.5750964
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0726271   -0.5671828    0.4219285
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.6943999   -1.5669810    0.1781811
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.1981269   -0.6303472    1.0266010
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0646341   -0.5219112    0.3926430
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.4757095   -0.1404249    1.0918440
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2467882   -1.1712264    0.6776500
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0761979   -0.7499466    0.5975508
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3336888   -0.3196672    0.9870448
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1994674   -0.2650075    0.6639422
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0094944   -0.1658627    0.1848515
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0755315   -0.2572137    0.4082768
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.5045481   -0.1649763    1.1740724
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.9133596    0.1181628    1.7085563
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1085850   -0.1710784   -0.0460915
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1267641   -0.2376130   -0.0159152
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1860985   -0.0559016    0.4280987
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0079953   -0.3127113    0.2967207
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0797466   -0.2557842    0.0962909
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0497382   -0.2785673    0.1790908
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0288663   -0.4987538    0.4410212
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.2083379   -0.6856107    0.2689349
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.3514430    0.0097998    0.6930861
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0908809   -0.3289063    0.5106681
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.3451993   -0.6334504    1.3238491
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.4131543   -1.1832594    0.3569509
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2945294   -0.7256086    0.1365498
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2633685   -0.6963121    0.1695751
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1202935   -0.7999477    0.5593608
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0964016   -0.6061653    0.4133621
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.3466744   -0.7601683    0.0668194
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0291216   -0.5710764    0.6293195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0922788   -0.5780962    0.7626539
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0836587   -0.5828501    0.4155328
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4210559   -1.0837425    0.2416306
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4961816   -0.8877536   -0.1046095
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.2090872   -0.3767689   -0.0414055
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.2573644   -0.4440915   -0.0706373
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0361670   -0.1433760    0.2157101
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0025784   -0.2243522    0.2295090
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0834642   -0.0701035    0.2370319
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0658521   -0.1581637    0.2898679
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5849521   -1.1569999   -0.0129042
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.4353422   -1.1098244    0.2391399


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0357159   -0.2666534    0.1952217
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3192496   -0.7087644    0.0702651
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1421078   -0.3467024    0.0624868
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.2049831   -0.3365822   -0.0733841
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0654967   -0.1598745    0.2908680
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1169581   -0.3334608    0.0995446
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1782016   -0.0108425    0.3672456
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0821105   -0.4739551    0.3097341
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0136371   -0.4320149    0.4047408
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.1884985   -0.5086134    0.8856104
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1507651   -0.1684937    0.4700239
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0386546   -0.2035480    0.1262388
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1355591   -0.0858195    0.3569377
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0089793   -0.1479384    0.1658971
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.5563228   -0.0751092    1.1877548
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1106497   -0.1660172   -0.0552822
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0704809   -0.1099616    0.2509234
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1059754   -0.2630443    0.0510936
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0389228   -0.3609190    0.2830733
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0079772   -0.2095882    0.2255426
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.2306842   -0.6587759    0.1974075
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2069156   -0.5660158    0.1521846
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1191202   -0.5098551    0.2716148
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.1768105   -0.4913967    0.1377758
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0067450   -0.1242981    0.1108081
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.3082787   -0.5151128   -0.1014446
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.2182646   -0.3724475   -0.0640817
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0004165   -0.1469656    0.1461326
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0485906   -0.0907886    0.1879697
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.4098157   -0.8116049   -0.0080265
