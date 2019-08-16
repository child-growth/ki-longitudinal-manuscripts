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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           67     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            27     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           27      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        25      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38           27     131
Birth       ki0047075b-MAL-ED          INDIA                          <32            44     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        60     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        39      61
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      80
Birth       ki0047075b-MAL-ED          PERU                           <32            27      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        26      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           53      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           21      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        19      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           152     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        31     187
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13390
Birth       ki1119695-PROBIT           BELARUS                        <32         10724   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2060   13390
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
![](/tmp/9063c265-3b35-4120-b127-640354103709/22e34a96-985c-4b6e-93c4-2d44ccdce94b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9063c265-3b35-4120-b127-640354103709/22e34a96-985c-4b6e-93c4-2d44ccdce94b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9063c265-3b35-4120-b127-640354103709/22e34a96-985c-4b6e-93c4-2d44ccdce94b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8697050   -1.1034373   -0.6359727
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.1828990   -1.5351713   -0.8306267
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.0583423   -1.3292398   -0.7874449
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.6834917   -1.1635193   -0.2034641
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.9053637   -1.3917193   -0.4190082
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.6527561   -1.0678342   -0.2376779
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.1574517   -1.6368560   -0.6780475
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.7831307   -1.0349611   -0.5313003
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9249208   -1.2628787   -0.5869629
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.6300000   -1.1327994   -0.1272006
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.6277778   -1.1813379   -0.0742177
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.7782051   -1.1107483   -0.4456620
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.5958475   -0.9405219   -0.2511731
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.9771333   -1.5235629   -0.4307036
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.1624900   -1.4528825   -0.8720974
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.6554717   -0.9459850   -0.3649584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.5087500   -1.0529159    0.0354159
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.0513333   -1.6086365   -0.4940302
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.7961905   -1.3086490   -0.2837320
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.0350000   -1.4136675   -0.6563325
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.6684211   -1.1811565   -0.1556856
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 1.2730584    1.1471825    1.3989343
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                 1.3256385    1.1718748    1.4794021
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                 1.2957310    1.1055844    1.4858777
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.2990757    0.0889407    0.5092108
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.1033534   -0.0446257    0.2513325
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1024892   -0.1282383    0.3332168
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.2050937   -0.3453570   -0.0648303
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2652312   -0.3248462   -0.2056163
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.3788030   -0.5647972   -0.1928088
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9737215   -1.2137835   -0.7336594
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -2.4861940   -2.6720016   -2.3003865
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.2282009   -1.5031760   -0.9532257
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1569086   -0.1674407    0.4812580
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.2459633   -0.8090252    0.3170985
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1484060   -0.1948259    0.4916380
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.3578594   -1.8628099   -0.8529089
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.3297065   -1.6127691   -1.0466439
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9699681   -1.1680056   -0.7719307
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.3992378   -1.1560887    0.3576131
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.3616398   -0.6719160   -0.0513637
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.8627222   -1.1199554   -0.6054889
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.0456450   -1.2388063   -0.8524836
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -1.2969924   -1.7333898   -0.8605949
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.5671849   -2.0377298   -1.0966400
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8373958   -1.0973701   -0.5774216
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4536651   -1.7458499   -1.1614803
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.8033616   -2.4474554   -1.1592678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4486195   -1.7484963   -1.1487426
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.9073681   -2.2108960   -1.6038403
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -1.3555576   -1.4754506   -1.2356646
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -1.6232958   -1.8684559   -1.3781356
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7631990   -2.3039531   -1.2224450
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -2.1169356   -2.2681964   -1.9656748
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.6966863   -2.1860241   -1.2073484
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1818249    0.0749615    0.2886883
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.1098555    0.0154430    0.2042681
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.1119400   -0.0288201    0.2527000
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -1.7071624   -1.9104760   -1.5038488
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.8483317   -1.9707185   -1.7259449
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.9507469   -2.1291948   -1.7722991
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -1.2732756   -1.4345524   -1.1119989
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -1.1010964   -1.1682475   -1.0339454
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -1.1976437   -1.3769597   -1.0183277
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.4550415   -1.7163311   -1.1937518
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.5992969   -1.9081495   -1.2904443
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.8508158   -2.1997314   -1.5019002
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -1.8517402   -2.1068227   -1.5966577
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -3.0683107   -3.2523707   -2.8842507
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -1.9632681   -2.2873124   -1.6392238
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.3098624   -0.0084579    0.6281826
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0744910   -0.5672845    0.4183026
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1224611   -0.2842439    0.5291660
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -1.9406752   -2.3068922   -1.5744582
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.9143619   -2.2247690   -1.6039548
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.7403972   -1.9994282   -1.4813661
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -1.3647842   -1.8141965   -0.9153719
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.5775646   -2.1581536   -0.9969757
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -1.6060713   -1.8417508   -1.3703917
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -1.6155031   -1.9056985   -1.3253077
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -1.5601787   -1.9028639   -1.2174934
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -1.7528515   -2.3103947   -1.1953084
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5213077   -1.7646345   -1.2779809
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8812500   -1.6713902   -0.0911098
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5543750   -2.0461910   -1.0625590
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.5882830   -2.8478578   -2.3287083
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -2.9580483   -3.4514267   -2.4646700
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8147979   -3.1696106   -2.4599851
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1205039   -0.4895640    0.2485561
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.1379964   -0.4540427    0.1780500
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.1857055   -0.4473187    0.0759077
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -2.7210415   -2.8788824   -2.5632006
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -2.7933206   -2.8926570   -2.6939841
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -2.9414066   -3.1213249   -2.7614882
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -2.5971506   -2.7872250   -2.4070762
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -2.3256221   -2.3975399   -2.2537043
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -2.3673564   -2.5478572   -2.1868557
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -1.8068874   -2.1509797   -1.4627951
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -1.8500551   -2.1625145   -1.5375958
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -1.5082628   -2.0434925   -0.9730331


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9778621   -1.1318533   -0.8238709
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7238235   -0.9850427   -0.4626043
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9720611   -1.1477959   -0.7963262
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7244262   -0.9767822   -0.4720703
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9256250   -1.1260052   -0.7252448
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7181579   -0.9588306   -0.4774852
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.7745652   -1.0958030   -0.4533274
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3342255    1.1742855    1.4941656
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1377035    0.0520086    0.2233984
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2468988   -0.2865742   -0.2072233
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.3131941   -0.7349787    0.1085906
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1886374   -0.5454546    0.1681798
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2218721   -0.9074253    0.4636811
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0307356   -0.6070079    0.6684791
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.3743210   -0.1664790    0.9151211
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.2325309   -0.3558000    0.8208619
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0022222   -0.7455986    0.7500431
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1482051   -0.7510253    0.4546151
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.3812857   -1.0257368    0.2631653
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.5666424   -1.0162752   -0.1170097
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1467217   -0.4701368    0.7635802
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3958616   -1.0243398    0.2326165
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2388095   -0.8759930    0.3983740
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1277694   -0.5971522    0.8526911
Birth       ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0525801   -0.0426590    0.1478192
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0226727   -0.1241305    0.1694758
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1957223   -0.4529652    0.0615205
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1965865   -0.5090791    0.1159061
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0601376   -0.2122876    0.0920124
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.1737094   -0.4066547    0.0592360
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.5124726   -1.8227663   -1.2021788
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.2544794   -0.6190524    0.1100936
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.4028720   -1.0553500    0.2496060
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0085026   -0.4819344    0.4649292
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0281529   -0.5507508    0.6070566
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.3878913   -0.1542842    0.9300667
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0375980   -0.7802591    0.8554550
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.4634844   -1.2654183    0.3384496
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.2513474   -0.7295402    0.2268454
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.5215399   -1.0265433   -0.0165365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1373958   -0.4464434    0.7212351
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4718750   -1.0023136    0.0585636
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3496965   -1.0572601    0.3578671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0050456   -0.4245558    0.4346471
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.5518105    0.2219884    0.8816327
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.2840724    0.1019850    0.4661597
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.3537366   -0.9148019    0.2073287
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0665128   -0.6626531    0.7956786
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0719694   -0.1813657    0.0374270
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0698849   -0.2128229    0.0730530
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1411693   -0.3782819    0.0959432
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2435845   -0.5146426    0.0274735
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1721792   -0.0020991    0.3464575
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0756319   -0.1654471    0.3167109
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1442555   -0.5518016    0.2632907
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.3957743   -0.8323150    0.0407664
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -1.2165705   -1.5434078   -0.8897332
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1115279   -0.5220385    0.2989827
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3843533   -0.9719672    0.2032606
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1874013   -0.7064916    0.3316890
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0263133   -0.4495394    0.5021659
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.2002780   -0.2442459    0.6448019
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.2127805   -0.9470511    0.5214902
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.2412871   -0.7503260    0.2677518
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0553244   -0.3885397    0.4991885
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1373484   -0.7564479    0.4817510
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6400577   -0.1867007    1.4668161
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0330673   -0.5817848    0.5156502
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3697653   -0.9260804    0.1865499
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2265148   -0.6617050    0.2086753
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0174925   -0.4652712    0.4302863
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0652016   -0.5100465    0.3796434
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0722790   -0.2573469    0.1127888
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.2203650   -0.4587606    0.0180305
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.2715285    0.0682338    0.4748231
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.2297942   -0.0323896    0.4919780
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0431678   -0.5047128    0.4183772
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.2986246   -0.3356242    0.9328733


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1081571   -0.2805082    0.0641940
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0403319   -0.4059027    0.3252390
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1853907   -0.2509293    0.6217107
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0944262   -0.5513035    0.3624511
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.3297775   -0.6494350   -0.0101200
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0626862   -0.2195568    0.0941844
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0216253   -0.3333814    0.3766319
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0611672   -0.0375990    0.1599334
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1613722   -0.3585746    0.0358302
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0418051   -0.1795176    0.0959073
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.2241785   -0.4270107   -0.0213463
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1015078   -0.3843745    0.1813590
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1683977   -0.2913725    0.6281679
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.3264584   -1.0373863    0.3844695
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2843751   -0.5239752   -0.0447750
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0709375   -0.1999633    0.0580883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0208182   -0.2316783    0.1900419
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.5067305    0.2023964    0.8110646
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1354852   -0.6687226    0.3977523
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0652119   -0.1662542    0.0358304
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0996729   -0.2903142    0.0909684
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1311491   -0.0271704    0.2894687
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1660906   -0.4359604    0.1037792
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1050147   -0.3130028    0.1029733
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1510016   -0.4431646    0.1411614
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1033460   -0.2287875    0.4354795
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1382538   -0.5345662    0.2580586
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0805096   -0.3503755    0.1893564
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0515886   -0.0850395    0.1882167
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1435670   -0.3462178    0.0590839
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0049804   -0.4286933    0.4187325
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1303354   -0.2784154    0.0177446
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.2012628    0.0149904    0.3875352
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0379684   -0.2704487    0.3463856
