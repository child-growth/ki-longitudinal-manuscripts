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

**Outcome Variable:** wasted

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

agecat      studyid         country                        fage       wasted   n_cell       n
----------  --------------  -----------------------------  --------  -------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38            0      165     735
Birth       COHORTS         GUATEMALA                      >=38            1       57     735
Birth       COHORTS         GUATEMALA                      <32             0      251     735
Birth       COHORTS         GUATEMALA                      <32             1       86     735
Birth       COHORTS         GUATEMALA                      [32-38)         0      132     735
Birth       COHORTS         GUATEMALA                      [32-38)         1       44     735
Birth       COHORTS         PHILIPPINES                    >=38            0      264    2797
Birth       COHORTS         PHILIPPINES                    >=38            1       39    2797
Birth       COHORTS         PHILIPPINES                    <32             0     1659    2797
Birth       COHORTS         PHILIPPINES                    <32             1      322    2797
Birth       COHORTS         PHILIPPINES                    [32-38)         0      445    2797
Birth       COHORTS         PHILIPPINES                    [32-38)         1       68    2797
Birth       MAL-ED          BANGLADESH                     >=38            0       50     128
Birth       MAL-ED          BANGLADESH                     >=38            1       11     128
Birth       MAL-ED          BANGLADESH                     <32             0       16     128
Birth       MAL-ED          BANGLADESH                     <32             1        7     128
Birth       MAL-ED          BANGLADESH                     [32-38)         0       39     128
Birth       MAL-ED          BANGLADESH                     [32-38)         1        5     128
Birth       MAL-ED          BRAZIL                         >=38            0        5      16
Birth       MAL-ED          BRAZIL                         >=38            1        0      16
Birth       MAL-ED          BRAZIL                         <32             0        1      16
Birth       MAL-ED          BRAZIL                         <32             1        0      16
Birth       MAL-ED          BRAZIL                         [32-38)         0       10      16
Birth       MAL-ED          BRAZIL                         [32-38)         1        0      16
Birth       MAL-ED          INDIA                          >=38            0        7      25
Birth       MAL-ED          INDIA                          >=38            1        0      25
Birth       MAL-ED          INDIA                          <32             0        6      25
Birth       MAL-ED          INDIA                          <32             1        2      25
Birth       MAL-ED          INDIA                          [32-38)         0        7      25
Birth       MAL-ED          INDIA                          [32-38)         1        3      25
Birth       MAL-ED          NEPAL                          >=38            0        2       9
Birth       MAL-ED          NEPAL                          >=38            1        0       9
Birth       MAL-ED          NEPAL                          <32             0        2       9
Birth       MAL-ED          NEPAL                          <32             1        0       9
Birth       MAL-ED          NEPAL                          [32-38)         0        4       9
Birth       MAL-ED          NEPAL                          [32-38)         1        1       9
Birth       MAL-ED          PERU                           >=38            0       23      67
Birth       MAL-ED          PERU                           >=38            1        0      67
Birth       MAL-ED          PERU                           <32             0       19      67
Birth       MAL-ED          PERU                           <32             1        2      67
Birth       MAL-ED          PERU                           [32-38)         0       23      67
Birth       MAL-ED          PERU                           [32-38)         1        0      67
Birth       MAL-ED          SOUTH AFRICA                   >=38            0       15      30
Birth       MAL-ED          SOUTH AFRICA                   >=38            1        1      30
Birth       MAL-ED          SOUTH AFRICA                   <32             0        4      30
Birth       MAL-ED          SOUTH AFRICA                   <32             1        1      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         0        8      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         1        1      30
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       17      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0        9      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       18      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        0      44
Birth       PROBIT          BELARUS                        >=38            0      498   13325
Birth       PROBIT          BELARUS                        >=38            1      106   13325
Birth       PROBIT          BELARUS                        <32             0     8392   13325
Birth       PROBIT          BELARUS                        <32             1     2279   13325
Birth       PROBIT          BELARUS                        [32-38)         0     1648   13325
Birth       PROBIT          BELARUS                        [32-38)         1      402   13325
Birth       SAS-CompFeed    INDIA                          >=38            0       27    1101
Birth       SAS-CompFeed    INDIA                          >=38            1        7    1101
Birth       SAS-CompFeed    INDIA                          <32             0      830    1101
Birth       SAS-CompFeed    INDIA                          <32             1       93    1101
Birth       SAS-CompFeed    INDIA                          [32-38)         0      126    1101
Birth       SAS-CompFeed    INDIA                          [32-38)         1       18    1101
6 months    COHORTS         GUATEMALA                      >=38            0      267     930
6 months    COHORTS         GUATEMALA                      >=38            1        9     930
6 months    COHORTS         GUATEMALA                      <32             0      412     930
6 months    COHORTS         GUATEMALA                      <32             1        9     930
6 months    COHORTS         GUATEMALA                      [32-38)         0      222     930
6 months    COHORTS         GUATEMALA                      [32-38)         1       11     930
6 months    COHORTS         PHILIPPINES                    >=38            0      275    2622
6 months    COHORTS         PHILIPPINES                    >=38            1       24    2622
6 months    COHORTS         PHILIPPINES                    <32             0     1731    2622
6 months    COHORTS         PHILIPPINES                    <32             1       97    2622
6 months    COHORTS         PHILIPPINES                    [32-38)         0      462    2622
6 months    COHORTS         PHILIPPINES                    [32-38)         1       33    2622
6 months    LCNI-5          MALAWI                         >=38            0       26     106
6 months    LCNI-5          MALAWI                         >=38            1        0     106
6 months    LCNI-5          MALAWI                         <32             0       54     106
6 months    LCNI-5          MALAWI                         <32             1        2     106
6 months    LCNI-5          MALAWI                         [32-38)         0       24     106
6 months    LCNI-5          MALAWI                         [32-38)         1        0     106
6 months    MAL-ED          BANGLADESH                     >=38            0       67     150
6 months    MAL-ED          BANGLADESH                     >=38            1        2     150
6 months    MAL-ED          BANGLADESH                     <32             0       30     150
6 months    MAL-ED          BANGLADESH                     <32             1        0     150
6 months    MAL-ED          BANGLADESH                     [32-38)         0       48     150
6 months    MAL-ED          BANGLADESH                     [32-38)         1        3     150
6 months    MAL-ED          BRAZIL                         >=38            0       30      79
6 months    MAL-ED          BRAZIL                         >=38            1        0      79
6 months    MAL-ED          BRAZIL                         <32             0       18      79
6 months    MAL-ED          BRAZIL                         <32             1        0      79
6 months    MAL-ED          BRAZIL                         [32-38)         0       31      79
6 months    MAL-ED          BRAZIL                         [32-38)         1        0      79
6 months    MAL-ED          INDIA                          >=38            0       35     161
6 months    MAL-ED          INDIA                          >=38            1        1     161
6 months    MAL-ED          INDIA                          <32             0       49     161
6 months    MAL-ED          INDIA                          <32             1        4     161
6 months    MAL-ED          INDIA                          [32-38)         0       64     161
6 months    MAL-ED          INDIA                          [32-38)         1        8     161
6 months    MAL-ED          NEPAL                          >=38            0       17      79
6 months    MAL-ED          NEPAL                          >=38            1        0      79
6 months    MAL-ED          NEPAL                          <32             0       14      79
6 months    MAL-ED          NEPAL                          <32             1        1      79
6 months    MAL-ED          NEPAL                          [32-38)         0       47      79
6 months    MAL-ED          NEPAL                          [32-38)         1        0      79
6 months    MAL-ED          PERU                           >=38            0       27      83
6 months    MAL-ED          PERU                           >=38            1        0      83
6 months    MAL-ED          PERU                           <32             0       28      83
6 months    MAL-ED          PERU                           <32             1        0      83
6 months    MAL-ED          PERU                           [32-38)         0       28      83
6 months    MAL-ED          PERU                           [32-38)         1        0      83
6 months    MAL-ED          SOUTH AFRICA                   >=38            0       62      89
6 months    MAL-ED          SOUTH AFRICA                   >=38            1        2      89
6 months    MAL-ED          SOUTH AFRICA                   <32             0        8      89
6 months    MAL-ED          SOUTH AFRICA                   <32             1        1      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)         0       15      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)         1        1      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
6 months    PROBIT          BELARUS                        >=38            0      693   15179
6 months    PROBIT          BELARUS                        >=38            1        8   15179
6 months    PROBIT          BELARUS                        <32             0    12089   15179
6 months    PROBIT          BELARUS                        <32             1       85   15179
6 months    PROBIT          BELARUS                        [32-38)         0     2291   15179
6 months    PROBIT          BELARUS                        [32-38)         1       13   15179
6 months    SAS-CompFeed    INDIA                          >=38            0       38    1331
6 months    SAS-CompFeed    INDIA                          >=38            1        6    1331
6 months    SAS-CompFeed    INDIA                          <32             0      992    1331
6 months    SAS-CompFeed    INDIA                          <32             1      130    1331
6 months    SAS-CompFeed    INDIA                          [32-38)         0      136    1331
6 months    SAS-CompFeed    INDIA                          [32-38)         1       29    1331
6 months    SAS-FoodSuppl   INDIA                          >=38            0       30     380
6 months    SAS-FoodSuppl   INDIA                          >=38            1       10     380
6 months    SAS-FoodSuppl   INDIA                          <32             0      222     380
6 months    SAS-FoodSuppl   INDIA                          <32             1       42     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)         0       59     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)         1       17     380
24 months   COHORTS         GUATEMALA                      >=38            0      276    1032
24 months   COHORTS         GUATEMALA                      >=38            1       11    1032
24 months   COHORTS         GUATEMALA                      <32             0      471    1032
24 months   COHORTS         GUATEMALA                      <32             1       24    1032
24 months   COHORTS         GUATEMALA                      [32-38)         0      239    1032
24 months   COHORTS         GUATEMALA                      [32-38)         1       11    1032
24 months   COHORTS         PHILIPPINES                    >=38            0      247    2376
24 months   COHORTS         PHILIPPINES                    >=38            1       24    2376
24 months   COHORTS         PHILIPPINES                    <32             0     1570    2376
24 months   COHORTS         PHILIPPINES                    <32             1      100    2376
24 months   COHORTS         PHILIPPINES                    [32-38)         0      401    2376
24 months   COHORTS         PHILIPPINES                    [32-38)         1       34    2376
24 months   LCNI-5          MALAWI                         >=38            0       21      74
24 months   LCNI-5          MALAWI                         >=38            1        0      74
24 months   LCNI-5          MALAWI                         <32             0       35      74
24 months   LCNI-5          MALAWI                         <32             1        2      74
24 months   LCNI-5          MALAWI                         [32-38)         0       16      74
24 months   LCNI-5          MALAWI                         [32-38)         1        0      74
24 months   MAL-ED          BANGLADESH                     >=38            0       62     151
24 months   MAL-ED          BANGLADESH                     >=38            1        7     151
24 months   MAL-ED          BANGLADESH                     <32             0       27     151
24 months   MAL-ED          BANGLADESH                     <32             1        3     151
24 months   MAL-ED          BANGLADESH                     [32-38)         0       46     151
24 months   MAL-ED          BANGLADESH                     [32-38)         1        6     151
24 months   MAL-ED          BRAZIL                         >=38            0       30      79
24 months   MAL-ED          BRAZIL                         >=38            1        0      79
24 months   MAL-ED          BRAZIL                         <32             0       18      79
24 months   MAL-ED          BRAZIL                         <32             1        0      79
24 months   MAL-ED          BRAZIL                         [32-38)         0       30      79
24 months   MAL-ED          BRAZIL                         [32-38)         1        1      79
24 months   MAL-ED          INDIA                          >=38            0       35     161
24 months   MAL-ED          INDIA                          >=38            1        1     161
24 months   MAL-ED          INDIA                          <32             0       44     161
24 months   MAL-ED          INDIA                          <32             1        9     161
24 months   MAL-ED          INDIA                          [32-38)         0       64     161
24 months   MAL-ED          INDIA                          [32-38)         1        8     161
24 months   MAL-ED          NEPAL                          >=38            0       17      79
24 months   MAL-ED          NEPAL                          >=38            1        0      79
24 months   MAL-ED          NEPAL                          <32             0       15      79
24 months   MAL-ED          NEPAL                          <32             1        0      79
24 months   MAL-ED          NEPAL                          [32-38)         0       46      79
24 months   MAL-ED          NEPAL                          [32-38)         1        1      79
24 months   MAL-ED          PERU                           >=38            0       26      79
24 months   MAL-ED          PERU                           >=38            1        0      79
24 months   MAL-ED          PERU                           <32             0       26      79
24 months   MAL-ED          PERU                           <32             1        1      79
24 months   MAL-ED          PERU                           [32-38)         0       25      79
24 months   MAL-ED          PERU                           [32-38)         1        1      79
24 months   MAL-ED          SOUTH AFRICA                   >=38            0       64      89
24 months   MAL-ED          SOUTH AFRICA                   >=38            1        1      89
24 months   MAL-ED          SOUTH AFRICA                   <32             0        8      89
24 months   MAL-ED          SOUTH AFRICA                   <32             1        0      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)         0       16      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)         1        0      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       14     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        1     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
24 months   PROBIT          BELARUS                        >=38            0      176    3847
24 months   PROBIT          BELARUS                        >=38            1        0    3847
24 months   PROBIT          BELARUS                        <32             0     3066    3847
24 months   PROBIT          BELARUS                        <32             1       27    3847
24 months   PROBIT          BELARUS                        [32-38)         0      574    3847
24 months   PROBIT          BELARUS                        [32-38)         1        4    3847


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/d7eab7ad-0c73-4f10-be8f-05190b3882d0/d32c2e4f-6f71-4763-aff3-a8b25df24292/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7eab7ad-0c73-4f10-be8f-05190b3882d0/d32c2e4f-6f71-4763-aff3-a8b25df24292/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7eab7ad-0c73-4f10-be8f-05190b3882d0/d32c2e4f-6f71-4763-aff3-a8b25df24292/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7eab7ad-0c73-4f10-be8f-05190b3882d0/d32c2e4f-6f71-4763-aff3-a8b25df24292/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     >=38                 NA                0.3472025   0.2587006   0.4357044
Birth       COHORTS         GUATEMALA     <32                  NA                0.2380700   0.1880182   0.2881218
Birth       COHORTS         GUATEMALA     [32-38)              NA                0.2339420   0.1401782   0.3277057
Birth       COHORTS         PHILIPPINES   >=38                 NA                0.1319322   0.0781361   0.1857283
Birth       COHORTS         PHILIPPINES   <32                  NA                0.1618407   0.1417251   0.1819564
Birth       COHORTS         PHILIPPINES   [32-38)              NA                0.1462910   0.0939271   0.1986549
Birth       MAL-ED          BANGLADESH    >=38                 NA                0.1803279   0.0834694   0.2771864
Birth       MAL-ED          BANGLADESH    <32                  NA                0.3043478   0.1155624   0.4931333
Birth       MAL-ED          BANGLADESH    [32-38)              NA                0.1136364   0.0194930   0.2077797
Birth       PROBIT          BELARUS       >=38                 NA                0.1637445   0.1226082   0.2048809
Birth       PROBIT          BELARUS       <32                  NA                0.2122918   0.1447152   0.2798683
Birth       PROBIT          BELARUS       [32-38)              NA                0.2007831   0.1409295   0.2606368
Birth       SAS-CompFeed    INDIA         >=38                 NA                0.2058824   0.0314915   0.3802732
Birth       SAS-CompFeed    INDIA         <32                  NA                0.1007584   0.0711101   0.1304067
Birth       SAS-CompFeed    INDIA         [32-38)              NA                0.1250000   0.0790452   0.1709548
6 months    COHORTS         GUATEMALA     >=38                 NA                0.0326087   0.0116437   0.0535737
6 months    COHORTS         GUATEMALA     <32                  NA                0.0213777   0.0075538   0.0352015
6 months    COHORTS         GUATEMALA     [32-38)              NA                0.0472103   0.0199632   0.0744574
6 months    COHORTS         PHILIPPINES   >=38                 NA                0.0625449   0.0329862   0.0921036
6 months    COHORTS         PHILIPPINES   <32                  NA                0.0532777   0.0379892   0.0685661
6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.0445850   0.0243988   0.0647713
6 months    PROBIT          BELARUS       >=38                 NA                0.0114123   0.0006468   0.0221778
6 months    PROBIT          BELARUS       <32                  NA                0.0069821   0.0051537   0.0088105
6 months    PROBIT          BELARUS       [32-38)              NA                0.0056424   0.0015740   0.0097108
6 months    SAS-CompFeed    INDIA         >=38                 NA                0.1363636   0.0538801   0.2188472
6 months    SAS-CompFeed    INDIA         <32                  NA                0.1158645   0.0916826   0.1400465
6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.1757576   0.1320926   0.2194226
6 months    SAS-FoodSuppl   INDIA         >=38                 NA                0.2333934   0.0981249   0.3686618
6 months    SAS-FoodSuppl   INDIA         <32                  NA                0.1550296   0.1112245   0.1988348
6 months    SAS-FoodSuppl   INDIA         [32-38)              NA                0.2239690   0.1286618   0.3192763
24 months   COHORTS         GUATEMALA     >=38                 NA                0.0390615   0.0155673   0.0625556
24 months   COHORTS         GUATEMALA     <32                  NA                0.0507361   0.0309182   0.0705540
24 months   COHORTS         GUATEMALA     [32-38)              NA                0.0435580   0.0170181   0.0700978
24 months   COHORTS         PHILIPPINES   >=38                 NA                0.0872410   0.0535819   0.1209002
24 months   COHORTS         PHILIPPINES   <32                  NA                0.0591709   0.0478570   0.0704848
24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.0806593   0.0552809   0.1060376


