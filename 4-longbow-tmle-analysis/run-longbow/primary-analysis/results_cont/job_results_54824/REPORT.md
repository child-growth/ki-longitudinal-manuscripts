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

agecat      studyid                    country                        fage       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           61     128  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            23     128  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        44     128  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            5      16  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      16  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        10      16  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      25  whz              
Birth       ki0047075b-MAL-ED          INDIA                          <32             8      25  whz              
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        10      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9  whz              
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      67  whz              
Birth       ki0047075b-MAL-ED          PERU                           <32            21      67  whz              
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        23      67  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           16      30  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      30  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      30  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           34    1101  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           923    1101  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1101  whz              
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13339  whz              
Birth       ki1119695-PROBIT           BELARUS                        <32         10681   13339  whz              
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2052   13339  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83  whz              
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83  whz              
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15180  whz              
6 months    ki1119695-PROBIT           BELARUS                        <32         12175   15180  whz              
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15180  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79  whz              
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79  whz              
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3849  whz              
24 months   ki1119695-PROBIT           BELARUS                        <32          3095    3849  whz              
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3849  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74  whz              


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
![](/tmp/c1fcc2ca-f612-46ee-88f0-041ac281314c/3f637546-c6e7-4b65-a71c-c2ba83c3ee58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c1fcc2ca-f612-46ee-88f0-041ac281314c/3f637546-c6e7-4b65-a71c-c2ba83c3ee58/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c1fcc2ca-f612-46ee-88f0-041ac281314c/3f637546-c6e7-4b65-a71c-c2ba83c3ee58/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.0492623   -1.3741310   -0.7243937
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.0410840   -2.3779459   -1.7042221
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.7550411   -1.1852156   -0.3248665
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.4037212    0.0812893    0.7261532
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1180475   -0.5443103    0.3082153
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0258964   -0.4534621    0.4016693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.5264390   -0.7893166   -0.2635614
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.5527289   -0.7163628   -0.3890950
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5932451   -1.2258433    0.0393531
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.9445945   -1.0835638   -0.8056251
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                -1.1464467   -1.3553340   -0.9375594
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                -1.0946851   -1.3124145   -0.8769556
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.1397321   -1.3986432   -0.8808209
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.1881327   -1.3544469   -1.0218185
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.0130766   -1.2984873   -0.7276660
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.5884527   -0.8047431   -0.3721623
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.7547576   -0.8225690   -0.6869461
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.7112259   -0.8946586   -0.5277931
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.3195750   -0.5692847   -0.0698654
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0227152   -0.2228823    0.1774518
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.1715853   -0.5702178    0.2270472
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.9514021    0.4439097    1.4588945
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.9008661    0.2727334    1.5289988
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.6740423    0.2469812    1.1011034
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.6933390   -1.1251175   -0.2615605
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.6538515   -0.9825571   -0.3251460
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.8411249   -1.0655104   -0.6167393
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0333154   -0.9036672    0.8370363
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.8524468   -1.1746045   -0.5302890
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.1900825   -0.0982353    0.4784003
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.8770248    0.5696493    1.1844002
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.7130196    0.4000992    1.0259400
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.5172575    1.0047247    2.0297903
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.4002576    0.0916517    0.7088636
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7928337    0.2451233    1.3405441
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6034904    0.2580965    0.9488842
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6730853   -0.8628448   -0.4833257
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6635909   -0.7902500   -0.5369318
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.5975538   -0.9974478   -0.1976597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.5718129   -2.1792842   -0.9643416
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -1.1103318   -1.2986237   -0.9220400
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6615758   -1.1316531   -0.1914986
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.6853933    0.6314759    0.7393106
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5784606    0.5143576    0.6425637
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5577907    0.4445734    0.6710079
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1097642   -0.0981154    0.3176439
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.2586631    0.1039903    0.4133359
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1384697   -0.0658203    0.3427597
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1387403   -0.3044102    0.0269295
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2706777   -0.3406816   -0.2006738
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.2122486   -0.3793531   -0.0451442
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.5097012    0.1533182    0.8660842
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.5308701    0.2345642    0.8271760
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.4580708    0.1348161    0.7813255
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8822974   -1.1295976   -0.6349972
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.4427057   -0.6465232   -0.2388882
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8465170   -1.2422981   -0.4507359
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.5896025    0.0581423    1.1210627
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.6649726   -0.1418277    1.4717728
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.2327222   -0.3534871    0.8189316
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7211442   -1.0649822   -0.3773062
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.9720572   -1.1871427   -0.7569716
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9036566   -1.1036695   -0.7036438
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1318256   -0.5903644    0.3267132
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0585298   -0.6362461    0.5191865
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2719490   -0.5181958   -0.0257021
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.4285753    0.1258841    0.7312666
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0138344   -0.2505804    0.2229116
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.3049814   -0.1753045    0.7852673
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3036925    0.0340757    0.5733093
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.2457042   -0.8527871    0.3613787
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1936701   -0.4692567    0.0819165
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.8461150    0.6760911    1.0161390
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6917606    0.5776855    0.8058356
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6558509    0.5117617    0.7999400
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2816697   -0.4159951   -0.1473442
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.2434946   -0.3364784   -0.1505108
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.3177657   -0.4834394   -0.1520919
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6179056   -0.7650851   -0.4707261
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5700501   -0.6267237   -0.5133764
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.6093290   -0.7808614   -0.4377966
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1917932   -0.2529489    0.6365354
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.3684529   -0.6853693   -0.0515364
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.2086854   -0.6862061    0.2688353


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.9918216   -1.4638130   -0.5198303
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.2942212   -0.2454152    0.8338577
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.5217688   -1.0610763    0.0175388
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4296176   -0.9554586    0.0962234
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
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.2018522   -0.3370931   -0.0666114
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1500906   -0.2822554   -0.0179258
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0484007   -0.3564357    0.2596344
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.1266554   -0.2582629    0.5115737
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1663048   -0.3930651    0.0604555
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.1227731   -0.4065195    0.1609732
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.2968598   -0.0243015    0.6180211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.1479898   -0.3214268    0.6174064
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0505360   -0.8580121    0.7569401
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2773598   -0.9471045    0.3923850
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0394875   -0.5014126    0.5803875
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1477859   -0.6326553    0.3370836
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.8191314   -1.7882036    0.1499409
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.2233979   -0.6906922    1.1374881
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1640052   -0.5975070    0.2694966
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.6402327    0.0476018    1.2328637
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3925761   -0.2361231    1.0212753
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2032327   -0.2620671    0.6685326
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0094944   -0.1658627    0.1848515
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0755315   -0.2572137    0.4082768
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.4614810   -0.1759163    1.0988784
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.9102371    0.1405573    1.6799168
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1069326   -0.1673776   -0.0464877
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1276026   -0.2422870   -0.0129183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1488989   -0.1100985    0.4078963
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0287054   -0.2624674    0.3198783
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1319374   -0.3117520    0.0478773
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0735083   -0.3086699    0.1616533
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0211689   -0.4436821    0.4860199
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0516304   -0.5383024    0.4350416
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.4395917    0.1167125    0.7624708
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0357804   -0.4358658    0.5074266
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0753701   -0.8912516    1.0419917
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.3568803   -1.1529792    0.4392187
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2509130   -0.6560489    0.1542229
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1825124   -0.5806211    0.2155962
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0732958   -0.6654325    0.8120242
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1401233   -0.6668230    0.3865764
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4424098   -0.8283012   -0.0565183
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1235939   -0.6845339    0.4373461
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.5493967   -1.2162876    0.1174941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4973627   -0.8857963   -0.1089290
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1543545   -0.3259368    0.0172279
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1902642   -0.3790935   -0.0014348
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0381751   -0.1252303    0.2015804
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0360960   -0.2494633    0.1772713
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0478555   -0.1099879    0.2056989
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0085766   -0.2174533    0.2346065
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5602461   -1.1041826   -0.0163096
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.4004786   -1.0593440    0.2583867


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0117623   -0.2457686    0.2692932
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3507362   -0.6587144   -0.0427579
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1421078   -0.3467024    0.0624868
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1949872   -0.3228570   -0.0671173
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0816912   -0.1533051    0.3166876
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1425233   -0.3540398    0.0689932
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1245639   -0.0732612    0.3223891
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0148620   -0.4018991    0.3721751
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0358898   -0.4447031    0.3729235
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2082943   -0.5849864    1.0015751
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1411881   -0.1446652    0.4270413
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1268924   -0.0942954    0.3480802
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0089793   -0.1479384    0.1658971
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.5596550   -0.0361268    1.1554368
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1067951   -0.1616066   -0.0519837
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0828272   -0.1114366    0.2770909
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1490629   -0.3107677    0.0126419
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0036635   -0.3201771    0.3128502
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0021728   -0.2095943    0.2052487
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0447924   -0.4864600    0.3968753
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1756570   -0.5042500    0.1529359
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1476048   -0.5531679    0.2579583
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3087546   -0.6043407   -0.0131686
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2270425   -0.4284128   -0.0256722
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1603616   -0.3153899   -0.0053333
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0055844   -0.1202030    0.1313718
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0091472   -0.1356077    0.1539021
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.3897662   -0.7633683   -0.0161641
