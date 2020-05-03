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
![](/tmp/ee237016-edc0-424e-a451-ce204ecd4c5e/24c7d918-9462-4ba7-b5e2-ab37d0750c50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ee237016-edc0-424e-a451-ce204ecd4c5e/24c7d918-9462-4ba7-b5e2-ab37d0750c50/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ee237016-edc0-424e-a451-ce204ecd4c5e/24c7d918-9462-4ba7-b5e2-ab37d0750c50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -1.0120022   -1.2922605   -0.7317440
Birth       COHORTS         GUATEMALA                      <32                  NA                -1.2936435   -1.4389195   -1.1483674
Birth       COHORTS         GUATEMALA                      [32-38)              NA                -0.9395473   -1.2116767   -0.6674179
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.6047408   -0.8229523   -0.3865293
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.7498630   -0.8191772   -0.6805488
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.7133692   -0.8806500   -0.5460884
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9811640   -1.2576086   -0.7047194
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.3005886   -1.7255260   -0.8756512
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9123487   -1.1925245   -0.6321730
Birth       MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       MAL-ED          PERU                           >=38                 NA                 0.3244671    0.0051057    0.6438286
Birth       MAL-ED          PERU                           <32                  NA                -0.2444875   -0.7102401    0.2212652
Birth       MAL-ED          PERU                           [32-38)              NA                 0.1124640   -0.2125054    0.4374335
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       PROBIT          BELARUS                        >=38                 NA                -0.9600071   -1.0983328   -0.8216815
Birth       PROBIT          BELARUS                        <32                  NA                -1.1492628   -1.3603077   -0.9382180
Birth       PROBIT          BELARUS                        [32-38)              NA                -1.1110462   -1.3352095   -0.8868829
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.7698404   -1.4769353   -0.0627456
Birth       SAS-CompFeed    INDIA                          <32                  NA                -0.6717842   -0.8367884   -0.5067800
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -0.6370333   -0.8574076   -0.4166589
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.1827875    0.0003005    0.3652744
6 months    COHORTS         GUATEMALA                      <32                  NA                 0.2625291    0.1168979    0.4081603
6 months    COHORTS         GUATEMALA                      [32-38)              NA                 0.0637265   -0.2016547    0.3291076
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1632818   -0.3354329    0.0088694
6 months    COHORTS         PHILIPPINES                    <32                  NA                -0.2874886   -0.3624493   -0.2125278
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -0.2034046   -0.3695879   -0.0372212
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.5923264    0.2639623    0.9206905
6 months    LCNI-5          MALAWI                         <32                  NA                 0.5197129    0.2104153    0.8290106
6 months    LCNI-5          MALAWI                         [32-38)              NA                 0.3764321    0.0767800    0.6760842
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.2685255   -0.5315665   -0.0054846
6 months    MAL-ED          BANGLADESH                     <32                  NA                 0.0883832   -0.2202785    0.3970450
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.2525106   -0.5368650    0.0318438
6 months    MAL-ED          BRAZIL                         >=38                 NA                 1.1273809    0.5892443    1.6655175
6 months    MAL-ED          BRAZIL                         <32                  NA                 0.9930358    0.1990279    1.7870437
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.7449385    0.3720193    1.1178576
6 months    MAL-ED          INDIA                          >=38                 NA                -0.6185930   -1.0204609   -0.2167251
6 months    MAL-ED          INDIA                          <32                  NA                -0.8938090   -1.2284321   -0.5591860
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.7838059   -1.0090338   -0.5585780
6 months    MAL-ED          NEPAL                          >=38                 NA                 0.3106091   -0.2777588    0.8989771
6 months    MAL-ED          NEPAL                          <32                  NA                 0.0080674   -0.6436184    0.6597531
6 months    MAL-ED          NEPAL                          [32-38)              NA                 0.2469680   -0.0520695    0.5460056
6 months    MAL-ED          PERU                           >=38                 NA                 0.9103769    0.5944981    1.2262557
6 months    MAL-ED          PERU                           <32                  NA                 0.7547713    0.4516379    1.0579047
6 months    MAL-ED          PERU                           [32-38)              NA                 1.4052643    0.8974222    1.9131063
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.4242598    0.1026073    0.7459123
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7106686    0.1561743    1.2651628
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.5811798    0.2306563    0.9317034
6 months    PROBIT          BELARUS                        >=38                 NA                 0.6190279    0.5594800    0.6785758
6 months    PROBIT          BELARUS                        <32                  NA                 0.5719672    0.5092783    0.6346561
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.5646758    0.4601214    0.6692302
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.1475809   -1.3137833   -0.9813785
6 months    SAS-CompFeed    INDIA                          <32                  NA                -0.6623289   -0.7976270   -0.5270308
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.6764367   -1.1392901   -0.2135833
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7181184   -2.4063294   -1.0299075
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -1.0047775   -1.2300556   -0.7794994
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.6663687   -1.0965147   -0.2362227
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.2720082   -0.4164927   -0.1275236
24 months   COHORTS         GUATEMALA                      <32                  NA                -0.2599910   -0.3489904   -0.1709917
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.3221035   -0.4799267   -0.1642804
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.7098125   -0.8733736   -0.5462514
24 months   COHORTS         PHILIPPINES                    <32                  NA                -0.5731542   -0.6282765   -0.5180318
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -0.5486473   -0.7202885   -0.3770061
24 months   LCNI-5          MALAWI                         >=38                 NA                 0.1220354   -0.3463421    0.5904129
24 months   LCNI-5          MALAWI                         <32                  NA                -0.3414164   -0.6658298   -0.0170030
24 months   LCNI-5          MALAWI                         [32-38)              NA                -0.2502091   -0.7656844    0.2652663
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.9152342   -1.1440921   -0.6863763
24 months   MAL-ED          BANGLADESH                     <32                  NA                -0.5514961   -0.7560712   -0.3469211
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.8594996   -1.2104692   -0.5085301
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.7252213    0.1689686    1.2814741
24 months   MAL-ED          BRAZIL                         <32                  NA                 0.7413620   -0.0737623    1.5564862
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.2616604   -0.2584531    0.7817739
24 months   MAL-ED          INDIA                          >=38                 NA                -0.6705616   -0.9803642   -0.3607590
24 months   MAL-ED          INDIA                          <32                  NA                -0.9935948   -1.2384903   -0.7486993
24 months   MAL-ED          INDIA                          [32-38)              NA                -0.8672469   -1.0937261   -0.6407677
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.1955589   -0.6798472    0.2887294
24 months   MAL-ED          NEPAL                          <32                  NA                -0.0777095   -0.6119332    0.4565142
24 months   MAL-ED          NEPAL                          [32-38)              NA                -0.2723212   -0.5249153   -0.0197271
24 months   MAL-ED          PERU                           >=38                 NA                 0.3101103   -0.0251172    0.6453378
24 months   MAL-ED          PERU                           <32                  NA                -0.2320884   -0.5874579    0.1232810
24 months   MAL-ED          PERU                           [32-38)              NA                 0.2421827   -0.1748575    0.6592229
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3369795    0.0457881    0.6281708
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0981821   -0.6823770    0.4860128
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1668063   -0.4450518    0.1114391
24 months   PROBIT          BELARUS                        >=38                 NA                 0.8652467    0.7061766    1.0243168
24 months   PROBIT          BELARUS                        <32                  NA                 0.7031831    0.5853121    0.8210540
24 months   PROBIT          BELARUS                        [32-38)              NA                 0.6515022    0.5292863    0.7737182


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
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.2816412   -0.5968598    0.0335774
Birth       COHORTS         GUATEMALA                      [32-38)              >=38               0.0724549   -0.3169488    0.4618586
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.1451222   -0.3742754    0.0840310
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.1086284   -0.3836820    0.1664252
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.3194246   -0.8262543    0.1874050
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38               0.0688153   -0.3269857    0.4646162
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.5689546   -1.1362587   -0.0016505
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.2120031   -0.6694176    0.2454114
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.6662500   -2.0685341    0.7360341
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3418056   -1.5342979    0.8506868
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2716340   -1.1241867    0.5809187
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0189216   -0.6785984    0.7164416
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38              -0.1892557   -0.3323410   -0.0461704
Birth       PROBIT          BELARUS                        [32-38)              >=38              -0.1510390   -0.2921533   -0.0099248
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38               0.0980562   -0.4626596    0.6587720
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38               0.1328072   -0.4240745    0.6896888
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38               0.0797416   -0.1534592    0.3129423
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.1190610   -0.4413627    0.2032407
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38              -0.1242068   -0.3120760    0.0636624
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0401228   -0.2795537    0.1993080
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.0726134   -0.5244618    0.3792349
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.2158943   -0.6594412    0.2276527
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38               0.3569088   -0.0505531    0.7643707
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0160149   -0.3756958    0.4077256
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.1343451   -1.0974477    0.8287575
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.3824424   -1.0334645    0.2685797
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.2752160   -0.8017415    0.2513094
6 months    MAL-ED          INDIA                          [32-38)              >=38              -0.1652128   -0.6302660    0.2998403
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38              -0.3025418   -1.1801217    0.5750382
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.0636411   -0.7265683    0.5992861
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.1556056   -0.5907521    0.2795409
6 months    MAL-ED          PERU                           [32-38)              >=38               0.4948874   -0.1005096    1.0902844
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.2864087   -0.3583947    0.9312122
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1569200   -0.3225746    0.6364146
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0470607   -0.1089316    0.0148102
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0543521   -0.1657336    0.0570294
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.4852520    0.3180237    0.6524804
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4711442    0.0781035    0.8641849
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.7133410   -0.0116414    1.4383234
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               1.0517498    0.2393687    1.8641308
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0120171   -0.1577082    0.1817425
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0500954   -0.2642226    0.1640319
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.1366583   -0.0360284    0.3093451
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.1611652   -0.0760426    0.3983731
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.4634518   -1.0407378    0.1138342
24 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.3722445   -1.0674021    0.3229132
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38               0.3637381    0.0562560    0.6712201
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0557346   -0.3642549    0.4757240
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38               0.0161406   -0.9727558    1.0050370
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.4635609   -1.2290560    0.3019341
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              -0.3230332   -0.7177627    0.0716963
24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.1966853   -0.5804109    0.1870403
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38               0.1178494   -0.6141445    0.8498434
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0767623   -0.6202378    0.4667133
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38              -0.5421987   -1.0300410   -0.0543564
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0679276   -0.6050519    0.4691968
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4351615   -1.0870785    0.2167555
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.5037858   -0.9116770   -0.0958946
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              -0.1620636   -0.3200597   -0.0040675
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.2137444   -0.3801348   -0.0473540


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.0460386   -0.3033817    0.2113045
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.1262352   -0.3397878    0.0873173
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0563360   -0.2473948    0.1347228
Birth       MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       MAL-ED          PERU                           >=38                 NA                -0.2714821   -0.5586636    0.0156995
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       PROBIT          BELARUS                        >=38                 NA                -0.1836600   -0.3180270   -0.0492931
Birth       SAS-CompFeed    INDIA                          >=38                 NA                 0.1012937   -0.4395959    0.6421832
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0098039   -0.1609324    0.1805402
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.1245214   -0.2925926    0.0435497
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.0862887   -0.3834463    0.2108690
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0735144   -0.1166812    0.2637101
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.1908408   -0.6134556    0.2317740
6 months    MAL-ED          INDIA                          >=38                 NA                -0.1106357   -0.4894340    0.2681625
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.1356302   -0.6474299    0.3761695
6 months    MAL-ED          PERU                           >=38                 NA                 0.1078359   -0.1770236    0.3926955
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1028902   -0.1304923    0.3362727
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0458581   -0.1015477    0.0098316
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.4834750    0.3435169    0.6234331
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.7059606    0.0297113    1.3822098
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0040771   -0.1397045    0.1315503
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.1010541   -0.0593488    0.2614569
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.3200084   -0.7156094    0.0755927
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0307640   -0.1588201    0.2203482
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.1804112   -0.6471243    0.2863018
24 months   MAL-ED          INDIA                          >=38                 NA                -0.2262396   -0.5234195    0.0709402
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.0838715   -0.5115775    0.3438346
24 months   MAL-ED          PERU                           >=38                 NA                -0.1902896   -0.4875557    0.1069766
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2603295   -0.4805967   -0.0400622
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1689448   -0.3128667   -0.0250229
