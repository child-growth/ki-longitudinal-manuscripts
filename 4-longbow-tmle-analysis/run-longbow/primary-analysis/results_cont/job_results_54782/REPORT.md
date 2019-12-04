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

agecat      studyid                    country                        fage       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           63     133  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     133  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        45     133  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            6      18  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      18  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        11      18  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      27  haz              
Birth       ki0047075b-MAL-ED          INDIA                          <32             9      27  haz              
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        11      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9  haz              
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      69  haz              
Birth       ki0047075b-MAL-ED          PERU                           <32            22      69  haz              
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        24      69  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           17      31  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      31  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      31  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1249  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32          1045    1249  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1249  haz              
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13396  haz              
Birth       ki1119695-PROBIT           BELARUS                        <32         10729   13396  haz              
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2061   13396  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          245     823  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      <32           380     823  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       198     823  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          328    2944  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          2079    2944  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       537    2944  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83  haz              
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83  haz              
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1333  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1125    1333  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1333  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           39     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        77     380  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15183  haz              
6 months    ki1119695-PROBIT           BELARUS                        <32         12176   15183  haz              
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2306   15183  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          275     929  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     929  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     929  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          300    2624  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1829    2624  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2624  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79  haz              
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79  haz              
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=38          178    3909  haz              
24 months   ki1119695-PROBIT           BELARUS                        <32          3143    3909  haz              
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       588    3909  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1021  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      <32           491    1021  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       245    1021  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          270    2371  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1666    2371  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2371  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74  haz              


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
![](/tmp/73110bc5-9746-4adc-839e-9f259b170c44/f5f53ed8-0eb6-4108-99df-ff1f667428b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/73110bc5-9746-4adc-839e-9f259b170c44/f5f53ed8-0eb6-4108-99df-ff1f667428b6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/73110bc5-9746-4adc-839e-9f259b170c44/f5f53ed8-0eb6-4108-99df-ff1f667428b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9362245   -1.1729588   -0.6994902
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.2349733   -1.6169598   -0.8529869
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.0271520   -1.3243561   -0.7299480
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.5347681   -0.8708648   -0.1986715
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.9506208   -1.4855156   -0.4157261
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.1978780   -1.5072423   -0.8885137
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 1.2584683    1.1338541    1.3830825
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                 1.3237649    1.1684933    1.4790365
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                 1.2798371    1.0869827    1.4726914
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.2993331    0.0823561    0.5163101
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.0480966   -0.1181574    0.2143507
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1140646   -0.1189902    0.3471194
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.2043250   -0.3421133   -0.0665366
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2613329   -0.3197501   -0.2029157
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.3904114   -0.5824151   -0.1984077
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.0037986   -1.2414606   -0.7661367
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.1878718   -2.3573654   -2.0183782
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.2077297   -1.4948916   -0.9205679
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1795715   -0.1560253    0.5151684
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.2869973   -0.8327574    0.2587628
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1624396   -0.1926417    0.5175209
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.3692386   -1.8574160   -0.8810611
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.3902211   -1.6828844   -1.0975578
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9733329   -1.1885086   -0.7581572
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.4827025   -1.2463159    0.2809108
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.3660471   -0.6172910   -0.1148031
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.8696802   -1.1182482   -0.6211121
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.0496818   -1.2415916   -0.8577721
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -1.3845612   -1.8259872   -0.9431352
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.5143629   -2.0007137   -1.0280121
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367187   -1.0969700   -0.5764675
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4418091   -1.7316299   -1.1519883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6881314   -2.2763242   -1.0999385
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4320006   -1.7316782   -1.1323231
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.8100696   -2.3868366   -1.2333025
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -2.1066560   -2.2726580   -1.9406541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.7773521   -2.2178947   -1.3368095
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1852910    0.0789292    0.2916527
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.1118424    0.0168935    0.2067913
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.1077007   -0.0437275    0.2591288
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.7044429   -1.8966006   -1.5122851
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.8121658   -1.9287690   -1.6955625
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.9050878   -2.0894960   -1.7206796
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -1.2479839   -1.4109157   -1.0850520
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -1.1102605   -1.1796554   -1.0408656
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -1.2208496   -1.4323801   -1.0093190
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.4688923   -1.7504819   -1.1873026
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.5934453   -1.8953880   -1.2915027
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.8325990   -2.1506723   -1.5145258
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.8767381   -2.1391634   -1.6143128
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.8257173   -3.0250906   -2.6263441
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -2.0217721   -2.3354480   -1.7080962
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2968055   -0.0188119    0.6124229
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0298035   -0.5267058    0.5863127
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0470293   -0.4393360    0.5333945
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.9043605   -2.3169942   -1.4917267
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.9886877   -2.3028578   -1.6745175
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.8061916   -2.0709376   -1.5414456
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -1.3150306   -1.7700010   -0.8600603
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.4699291   -2.0066496   -0.9332086
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -1.6151313   -1.8391322   -1.3911305
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.6066423   -1.9236827   -1.2896020
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -1.6252136   -2.0072539   -1.2431733
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.8525213   -2.4020002   -1.3030424
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6218922   -2.8802346   -2.3635499
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -2.9579721   -3.4861995   -2.4297448
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8730671   -3.2398060   -2.5063282
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1528396   -0.4975481    0.1918690
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.1337351   -0.4486764    0.1812062
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.2370082   -0.4884849    0.0144686
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -2.8887849   -3.0431681   -2.7344017
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -2.9037392   -3.0053203   -2.8021581
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -3.0834678   -3.2656469   -2.9012886
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -2.6219915   -2.8335764   -2.4104066
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -2.3490657   -2.4194761   -2.2786553
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -2.3698000   -2.5472834   -2.1923166
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.7884367   -2.1196889   -1.4571845
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.8671178   -2.1762562   -1.5579793
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.5757885   -2.0829512   -1.0686259


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.2987488   -0.7471189    0.1496212
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0909275   -0.4676048    0.2857498
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4158527   -1.0466565    0.2149511
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.6631099   -1.1196929   -0.2065268
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
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0652966   -0.0337449    0.1643381
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0213688   -0.1256909    0.1684285
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.2512365   -0.5246802    0.0222072
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1852685   -0.5040258    0.1334888
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0570079   -0.2063408    0.0923249
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.1860864   -0.4223539    0.0501811
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.1840732   -1.4808124   -0.8873339
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.2039311   -0.5770812    0.1692190
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.4665688   -1.1084618    0.1753241
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0171319   -0.5050041    0.4707402
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0209825   -0.5907952    0.5488301
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.3959057   -0.1382407    0.9300520
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.1166555   -0.6864883    0.9197993
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.3869776   -1.1906591    0.4167038
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.3348793   -0.8123911    0.1426325
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.4646810   -0.9860756    0.0567136
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367187   -0.4472439    0.7206814
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2463223   -0.9036754    0.4110307
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0098084   -0.4177589    0.4373757
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2965865   -0.8950510    0.3018780
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0327174   -0.6930650    0.7584999
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0734486   -0.1850345    0.0381373
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0775903   -0.2290032    0.0738227
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1077229   -0.3323892    0.1169434
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2006449   -0.4673958    0.0661059
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1377233   -0.0390106    0.3144573
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0271343   -0.2399472    0.2942158
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1245531   -0.5386279    0.2895217
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3637068   -0.7885359    0.0611224
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.9489793   -1.2865650   -0.6113936
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1450340   -0.5510559    0.2609879
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2670020   -0.9026594    0.3686553
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2497762   -0.8290455    0.3294931
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0843272   -0.6027255    0.4340711
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0981688   -0.3916818    0.5880195
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1548985   -0.8588768    0.5490798
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.3001007   -0.8074296    0.2072282
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0185713   -0.5186981    0.4815556
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2458790   -0.8859011    0.3941431
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3360799   -0.9268552    0.2546954
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2511748   -0.7010125    0.1986628
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0191045   -0.4177176    0.4559266
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0841686   -0.5110754    0.3427382
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0149543   -0.1989158    0.1690072
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1946829   -0.4329702    0.0436044
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.2729258    0.0499292    0.4959224
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.2521915   -0.0239800    0.5283630
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0786810   -0.5294779    0.3721158
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.2126482   -0.3911880    0.8164843


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0738507   -0.2481892    0.1004878
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3987101   -0.7225127   -0.0749076
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0772745   -0.0236190    0.1781680
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1616296   -0.3659181    0.0426589
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0425738   -0.1779761    0.0928285
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1942347   -0.3944966    0.0060272
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1252467   -0.4165293    0.1660360
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1913504   -0.2542372    0.6369380
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2449979   -0.9605581    0.4705623
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2820651   -0.5191054   -0.0450249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0326743   -0.2424678    0.1771192
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0886146   -0.6534912    0.4762619
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0686780   -0.1713067    0.0339508
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1023925   -0.2823660    0.0775811
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1058573   -0.0539295    0.2656441
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1522398   -0.4364439    0.1319642
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1125997   -0.3227337    0.0975344
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1602021   -0.4477292    0.1273250
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0239878   -0.3541744    0.4021500
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2218681   -0.6227798    0.1790436
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0951087   -0.3943415    0.2041240
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1429578   -0.3486824    0.0627668
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0273552   -0.3848364    0.4395468
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0940163   -0.2382341    0.0502015
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.2015529   -0.0056992    0.4088049
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0051935   -0.2942289    0.3046158