### Parameter: E(Y)


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     NA                   NA                0.2544218   0.2229136   0.2859300
Birth       COHORTS         PHILIPPINES   NA                   NA                0.1533786   0.1400217   0.1667355
Birth       MAL-ED          BANGLADESH    NA                   NA                0.1796875   0.1129154   0.2464596
Birth       PROBIT          BELARUS       NA                   NA                0.2091557   0.1439285   0.2743829
Birth       SAS-CompFeed    INDIA         NA                   NA                0.1071753   0.0763487   0.1380019
6 months    COHORTS         GUATEMALA     NA                   NA                0.0311828   0.0200060   0.0423596
6 months    COHORTS         PHILIPPINES   NA                   NA                0.0587338   0.0497323   0.0677353
6 months    PROBIT          BELARUS       NA                   NA                0.0069833   0.0052407   0.0087260
6 months    SAS-CompFeed    INDIA         NA                   NA                0.1239669   0.0988748   0.1490591
6 months    SAS-FoodSuppl   INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
24 months   COHORTS         GUATEMALA     NA                   NA                0.0445736   0.0319770   0.0571703
24 months   COHORTS         PHILIPPINES   NA                   NA                0.0664983   0.0564781   0.0765186


### Parameter: RR


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       COHORTS         GUATEMALA     <32                  >=38              0.6856804   0.4930153   0.9536371
Birth       COHORTS         GUATEMALA     [32-38)              >=38              0.6737910   0.4192559   1.0828576
Birth       COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       COHORTS         PHILIPPINES   <32                  >=38              1.2266967   0.8008903   1.8788900
Birth       COHORTS         PHILIPPINES   [32-38)              >=38              1.1088349   0.6444510   1.9078485
Birth       MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       MAL-ED          BANGLADESH    <32                  >=38              1.6877470   0.7429438   3.8340588
Birth       MAL-ED          BANGLADESH    [32-38)              >=38              0.6301653   0.2347772   1.6914263
Birth       PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       PROBIT          BELARUS       <32                  >=38              1.2964815   1.0363045   1.6219790
Birth       PROBIT          BELARUS       [32-38)              >=38              1.2261974   0.9429726   1.5944897
Birth       SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed    INDIA         <32                  >=38              0.4893979   0.2320405   1.0321919
Birth       SAS-CompFeed    INDIA         [32-38)              >=38              0.6071429   0.3005726   1.2264006
6 months    COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         GUATEMALA     <32                  >=38              0.6555819   0.2633943   1.6317271
6 months    COHORTS         GUATEMALA     [32-38)              >=38              1.4477825   0.6102174   3.4349634
6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         PHILIPPINES   <32                  >=38              0.8518302   0.4898708   1.4812369
6 months    COHORTS         PHILIPPINES   [32-38)              >=38              0.7128482   0.3706275   1.3710600
6 months    PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    PROBIT          BELARUS       <32                  >=38              0.6118059   0.2298965   1.6281517
6 months    PROBIT          BELARUS       [32-38)              >=38              0.4944119   0.1396995   1.7497787
6 months    SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed    INDIA         <32                  >=38              0.8496732   0.4582271   1.5755168
6 months    SAS-CompFeed    INDIA         [32-38)              >=38              1.2888889   0.7620445   2.1799704
6 months    SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl   INDIA         <32                  >=38              0.6642417   0.3473045   1.2704043
6 months    SAS-FoodSuppl   INDIA         [32-38)              >=38              0.9596204   0.4668229   1.9726351
24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         GUATEMALA     <32                  >=38              1.2988778   0.6340582   2.6607706
24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.1151124   0.4736428   2.6253445
24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         PHILIPPINES   <32                  >=38              0.6782464   0.4410163   1.0430868
24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.9245564   0.5622942   1.5202086


