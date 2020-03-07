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

agecat      studyid         country                        fage       n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38          222     735
Birth       COHORTS         GUATEMALA                      <32           337     735
Birth       COHORTS         GUATEMALA                      [32-38)       176     735
Birth       COHORTS         PHILIPPINES                    >=38          303    2797
Birth       COHORTS         PHILIPPINES                    <32          1981    2797
Birth       COHORTS         PHILIPPINES                    [32-38)       513    2797
Birth       MAL-ED          BANGLADESH                     >=38           61     128
Birth       MAL-ED          BANGLADESH                     <32            23     128
Birth       MAL-ED          BANGLADESH                     [32-38)        44     128
Birth       MAL-ED          BRAZIL                         >=38            5      16
Birth       MAL-ED          BRAZIL                         <32             1      16
Birth       MAL-ED          BRAZIL                         [32-38)        10      16
Birth       MAL-ED          INDIA                          >=38            7      25
Birth       MAL-ED          INDIA                          <32             8      25
Birth       MAL-ED          INDIA                          [32-38)        10      25
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      67
Birth       MAL-ED          PERU                           <32            21      67
Birth       MAL-ED          PERU                           [32-38)        23      67
Birth       MAL-ED          SOUTH AFRICA                   >=38           16      30
Birth       MAL-ED          SOUTH AFRICA                   <32             5      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      30
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       PROBIT          BELARUS                        >=38          604   13325
Birth       PROBIT          BELARUS                        <32         10671   13325
Birth       PROBIT          BELARUS                        [32-38)      2050   13325
Birth       SAS-CompFeed    INDIA                          >=38           34    1101
Birth       SAS-CompFeed    INDIA                          <32           923    1101
Birth       SAS-CompFeed    INDIA                          [32-38)       144    1101
6 months    COHORTS         GUATEMALA                      >=38          276     930
6 months    COHORTS         GUATEMALA                      <32           421     930
6 months    COHORTS         GUATEMALA                      [32-38)       233     930
6 months    COHORTS         PHILIPPINES                    >=38          299    2622
6 months    COHORTS         PHILIPPINES                    <32          1828    2622
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2622
6 months    LCNI-5          MALAWI                         >=38           26     106
6 months    LCNI-5          MALAWI                         <32            56     106
6 months    LCNI-5          MALAWI                         [32-38)        24     106
6 months    MAL-ED          BANGLADESH                     >=38           69     150
6 months    MAL-ED          BANGLADESH                     <32            30     150
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    MAL-ED          BRAZIL                         >=38           30      79
6 months    MAL-ED          BRAZIL                         <32            18      79
6 months    MAL-ED          BRAZIL                         [32-38)        31      79
6 months    MAL-ED          INDIA                          >=38           36     161
6 months    MAL-ED          INDIA                          <32            53     161
6 months    MAL-ED          INDIA                          [32-38)        72     161
6 months    MAL-ED          NEPAL                          >=38           17      79
6 months    MAL-ED          NEPAL                          <32            15      79
6 months    MAL-ED          NEPAL                          [32-38)        47      79
6 months    MAL-ED          PERU                           >=38           27      83
6 months    MAL-ED          PERU                           <32            28      83
6 months    MAL-ED          PERU                           [32-38)        28      83
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    PROBIT          BELARUS                        >=38          701   15179
6 months    PROBIT          BELARUS                        <32         12174   15179
6 months    PROBIT          BELARUS                        [32-38)      2304   15179
6 months    SAS-CompFeed    INDIA                          >=38           44    1331
6 months    SAS-CompFeed    INDIA                          <32          1122    1331
6 months    SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        76     380
24 months   COHORTS         GUATEMALA                      >=38          287    1032
24 months   COHORTS         GUATEMALA                      <32           495    1032
24 months   COHORTS         GUATEMALA                      [32-38)       250    1032
24 months   COHORTS         PHILIPPINES                    >=38          271    2376
24 months   COHORTS         PHILIPPINES                    <32          1670    2376
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2376
24 months   LCNI-5          MALAWI                         >=38           21      74
24 months   LCNI-5          MALAWI                         <32            37      74
24 months   LCNI-5          MALAWI                         [32-38)        16      74
24 months   MAL-ED          BANGLADESH                     >=38           69     151
24 months   MAL-ED          BANGLADESH                     <32            30     151
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   MAL-ED          BRAZIL                         >=38           30      79
24 months   MAL-ED          BRAZIL                         <32            18      79
24 months   MAL-ED          BRAZIL                         [32-38)        31      79
24 months   MAL-ED          INDIA                          >=38           36     161
24 months   MAL-ED          INDIA                          <32            53     161
24 months   MAL-ED          INDIA                          [32-38)        72     161
24 months   MAL-ED          NEPAL                          >=38           17      79
24 months   MAL-ED          NEPAL                          <32            15      79
24 months   MAL-ED          NEPAL                          [32-38)        47      79
24 months   MAL-ED          PERU                           >=38           26      79
24 months   MAL-ED          PERU                           <32            27      79
24 months   MAL-ED          PERU                           [32-38)        26      79
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   PROBIT          BELARUS                        >=38          176    3847
24 months   PROBIT          BELARUS                        <32          3093    3847
24 months   PROBIT          BELARUS                        [32-38)       578    3847


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c9b88815-4f80-4f8b-92e1-9f48b38e3e65/24e9203e-6d01-45c9-8210-29c54376bad4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c9b88815-4f80-4f8b-92e1-9f48b38e3e65/24e9203e-6d01-45c9-8210-29c54376bad4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c9b88815-4f80-4f8b-92e1-9f48b38e3e65/24e9203e-6d01-45c9-8210-29c54376bad4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -1.0286046   -1.3122954   -0.7449138
Birth       COHORTS         GUATEMALA                      <32                  NA                -1.2252224   -1.3877825   -1.0626623
Birth       COHORTS         GUATEMALA                      [32-38)              NA                -1.0304584   -1.3007612   -0.7601557
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.6025902   -0.8259319   -0.3792485
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.7550057   -0.8228265   -0.6871849
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.6778912   -0.8608673   -0.4949151
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9599921   -1.2354793   -0.6845048
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.1845899   -1.6164030   -0.7527769
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9192496   -1.1966859   -0.6418132
Birth       MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       MAL-ED          PERU                           >=38                 NA                 0.3876377    0.0686374    0.7066381
Birth       MAL-ED          PERU                           <32                  NA                -0.2066787   -0.6760993    0.2627419
Birth       MAL-ED          PERU                           [32-38)              NA                 0.1526293   -0.1709053    0.4761639
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       PROBIT          BELARUS                        >=38                 NA                -0.9616675   -1.0945615   -0.8287735
Birth       PROBIT          BELARUS                        <32                  NA                -1.1485978   -1.3595653   -0.9376304
Birth       PROBIT          BELARUS                        [32-38)              NA                -1.1080696   -1.3326885   -0.8834506
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.7698404   -1.4769353   -0.0627456
Birth       SAS-CompFeed    INDIA                          <32                  NA                -0.6717842   -0.8367884   -0.5067800
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -0.6370333   -0.8574076   -0.4166589
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.2191210    0.0385730    0.3996691
6 months    COHORTS         GUATEMALA                      <32                  NA                 0.2880331    0.1343796    0.4416866
6 months    COHORTS         GUATEMALA                      [32-38)              NA                 0.0872902   -0.1477936    0.3223741
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1765788   -0.3470770   -0.0060807
6 months    COHORTS         PHILIPPINES                    <32                  NA                -0.2787948   -0.3509225   -0.2066671
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -0.2262549   -0.3863913   -0.0661184
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.6062082    0.2734243    0.9389921
6 months    LCNI-5          MALAWI                         <32                  NA                 0.5280069    0.2260166    0.8299972
6 months    LCNI-5          MALAWI                         [32-38)              NA                 0.3742449    0.0743419    0.6741479
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.2886312   -0.5501462   -0.0271162
6 months    MAL-ED          BANGLADESH                     <32                  NA                 0.1432315   -0.1541179    0.4405809
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.2559465   -0.5365823    0.0246893
6 months    MAL-ED          BRAZIL                         >=38                 NA                 1.0903645    0.5420686    1.6386604
6 months    MAL-ED          BRAZIL                         <32                  NA                 1.0504754    0.4123820    1.6885687
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.7186511    0.3472353    1.0900669
6 months    MAL-ED          INDIA                          >=38                 NA                -0.6399463   -0.9853984   -0.2944943
6 months    MAL-ED          INDIA                          <32                  NA                -0.8405751   -1.1745947   -0.5065555
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.7792585   -1.0116370   -0.5468800
6 months    MAL-ED          NEPAL                          >=38                 NA                 0.2812980   -0.3364551    0.8990511
6 months    MAL-ED          NEPAL                          <32                  NA                -0.1075164   -0.7058855    0.4908526
6 months    MAL-ED          NEPAL                          [32-38)              NA                 0.1978232   -0.1085664    0.5042127
6 months    MAL-ED          PERU                           >=38                 NA                 0.9429202    0.6177577    1.2680827
6 months    MAL-ED          PERU                           <32                  NA                 0.7573733    0.4499690    1.0647777
6 months    MAL-ED          PERU                           [32-38)              NA                 1.2999231    0.7451203    1.8547259
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.4352374    0.1162117    0.7542631
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.6947206    0.0554255    1.3340157
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.5693395    0.2256944    0.9129847
6 months    PROBIT          BELARUS                        >=38                 NA                 0.6085259    0.5493874    0.6676643
6 months    PROBIT          BELARUS                        <32                  NA                 0.5738038    0.5113662    0.6362415
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.5628857    0.4579337    0.6678376
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.1475809   -1.3137833   -0.9813785
6 months    SAS-CompFeed    INDIA                          <32                  NA                -0.6623289   -0.7976270   -0.5270308
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.6764367   -1.1392901   -0.2135833
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.6384634   -2.3507978   -0.9261290
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -0.9374398   -1.1091670   -0.7657127
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6508408   -1.1029675   -0.1987140
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.2426247   -0.3708689   -0.1143804
24 months   COHORTS         GUATEMALA                      <32                  NA                -0.2043753   -0.3148386   -0.0939120
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.2927982   -0.4506780   -0.1349184
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.6655275   -0.8230752   -0.5079799
24 months   COHORTS         PHILIPPINES                    <32                  NA                -0.5754692   -0.6309608   -0.5199777
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -0.5620972   -0.7353371   -0.3888573
24 months   LCNI-5          MALAWI                         >=38                 NA                 0.1586354   -0.2958096    0.6130805
24 months   LCNI-5          MALAWI                         <32                  NA                -0.3565692   -0.6730070   -0.0401314
24 months   LCNI-5          MALAWI                         [32-38)              NA                -0.2163741   -0.6990164    0.2662681
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.9177649   -1.1497849   -0.6857448
24 months   MAL-ED          BANGLADESH                     <32                  NA                -0.6995154   -0.9248184   -0.4742124
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.8567230   -1.2179009   -0.4955451
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.6586871    0.1134024    1.2039718
24 months   MAL-ED          BRAZIL                         <32                  NA                 0.7701402   -0.0692507    1.6095311
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.3135136   -0.2003767    0.8274040
24 months   MAL-ED          INDIA                          >=38                 NA                -0.6496166   -1.0223933   -0.2768400
24 months   MAL-ED          INDIA                          <32                  NA                -1.0593705   -1.2912070   -0.8275340
24 months   MAL-ED          INDIA                          [32-38)              NA                -0.8736119   -1.0958124   -0.6514114
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.1045825   -0.5496030    0.3404380
24 months   MAL-ED          NEPAL                          <32                  NA                -0.1642314   -0.7008806    0.3724177
24 months   MAL-ED          NEPAL                          [32-38)              NA                -0.2210732   -0.4743063    0.0321600
24 months   MAL-ED          PERU                           >=38                 NA                 0.3110523   -0.0342358    0.6563404
24 months   MAL-ED          PERU                           <32                  NA                -0.1925176   -0.5401485    0.1551133
24 months   MAL-ED          PERU                           [32-38)              NA                 0.2285248   -0.1958487    0.6528983
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3191560    0.0408431    0.5974689
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1018259   -0.6832808    0.4796290
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1644357   -0.4506178    0.1217464
24 months   PROBIT          BELARUS                        >=38                 NA                 0.8979615    0.7491038    1.0468193
24 months   PROBIT          BELARUS                        <32                  NA                 0.7069136    0.5903322    0.8234950
24 months   PROBIT          BELARUS                        [32-38)              NA                 0.6739582    0.5487109    0.7992055


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       COHORTS         PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.0375000   -1.2165024   -0.8584976
Birth       MAL-ED          INDIA                          NA                   NA                -0.9464000   -1.3554144   -0.5373856
Birth       MAL-ED          PERU                           NA                   NA                 0.0529851   -0.1628445    0.2688147
Birth       MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0073333   -0.5181900    0.5035233
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7115909    0.4034609    1.0197209
Birth       PROBIT          BELARUS                        NA                   NA                -1.1436672   -1.3543559   -0.9329784
Birth       SAS-CompFeed    INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
6 months    COHORTS         GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    COHORTS         PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    LCNI-5          MALAWI                         NA                   NA                 0.5060377    0.3131397    0.6989358
6 months    MAL-ED          BANGLADESH                     NA                   NA                -0.1950111   -0.3575506   -0.0324716
6 months    MAL-ED          BRAZIL                         NA                   NA                 0.9365401    0.6541549    1.2189253
6 months    MAL-ED          INDIA                          NA                   NA                -0.7292288   -0.8803893   -0.5780683
6 months    MAL-ED          NEPAL                          NA                   NA                 0.1749789   -0.0644624    0.4144202
6 months    MAL-ED          PERU                           NA                   NA                 1.0182129    0.7827641    1.2536616
6 months    MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5158052    0.2517895    0.7798210
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5271500    0.3177522    0.7365478
6 months    PROBIT          BELARUS                        NA                   NA                 0.5731698    0.5135069    0.6328327
6 months    SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
24 months   COHORTS         GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   COHORTS         PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   LCNI-5          MALAWI                         NA                   NA                -0.1979730   -0.4244675    0.0285215
24 months   MAL-ED          BANGLADESH                     NA                   NA                -0.8844702   -1.0263143   -0.7426261
24 months   MAL-ED          BRAZIL                         NA                   NA                 0.5448101    0.2082313    0.8813890
24 months   MAL-ED          INDIA                          NA                   NA                -0.8968012   -1.0287307   -0.7648718
24 months   MAL-ED          NEPAL                          NA                   NA                -0.2794304   -0.4767398   -0.0821210
24 months   MAL-ED          PERU                           NA                   NA                 0.1198207   -0.0845120    0.3241534
24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4414045    0.2336389    0.6491701
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   PROBIT          BELARUS                        NA                   NA                 0.6963019    0.5831245    0.8094793


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.1966178   -0.5236019    0.1303663
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.0018538   -0.3937212    0.3900135
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.1524155   -0.3859269    0.0810959
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0753010   -0.3642203    0.2136183
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.2245979   -0.7398113    0.2906155
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38               0.0407425   -0.3506395    0.4321245
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.5943164   -1.1569226   -0.0317103
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.2350084   -0.6986575    0.2286406
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.6662500   -2.0685341    0.7360341
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3418056   -1.5342979    0.8506868
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2716340   -1.1241867    0.5809187
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0189216   -0.6785984    0.7164416
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38              -0.1869303   -0.3327449   -0.0411158
Birth       PROBIT          BELARUS                        [32-38)              >=38              -0.1464021   -0.2949317    0.0021276
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38               0.0980562   -0.4626596    0.6587720
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38               0.1328072   -0.4240745    0.6896888
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38               0.0689121   -0.1667743    0.3045984
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.1318308   -0.4276692    0.1640076
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38              -0.1022160   -0.2874712    0.0830393
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0496760   -0.2837026    0.1843506
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.0782013   -0.5299955    0.3735929
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.2319633   -0.6812820    0.2173554
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38               0.4318627    0.0327223    0.8310032
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0326848   -0.3524041    0.4177736
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.0398891   -0.8828396    0.8030614
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.3717134   -1.0352903    0.2918635
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.2006288   -0.6807497    0.2794921
6 months    MAL-ED          INDIA                          [32-38)              >=38              -0.1393122   -0.5581170    0.2794927
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38              -0.3888145   -1.2608867    0.4832578
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.0834749   -0.7736704    0.6067207
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.1855468   -0.6281558    0.2570622
6 months    MAL-ED          PERU                           [32-38)              >=38               0.3570029   -0.2891529    1.0031587
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.2594832   -0.4565159    0.9754823
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1341021   -0.3346362    0.6028405
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0347220   -0.0924848    0.0230408
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0456402   -0.1562816    0.0650012
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.4852520    0.3180237    0.6524804
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4711442    0.0781035    0.8641849
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.7010236   -0.0316698    1.4337169
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.9876226    0.1428498    1.8323955
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0382494   -0.1311310    0.2076297
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0501735   -0.2536762    0.1533291
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.0900583   -0.0770667    0.2571833
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.1034303   -0.1308570    0.3377177
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.5152046   -1.0722354    0.0418262
24 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.3750096   -1.0407550    0.2907359
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38               0.2182495   -0.1108953    0.5473942
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0610419   -0.3724251    0.4945088
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38               0.1114531   -0.8861137    1.1090200
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.3451734   -1.0950983    0.4047514
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              -0.4097539   -0.8481319    0.0286241
24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.2239953   -0.6582209    0.2102303
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.0596489   -0.7541977    0.6349000
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.1164906   -0.6313866    0.3984053
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38              -0.5035699   -0.9925066   -0.0146332
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0825275   -0.6333815    0.4683264
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4209819   -1.0631694    0.2212055
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4835917   -0.8846860   -0.0824974
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              -0.1910479   -0.3364963   -0.0455995
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.2240033   -0.3790514   -0.0689552


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.0294362   -0.2883282    0.2294557
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.1283859   -0.3467762    0.0900045
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0775079   -0.2697188    0.1147029
Birth       MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       MAL-ED          PERU                           >=38                 NA                -0.3346527   -0.6244119   -0.0448934
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       PROBIT          BELARUS                        >=38                 NA                -0.1819997   -0.3202803   -0.0437190
Birth       SAS-CompFeed    INDIA                          >=38                 NA                 0.1012937   -0.4395959    0.6421832
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0265296   -0.1946307    0.1415715
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1112244   -0.2776482    0.0551995
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1001705   -0.4034598    0.2031188
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0936201   -0.0935473    0.2807876
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.1538244   -0.5797807    0.2721320
6 months    MAL-ED          INDIA                          >=38                 NA                -0.0892824   -0.4162753    0.2377104
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.1063191   -0.6476304    0.4349921
6 months    MAL-ED          PERU                           >=38                 NA                 0.0752927   -0.2226312    0.3732166
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0919126   -0.1358783    0.3197035
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0353560   -0.0875505    0.0168385
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.4834750    0.3435169    0.6234331
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.6263055   -0.0714770    1.3240880
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0334606   -0.1532249    0.0863036
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0567691   -0.0979230    0.2114612
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.3566084   -0.7373885    0.0241717
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0332947   -0.1609322    0.2275216
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.1138770   -0.5693512    0.3415973
24 months   MAL-ED          INDIA                          >=38                 NA                -0.2471846   -0.6016960    0.1073267
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.1748478   -0.5671537    0.2174580
24 months   MAL-ED          PERU                           >=38                 NA                -0.1912316   -0.4983608    0.1158976
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2425060   -0.4493566   -0.0356554
24 months   PROBIT          BELARUS                        >=38                 NA                -0.2016597   -0.3348739   -0.0684454
