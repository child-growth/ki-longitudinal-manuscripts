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

agecat      studyid         country                        fage       n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA                      >=38          222     735  whz              
Birth       COHORTS         GUATEMALA                      <32           337     735  whz              
Birth       COHORTS         GUATEMALA                      [32-38)       176     735  whz              
Birth       COHORTS         PHILIPPINES                    >=38          303    2797  whz              
Birth       COHORTS         PHILIPPINES                    <32          1981    2797  whz              
Birth       COHORTS         PHILIPPINES                    [32-38)       513    2797  whz              
Birth       MAL-ED          BANGLADESH                     >=38           61     128  whz              
Birth       MAL-ED          BANGLADESH                     <32            23     128  whz              
Birth       MAL-ED          BANGLADESH                     [32-38)        44     128  whz              
Birth       MAL-ED          BRAZIL                         >=38            5      16  whz              
Birth       MAL-ED          BRAZIL                         <32             1      16  whz              
Birth       MAL-ED          BRAZIL                         [32-38)        10      16  whz              
Birth       MAL-ED          INDIA                          >=38            7      25  whz              
Birth       MAL-ED          INDIA                          <32             8      25  whz              
Birth       MAL-ED          INDIA                          [32-38)        10      25  whz              
Birth       MAL-ED          NEPAL                          >=38            2       9  whz              
Birth       MAL-ED          NEPAL                          <32             2       9  whz              
Birth       MAL-ED          NEPAL                          [32-38)         5       9  whz              
Birth       MAL-ED          PERU                           >=38           23      67  whz              
Birth       MAL-ED          PERU                           <32            21      67  whz              
Birth       MAL-ED          PERU                           [32-38)        23      67  whz              
Birth       MAL-ED          SOUTH AFRICA                   >=38           16      30  whz              
Birth       MAL-ED          SOUTH AFRICA                   <32             5      30  whz              
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      30  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44  whz              
Birth       PROBIT          BELARUS                        >=38          604   13325  whz              
Birth       PROBIT          BELARUS                        <32         10671   13325  whz              
Birth       PROBIT          BELARUS                        [32-38)      2050   13325  whz              
Birth       SAS-CompFeed    INDIA                          >=38           34    1101  whz              
Birth       SAS-CompFeed    INDIA                          <32           923    1101  whz              
Birth       SAS-CompFeed    INDIA                          [32-38)       144    1101  whz              
6 months    COHORTS         GUATEMALA                      >=38          276     930  whz              
6 months    COHORTS         GUATEMALA                      <32           421     930  whz              
6 months    COHORTS         GUATEMALA                      [32-38)       233     930  whz              
6 months    COHORTS         PHILIPPINES                    >=38          299    2622  whz              
6 months    COHORTS         PHILIPPINES                    <32          1828    2622  whz              
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2622  whz              
6 months    LCNI-5          MALAWI                         >=38           26     106  whz              
6 months    LCNI-5          MALAWI                         <32            56     106  whz              
6 months    LCNI-5          MALAWI                         [32-38)        24     106  whz              
6 months    MAL-ED          BANGLADESH                     >=38           69     150  whz              
6 months    MAL-ED          BANGLADESH                     <32            30     150  whz              
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150  whz              
6 months    MAL-ED          BRAZIL                         >=38           30      79  whz              
6 months    MAL-ED          BRAZIL                         <32            18      79  whz              
6 months    MAL-ED          BRAZIL                         [32-38)        31      79  whz              
6 months    MAL-ED          INDIA                          >=38           36     161  whz              
6 months    MAL-ED          INDIA                          <32            53     161  whz              
6 months    MAL-ED          INDIA                          [32-38)        72     161  whz              
6 months    MAL-ED          NEPAL                          >=38           17      79  whz              
6 months    MAL-ED          NEPAL                          <32            15      79  whz              
6 months    MAL-ED          NEPAL                          [32-38)        47      79  whz              
6 months    MAL-ED          PERU                           >=38           27      83  whz              
6 months    MAL-ED          PERU                           <32            28      83  whz              
6 months    MAL-ED          PERU                           [32-38)        28      83  whz              
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89  whz              
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89  whz              
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
6 months    PROBIT          BELARUS                        >=38          701   15179  whz              
6 months    PROBIT          BELARUS                        <32         12174   15179  whz              
6 months    PROBIT          BELARUS                        [32-38)      2304   15179  whz              
6 months    SAS-CompFeed    INDIA                          >=38           44    1331  whz              
6 months    SAS-CompFeed    INDIA                          <32          1122    1331  whz              
6 months    SAS-CompFeed    INDIA                          [32-38)       165    1331  whz              
6 months    SAS-FoodSuppl   INDIA                          >=38           40     380  whz              
6 months    SAS-FoodSuppl   INDIA                          <32           264     380  whz              
6 months    SAS-FoodSuppl   INDIA                          [32-38)        76     380  whz              
24 months   COHORTS         GUATEMALA                      >=38          287    1032  whz              
24 months   COHORTS         GUATEMALA                      <32           495    1032  whz              
24 months   COHORTS         GUATEMALA                      [32-38)       250    1032  whz              
24 months   COHORTS         PHILIPPINES                    >=38          271    2376  whz              
24 months   COHORTS         PHILIPPINES                    <32          1670    2376  whz              
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2376  whz              
24 months   LCNI-5          MALAWI                         >=38           21      74  whz              
24 months   LCNI-5          MALAWI                         <32            37      74  whz              
24 months   LCNI-5          MALAWI                         [32-38)        16      74  whz              
24 months   MAL-ED          BANGLADESH                     >=38           69     151  whz              
24 months   MAL-ED          BANGLADESH                     <32            30     151  whz              
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151  whz              
24 months   MAL-ED          BRAZIL                         >=38           30      79  whz              
24 months   MAL-ED          BRAZIL                         <32            18      79  whz              
24 months   MAL-ED          BRAZIL                         [32-38)        31      79  whz              
24 months   MAL-ED          INDIA                          >=38           36     161  whz              
24 months   MAL-ED          INDIA                          <32            53     161  whz              
24 months   MAL-ED          INDIA                          [32-38)        72     161  whz              
24 months   MAL-ED          NEPAL                          >=38           17      79  whz              
24 months   MAL-ED          NEPAL                          <32            15      79  whz              
24 months   MAL-ED          NEPAL                          [32-38)        47      79  whz              
24 months   MAL-ED          PERU                           >=38           26      79  whz              
24 months   MAL-ED          PERU                           <32            27      79  whz              
24 months   MAL-ED          PERU                           [32-38)        26      79  whz              
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89  whz              
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89  whz              
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
24 months   PROBIT          BELARUS                        >=38          176    3847  whz              
24 months   PROBIT          BELARUS                        <32          3093    3847  whz              
24 months   PROBIT          BELARUS                        [32-38)       578    3847  whz              


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
![](/tmp/fccb04bd-170f-4a44-9577-adf8dabc5a0d/afd8f31e-bc79-4b1e-bd7c-b91c6816d236/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fccb04bd-170f-4a44-9577-adf8dabc5a0d/afd8f31e-bc79-4b1e-bd7c-b91c6816d236/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fccb04bd-170f-4a44-9577-adf8dabc5a0d/afd8f31e-bc79-4b1e-bd7c-b91c6816d236/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -1.0769426   -1.3406520   -0.8132333
Birth       COHORTS         GUATEMALA                      <32                  NA                -1.1861153   -1.3413381   -1.0308925
Birth       COHORTS         GUATEMALA                      [32-38)              NA                -1.0172144   -1.2799661   -0.7544628
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.5994019   -0.8255485   -0.3732553
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.7573930   -0.8237354   -0.6910505
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.6700998   -0.8425377   -0.4976619
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9929266   -1.2652499   -0.7206033
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.3419306   -1.7742166   -0.9096446
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9406730   -1.2247728   -0.6565732
Birth       MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       MAL-ED          PERU                           >=38                 NA                 0.1936062   -0.1255796    0.5127921
Birth       MAL-ED          PERU                           <32                  NA                -0.5202750   -1.0002895   -0.0402604
Birth       MAL-ED          PERU                           [32-38)              NA                -0.1343797   -0.4596576    0.1908983
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       PROBIT          BELARUS                        >=38                 NA                -0.9557234   -1.0912280   -0.8202189
Birth       PROBIT          BELARUS                        <32                  NA                -1.1455968   -1.3561099   -0.9350838
Birth       PROBIT          BELARUS                        [32-38)              NA                -1.0898892   -1.3104575   -0.8693208
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.7698404   -1.4769353   -0.0627456
Birth       SAS-CompFeed    INDIA                          <32                  NA                -0.6717842   -0.8367884   -0.5067800
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -0.6370333   -0.8574076   -0.4166589
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0541571   -0.1976878    0.3060020
6 months    COHORTS         GUATEMALA                      <32                  NA                 0.3232070    0.1650034    0.4814106
6 months    COHORTS         GUATEMALA                      [32-38)              NA                 0.0272545   -0.2016335    0.2561425
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1623961   -0.3428642    0.0180721
6 months    COHORTS         PHILIPPINES                    <32                  NA                -0.2714661   -0.3422657   -0.2006666
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -0.2154524   -0.3710671   -0.0598376
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.5528362    0.2051152    0.9005572
6 months    LCNI-5          MALAWI                         <32                  NA                 0.5195513    0.2079322    0.8311704
6 months    LCNI-5          MALAWI                         [32-38)              NA                 0.3905683    0.0961514    0.6849852
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.2837299   -0.5493039   -0.0181558
6 months    MAL-ED          BANGLADESH                     <32                  NA                 0.1045430   -0.1969494    0.4060354
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.2483247   -0.5235159    0.0268665
6 months    MAL-ED          BRAZIL                         >=38                 NA                 1.1746203    0.6332252    1.7160153
6 months    MAL-ED          BRAZIL                         <32                  NA                 1.0319112    0.3027525    1.7610700
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.7003491    0.3328642    1.0678341
6 months    MAL-ED          INDIA                          >=38                 NA                -0.5974323   -0.9754883   -0.2193763
6 months    MAL-ED          INDIA                          <32                  NA                -0.8128626   -1.1386489   -0.4870764
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.7849461   -1.0233208   -0.5465715
6 months    MAL-ED          NEPAL                          >=38                 NA                 0.6865413    0.0955162    1.2775663
6 months    MAL-ED          NEPAL                          <32                  NA                 0.2781822   -0.2461013    0.8024658
6 months    MAL-ED          NEPAL                          [32-38)              NA                 0.3333226    0.0310124    0.6356328
6 months    MAL-ED          PERU                           >=38                 NA                 0.8774007    0.5633713    1.1914302
6 months    MAL-ED          PERU                           <32                  NA                 0.7702141    0.4352704    1.1051578
6 months    MAL-ED          PERU                           [32-38)              NA                 1.3623633    0.8319997    1.8927268
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.4160392    0.0938556    0.7382228
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7174690    0.1680818    1.2668561
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.5736108    0.1916010    0.9556206
6 months    PROBIT          BELARUS                        >=38                 NA                 0.6196828    0.5616956    0.6776700
6 months    PROBIT          BELARUS                        <32                  NA                 0.5739564    0.5106708    0.6372420
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.5601192    0.4521143    0.6681240
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.1475806   -1.3137828   -0.9813784
6 months    SAS-CompFeed    INDIA                          <32                  NA                -0.6623289   -0.7976270   -0.5270308
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.6764365   -1.1392898   -0.2135832
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7578801   -2.4916577   -1.0241024
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -1.0752938   -1.2638602   -0.8867274
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.8090596   -1.3305368   -0.2875825
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.2417624   -0.3717377   -0.1117871
24 months   COHORTS         GUATEMALA                      <32                  NA                -0.2119999   -0.3035286   -0.1204711
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.2904542   -0.4491628   -0.1317456
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.6682158   -0.8163272   -0.5201045
24 months   COHORTS         PHILIPPINES                    <32                  NA                -0.5744259   -0.6319814   -0.5168703
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -0.5477432   -0.7198308   -0.3756556
24 months   LCNI-5          MALAWI                         >=38                 NA                 0.1199649   -0.3502773    0.5902071
24 months   LCNI-5          MALAWI                         <32                  NA                -0.3455127   -0.6589603   -0.0320651
24 months   LCNI-5          MALAWI                         [32-38)              NA                -0.2633746   -0.7312895    0.2045403
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.8634536   -1.0780056   -0.6489015
24 months   MAL-ED          BANGLADESH                     <32                  NA                -0.6690127   -0.8826474   -0.4553779
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.9280453   -1.2952500   -0.5608407
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.7246990    0.1167552    1.3326428
24 months   MAL-ED          BRAZIL                         <32                  NA                 0.7196247   -0.1421019    1.5813513
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.2829952   -0.2266627    0.7926531
24 months   MAL-ED          INDIA                          >=38                 NA                -0.6865011   -1.0029354   -0.3700668
24 months   MAL-ED          INDIA                          <32                  NA                -1.0487017   -1.3173273   -0.7800761
24 months   MAL-ED          INDIA                          [32-38)              NA                -0.9165861   -1.1226692   -0.7105029
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.4305623   -0.9026030    0.0414784
24 months   MAL-ED          NEPAL                          <32                  NA                -0.4315502   -1.0262344    0.1631340
24 months   MAL-ED          NEPAL                          [32-38)              NA                -0.2783939   -0.5276304   -0.0291574
24 months   MAL-ED          PERU                           >=38                 NA                 0.3263223   -0.0281958    0.6808404
24 months   MAL-ED          PERU                           <32                  NA                -0.2485121   -0.6143754    0.1173513
24 months   MAL-ED          PERU                           [32-38)              NA                 0.2349773   -0.1956097    0.6655643
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3564006    0.0708599    0.6419414
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0018714   -0.6075517    0.6038089
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2037527   -0.4724499    0.0649445
24 months   PROBIT          BELARUS                        >=38                 NA                 0.8691750    0.6981457    1.0402042
24 months   PROBIT          BELARUS                        <32                  NA                 0.7049582    0.5878156    0.8221009
24 months   PROBIT          BELARUS                        [32-38)              NA                 0.6251533    0.5176650    0.7326416


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
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.1091727   -0.4139333    0.1955880
Birth       COHORTS         GUATEMALA                      [32-38)              >=38               0.0597282   -0.3104917    0.4299481
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.1579911   -0.3938502    0.0778680
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0706979   -0.3552665    0.2138707
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.3490040   -0.8615013    0.1634934
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38               0.0522536   -0.3421461    0.4466533
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.7138812   -1.2954766   -0.1322859
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.3279859   -0.7862188    0.1302469
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.6662500   -2.0685341    0.7360341
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3418056   -1.5342979    0.8506868
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2716340   -1.1241867    0.5809187
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0189216   -0.6785984    0.7164416
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38              -0.1898734   -0.3342384   -0.0455085
Birth       PROBIT          BELARUS                        [32-38)              >=38              -0.1341658   -0.2770628    0.0087313
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38               0.0980562   -0.4626596    0.6587720
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38               0.1328072   -0.4240745    0.6896888
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38               0.2690499   -0.0276286    0.5657283
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0269026   -0.3670727    0.3132674
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38              -0.1090700   -0.3032051    0.0850650
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0530563   -0.2914944    0.1853818
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.0332850   -0.5029366    0.4363666
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.1622679   -0.6190151    0.2944792
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38               0.3882729   -0.0157620    0.7923077
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0354052   -0.3485771    0.4193874
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.1427090   -1.0542098    0.7687918
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.4742711   -1.1300840    0.1815418
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.2154303   -0.7183718    0.2875112
6 months    MAL-ED          INDIA                          [32-38)              >=38              -0.1875138   -0.6394579    0.2644302
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38              -0.4083590   -1.2030075    0.3862894
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.3532187   -1.0202552    0.3138177
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.1071866   -0.5633650    0.3489917
6 months    MAL-ED          PERU                           [32-38)              >=38               0.4849625   -0.1313041    1.1012292
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3014297   -0.3370319    0.9398914
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1575716   -0.3428110    0.6579542
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0457264   -0.1052425    0.0137896
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0595637   -0.1720091    0.0528818
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.4852517    0.3180234    0.6524799
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4711441    0.0781035    0.8641847
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.6825863   -0.0773884    1.4425609
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.9488204    0.0465503    1.8510906
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0297625   -0.1292418    0.1887669
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0486918   -0.2540116    0.1566280
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.0937899   -0.0653226    0.2529025
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.1204727   -0.1066732    0.3476185
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.4654776   -1.0354649    0.1045097
24 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.3833395   -1.0461842    0.2795052
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38               0.1944409   -0.1128426    0.5017244
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0645918   -0.4889928    0.3598092
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0050743   -1.0625381    1.0523895
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.4417037   -1.2354914    0.3520839
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              -0.3622006   -0.7750804    0.0506792
24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.2300850   -0.6063804    0.1462104
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.0009879   -0.7597044    0.7577285
24 months   MAL-ED          NEPAL                          [32-38)              >=38               0.1521684   -0.3837572    0.6880941
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38              -0.5748344   -1.0831656   -0.0665032
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0913450   -0.6511609    0.4684709
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3582720   -1.0191476    0.3026036
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.5601534   -0.9592321   -0.1610746
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              -0.1642167   -0.3289347    0.0005013
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.2440217   -0.4187668   -0.0692765


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.0189018   -0.2214577    0.2592614
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.1315742   -0.3527903    0.0896420
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0445734   -0.2336188    0.1444720
Birth       MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       MAL-ED          PERU                           >=38                 NA                -0.1406212   -0.4302351    0.1489928
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       PROBIT          BELARUS                        >=38                 NA                -0.1879438   -0.3244949   -0.0513926
Birth       SAS-CompFeed    INDIA                          >=38                 NA                 0.1012937   -0.4395959    0.6421832
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.1384343   -0.0991220    0.3759905
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1254071   -0.3015892    0.0507749
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.0467985   -0.3590297    0.2654327
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0887187   -0.1005985    0.2780359
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.2380802   -0.6629523    0.1867919
6 months    MAL-ED          INDIA                          >=38                 NA                -0.1317965   -0.4909279    0.2273350
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.5115624   -1.0358196    0.0126948
6 months    MAL-ED          PERU                           >=38                 NA                 0.1408121   -0.1472260    0.4288503
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1111108   -0.1205560    0.3427776
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0465130   -0.1003214    0.0072954
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.4834747    0.3435166    0.6234327
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.7457222    0.0253341    1.4661103
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0343229   -0.1557312    0.0870855
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0594574   -0.0861463    0.2050611
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.3179379   -0.7128913    0.0770156
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0210166   -0.1970474    0.1550141
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.1798889   -0.6926052    0.3328275
24 months   MAL-ED          INDIA                          >=38                 NA                -0.2103002   -0.5118068    0.0912064
24 months   MAL-ED          NEPAL                          >=38                 NA                 0.1511319   -0.2668314    0.5690952
24 months   MAL-ED          PERU                           >=38                 NA                -0.2065016   -0.5202928    0.1072896
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2797506   -0.4992206   -0.0602807
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1728731   -0.3241551   -0.0215911