### Parameter: PAR


agecat      studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA     >=38                 NA                -0.0927808   -0.1740218   -0.0115397
Birth       COHORTS         PHILIPPINES   >=38                 NA                 0.0214465   -0.0314955    0.0743884
Birth       MAL-ED          BANGLADESH    >=38                 NA                -0.0006404   -0.0706280    0.0693473
Birth       PROBIT          BELARUS       >=38                 NA                 0.0454112    0.0009705    0.0898518
Birth       SAS-CompFeed    INDIA         >=38                 NA                -0.0987071   -0.2538956    0.0564814
6 months    COHORTS         GUATEMALA     >=38                 NA                -0.0014259   -0.0188492    0.0159974
6 months    COHORTS         PHILIPPINES   >=38                 NA                -0.0038111   -0.0323271    0.0247049
6 months    PROBIT          BELARUS       >=38                 NA                -0.0044289   -0.0149188    0.0060610
6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.0123967   -0.0901578    0.0653644
6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.0518144   -0.1786796    0.0750508
24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0055122   -0.0151178    0.0261421
24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0207427   -0.0519755    0.0104900


### Parameter: PAF


agecat      studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA     >=38                 NA                -0.3646730   -0.7258018   -0.0791114
Birth       COHORTS         PHILIPPINES   >=38                 NA                 0.1398269   -0.2840718    0.4237878
Birth       MAL-ED          BANGLADESH    >=38                 NA                -0.0035638   -0.4794487    0.3192462
Birth       PROBIT          BELARUS       >=38                 NA                 0.2171166    0.0334907    0.3658556
Birth       SAS-CompFeed    INDIA         >=38                 NA                -0.9209870   -2.8138686    0.0324283
6 months    COHORTS         GUATEMALA     >=38                 NA                -0.0457271   -0.7839164    0.3869975
6 months    COHORTS         PHILIPPINES   >=38                 NA                -0.0648883   -0.6807934    0.3253263
6 months    PROBIT          BELARUS       >=38                 NA                -0.6342153   -3.0876367    0.3466495
6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.1000000   -0.9449871    0.3778879
6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.2853548   -1.2107160    0.2526688
24 months   COHORTS         GUATEMALA     >=38                 NA                 0.1236639   -0.4846240    0.4827210
24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.3119285   -0.8739108    0.0815164
