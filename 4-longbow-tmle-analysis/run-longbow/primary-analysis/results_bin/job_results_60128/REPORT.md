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

**Outcome Variable:** stunted

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

agecat      studyid         country                        fage       stunted   n_cell       n
----------  --------------  -----------------------------  --------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38             0      230     823
Birth       COHORTS         GUATEMALA                      >=38             1       15     823
Birth       COHORTS         GUATEMALA                      <32              0      358     823
Birth       COHORTS         GUATEMALA                      <32              1       22     823
Birth       COHORTS         GUATEMALA                      [32-38)          0      185     823
Birth       COHORTS         GUATEMALA                      [32-38)          1       13     823
Birth       COHORTS         PHILIPPINES                    >=38             0      304    2944
Birth       COHORTS         PHILIPPINES                    >=38             1       24    2944
Birth       COHORTS         PHILIPPINES                    <32              0     1954    2944
Birth       COHORTS         PHILIPPINES                    <32              1      125    2944
Birth       COHORTS         PHILIPPINES                    [32-38)          0      506    2944
Birth       COHORTS         PHILIPPINES                    [32-38)          1       31    2944
Birth       MAL-ED          BANGLADESH                     >=38             0       52     133
Birth       MAL-ED          BANGLADESH                     >=38             1       11     133
Birth       MAL-ED          BANGLADESH                     <32              0       21     133
Birth       MAL-ED          BANGLADESH                     <32              1        4     133
Birth       MAL-ED          BANGLADESH                     [32-38)          0       40     133
Birth       MAL-ED          BANGLADESH                     [32-38)          1        5     133
Birth       MAL-ED          BRAZIL                         >=38             0        4      18
Birth       MAL-ED          BRAZIL                         >=38             1        2      18
Birth       MAL-ED          BRAZIL                         <32              0        1      18
Birth       MAL-ED          BRAZIL                         <32              1        0      18
Birth       MAL-ED          BRAZIL                         [32-38)          0        9      18
Birth       MAL-ED          BRAZIL                         [32-38)          1        2      18
Birth       MAL-ED          INDIA                          >=38             0        6      27
Birth       MAL-ED          INDIA                          >=38             1        1      27
Birth       MAL-ED          INDIA                          <32              0        5      27
Birth       MAL-ED          INDIA                          <32              1        4      27
Birth       MAL-ED          INDIA                          [32-38)          0        9      27
Birth       MAL-ED          INDIA                          [32-38)          1        2      27
Birth       MAL-ED          NEPAL                          >=38             0        2       9
Birth       MAL-ED          NEPAL                          >=38             1        0       9
Birth       MAL-ED          NEPAL                          <32              0        2       9
Birth       MAL-ED          NEPAL                          <32              1        0       9
Birth       MAL-ED          NEPAL                          [32-38)          0        5       9
Birth       MAL-ED          NEPAL                          [32-38)          1        0       9
Birth       MAL-ED          PERU                           >=38             0       23      69
Birth       MAL-ED          PERU                           >=38             1        0      69
Birth       MAL-ED          PERU                           <32              0       18      69
Birth       MAL-ED          PERU                           <32              1        4      69
Birth       MAL-ED          PERU                           [32-38)          0       19      69
Birth       MAL-ED          PERU                           [32-38)          1        5      69
Birth       MAL-ED          SOUTH AFRICA                   >=38             0       15      31
Birth       MAL-ED          SOUTH AFRICA                   >=38             1        2      31
Birth       MAL-ED          SOUTH AFRICA                   <32              0        4      31
Birth       MAL-ED          SOUTH AFRICA                   <32              1        1      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          0        7      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          1        2      31
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       15      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        7      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        2      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1      46
Birth       PROBIT          BELARUS                        >=38             0      605   13399
Birth       PROBIT          BELARUS                        >=38             1        1   13399
Birth       PROBIT          BELARUS                        <32              0    10703   13399
Birth       PROBIT          BELARUS                        <32              1       29   13399
Birth       PROBIT          BELARUS                        [32-38)          0     2057   13399
Birth       PROBIT          BELARUS                        [32-38)          1        4   13399
Birth       SAS-CompFeed    INDIA                          >=38             0       26    1249
Birth       SAS-CompFeed    INDIA                          >=38             1       14    1249
Birth       SAS-CompFeed    INDIA                          <32              0      756    1249
Birth       SAS-CompFeed    INDIA                          <32              1      289    1249
Birth       SAS-CompFeed    INDIA                          [32-38)          0      119    1249
Birth       SAS-CompFeed    INDIA                          [32-38)          1       45    1249
6 months    COHORTS         GUATEMALA                      >=38             0      168     929
6 months    COHORTS         GUATEMALA                      >=38             1      107     929
6 months    COHORTS         GUATEMALA                      <32              0      256     929
6 months    COHORTS         GUATEMALA                      <32              1      165     929
6 months    COHORTS         GUATEMALA                      [32-38)          0      129     929
6 months    COHORTS         GUATEMALA                      [32-38)          1      104     929
6 months    COHORTS         PHILIPPINES                    >=38             0      216    2624
6 months    COHORTS         PHILIPPINES                    >=38             1       84    2624
6 months    COHORTS         PHILIPPINES                    <32              0     1456    2624
6 months    COHORTS         PHILIPPINES                    <32              1      373    2624
6 months    COHORTS         PHILIPPINES                    [32-38)          0      396    2624
6 months    COHORTS         PHILIPPINES                    [32-38)          1       99    2624
6 months    LCNI-5          MALAWI                         >=38             0       21     106
6 months    LCNI-5          MALAWI                         >=38             1        5     106
6 months    LCNI-5          MALAWI                         <32              0       37     106
6 months    LCNI-5          MALAWI                         <32              1       19     106
6 months    LCNI-5          MALAWI                         [32-38)          0       15     106
6 months    LCNI-5          MALAWI                         [32-38)          1        9     106
6 months    MAL-ED          BANGLADESH                     >=38             0       56     150
6 months    MAL-ED          BANGLADESH                     >=38             1       13     150
6 months    MAL-ED          BANGLADESH                     <32              0       20     150
6 months    MAL-ED          BANGLADESH                     <32              1       10     150
6 months    MAL-ED          BANGLADESH                     [32-38)          0       45     150
6 months    MAL-ED          BANGLADESH                     [32-38)          1        6     150
6 months    MAL-ED          BRAZIL                         >=38             0       30      79
6 months    MAL-ED          BRAZIL                         >=38             1        0      79
6 months    MAL-ED          BRAZIL                         <32              0       18      79
6 months    MAL-ED          BRAZIL                         <32              1        0      79
6 months    MAL-ED          BRAZIL                         [32-38)          0       31      79
6 months    MAL-ED          BRAZIL                         [32-38)          1        0      79
6 months    MAL-ED          INDIA                          >=38             0       26     161
6 months    MAL-ED          INDIA                          >=38             1       10     161
6 months    MAL-ED          INDIA                          <32              0       41     161
6 months    MAL-ED          INDIA                          <32              1       12     161
6 months    MAL-ED          INDIA                          [32-38)          0       65     161
6 months    MAL-ED          INDIA                          [32-38)          1        7     161
6 months    MAL-ED          NEPAL                          >=38             0       16      79
6 months    MAL-ED          NEPAL                          >=38             1        1      79
6 months    MAL-ED          NEPAL                          <32              0       14      79
6 months    MAL-ED          NEPAL                          <32              1        1      79
6 months    MAL-ED          NEPAL                          [32-38)          0       45      79
6 months    MAL-ED          NEPAL                          [32-38)          1        2      79
6 months    MAL-ED          PERU                           >=38             0       27      83
6 months    MAL-ED          PERU                           >=38             1        0      83
6 months    MAL-ED          PERU                           <32              0       20      83
6 months    MAL-ED          PERU                           <32              1        8      83
6 months    MAL-ED          PERU                           [32-38)          0       17      83
6 months    MAL-ED          PERU                           [32-38)          1       11      83
6 months    MAL-ED          SOUTH AFRICA                   >=38             0       57      89
6 months    MAL-ED          SOUTH AFRICA                   >=38             1        7      89
6 months    MAL-ED          SOUTH AFRICA                   <32              0        8      89
6 months    MAL-ED          SOUTH AFRICA                   <32              1        1      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          0       12      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          1        4      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       35     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       13     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       10     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        5     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       28     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        9     100
6 months    PROBIT          BELARUS                        >=38             0      677   15182
6 months    PROBIT          BELARUS                        >=38             1       24   15182
6 months    PROBIT          BELARUS                        <32              0    11712   15182
6 months    PROBIT          BELARUS                        <32              1      463   15182
6 months    PROBIT          BELARUS                        [32-38)          0     2215   15182
6 months    PROBIT          BELARUS                        [32-38)          1       91   15182
6 months    SAS-CompFeed    INDIA                          >=38             0       23    1333
6 months    SAS-CompFeed    INDIA                          >=38             1       21    1333
6 months    SAS-CompFeed    INDIA                          <32              0      815    1333
6 months    SAS-CompFeed    INDIA                          <32              1      310    1333
6 months    SAS-CompFeed    INDIA                          [32-38)          0      117    1333
6 months    SAS-CompFeed    INDIA                          [32-38)          1       47    1333
6 months    SAS-FoodSuppl   INDIA                          >=38             0       20     380
6 months    SAS-FoodSuppl   INDIA                          >=38             1       19     380
6 months    SAS-FoodSuppl   INDIA                          <32              0      150     380
6 months    SAS-FoodSuppl   INDIA                          <32              1      114     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)          0       47     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)          1       30     380
24 months   COHORTS         GUATEMALA                      >=38             0       61    1021
24 months   COHORTS         GUATEMALA                      >=38             1      224    1021
24 months   COHORTS         GUATEMALA                      <32              0       92    1021
24 months   COHORTS         GUATEMALA                      <32              1      399    1021
24 months   COHORTS         GUATEMALA                      [32-38)          0       41    1021
24 months   COHORTS         GUATEMALA                      [32-38)          1      204    1021
24 months   COHORTS         PHILIPPINES                    >=38             0       86    2371
24 months   COHORTS         PHILIPPINES                    >=38             1      184    2371
24 months   COHORTS         PHILIPPINES                    <32              0      632    2371
24 months   COHORTS         PHILIPPINES                    <32              1     1034    2371
24 months   COHORTS         PHILIPPINES                    [32-38)          0      169    2371
24 months   COHORTS         PHILIPPINES                    [32-38)          1      266    2371
24 months   LCNI-5          MALAWI                         >=38             0       11      74
24 months   LCNI-5          MALAWI                         >=38             1       10      74
24 months   LCNI-5          MALAWI                         <32              0       22      74
24 months   LCNI-5          MALAWI                         <32              1       15      74
24 months   LCNI-5          MALAWI                         [32-38)          0       12      74
24 months   LCNI-5          MALAWI                         [32-38)          1        4      74
24 months   MAL-ED          BANGLADESH                     >=38             0       39     151
24 months   MAL-ED          BANGLADESH                     >=38             1       30     151
24 months   MAL-ED          BANGLADESH                     <32              0       14     151
24 months   MAL-ED          BANGLADESH                     <32              1       16     151
24 months   MAL-ED          BANGLADESH                     [32-38)          0       27     151
24 months   MAL-ED          BANGLADESH                     [32-38)          1       25     151
24 months   MAL-ED          BRAZIL                         >=38             0       30      79
24 months   MAL-ED          BRAZIL                         >=38             1        0      79
24 months   MAL-ED          BRAZIL                         <32              0       18      79
24 months   MAL-ED          BRAZIL                         <32              1        0      79
24 months   MAL-ED          BRAZIL                         [32-38)          0       30      79
24 months   MAL-ED          BRAZIL                         [32-38)          1        1      79
24 months   MAL-ED          INDIA                          >=38             0       25     161
24 months   MAL-ED          INDIA                          >=38             1       11     161
24 months   MAL-ED          INDIA                          <32              0       29     161
24 months   MAL-ED          INDIA                          <32              1       24     161
24 months   MAL-ED          INDIA                          [32-38)          0       40     161
24 months   MAL-ED          INDIA                          [32-38)          1       32     161
24 months   MAL-ED          NEPAL                          >=38             0       12      79
24 months   MAL-ED          NEPAL                          >=38             1        5      79
24 months   MAL-ED          NEPAL                          <32              0       12      79
24 months   MAL-ED          NEPAL                          <32              1        3      79
24 months   MAL-ED          NEPAL                          [32-38)          0       36      79
24 months   MAL-ED          NEPAL                          [32-38)          1       11      79
24 months   MAL-ED          PERU                           >=38             0       19      79
24 months   MAL-ED          PERU                           >=38             1        7      79
24 months   MAL-ED          PERU                           <32              0       19      79
24 months   MAL-ED          PERU                           <32              1        8      79
24 months   MAL-ED          PERU                           [32-38)          0       15      79
24 months   MAL-ED          PERU                           [32-38)          1       11      79
24 months   MAL-ED          SOUTH AFRICA                   >=38             0       45      89
24 months   MAL-ED          SOUTH AFRICA                   >=38             1       20      89
24 months   MAL-ED          SOUTH AFRICA                   <32              0        7      89
24 months   MAL-ED          SOUTH AFRICA                   <32              1        1      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          0        9      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          1        7      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       12     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       36     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        2     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       13     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100
24 months   PROBIT          BELARUS                        >=38             0      167    3909
24 months   PROBIT          BELARUS                        >=38             1       11    3909
24 months   PROBIT          BELARUS                        <32              0     2934    3909
24 months   PROBIT          BELARUS                        <32              1      209    3909
24 months   PROBIT          BELARUS                        [32-38)          0      546    3909
24 months   PROBIT          BELARUS                        [32-38)          1       42    3909


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

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/d655c4d4-0037-406e-8380-d041ad68ac3c/b7f81e98-0dfd-4819-9c1c-b86aa5f24fcf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d655c4d4-0037-406e-8380-d041ad68ac3c/b7f81e98-0dfd-4819-9c1c-b86aa5f24fcf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d655c4d4-0037-406e-8380-d041ad68ac3c/b7f81e98-0dfd-4819-9c1c-b86aa5f24fcf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d655c4d4-0037-406e-8380-d041ad68ac3c/b7f81e98-0dfd-4819-9c1c-b86aa5f24fcf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                0.0600476   0.0301795   0.0899158
Birth       COHORTS         GUATEMALA                      <32                  NA                0.0600249   0.0355629   0.0844868
Birth       COHORTS         GUATEMALA                      [32-38)              NA                0.0630554   0.0289905   0.0971204
Birth       COHORTS         PHILIPPINES                    >=38                 NA                0.0612156   0.0265443   0.0958869
Birth       COHORTS         PHILIPPINES                    <32                  NA                0.0658048   0.0503431   0.0812666
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                0.0668684   0.0281829   0.1055540
Birth       SAS-CompFeed    INDIA                          >=38                 NA                0.3413555   0.2468262   0.4358847
Birth       SAS-CompFeed    INDIA                          <32                  NA                0.2772130   0.2460633   0.3083627
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                0.2711692   0.1967541   0.3455842
6 months    COHORTS         GUATEMALA                      >=38                 NA                0.3857937   0.2975110   0.4740765
6 months    COHORTS         GUATEMALA                      <32                  NA                0.4670377   0.4085463   0.5255291
6 months    COHORTS         GUATEMALA                      [32-38)              NA                0.4405256   0.3370103   0.5440409
6 months    COHORTS         PHILIPPINES                    >=38                 NA                0.2068316   0.1459211   0.2677421
6 months    COHORTS         PHILIPPINES                    <32                  NA                0.1984098   0.1770366   0.2197830
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                0.2219667   0.1624251   0.2815084
6 months    LCNI-5          MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    LCNI-5          MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    LCNI-5          MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
6 months    MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                0.1176471   0.0289259   0.2063682
6 months    MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    MAL-ED          INDIA                          [32-38)              NA                0.0972222   0.0285774   0.1658671
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    PROBIT          BELARUS                        >=38                 NA                0.0330548   0.0166469   0.0494627
6 months    PROBIT          BELARUS                        <32                  NA                0.0376381   0.0275179   0.0477582
6 months    PROBIT          BELARUS                        [32-38)              NA                0.0411630   0.0270580   0.0552680
6 months    SAS-CompFeed    INDIA                          >=38                 NA                0.3281190   0.2306023   0.4256356
6 months    SAS-CompFeed    INDIA                          <32                  NA                0.2783919   0.2318050   0.3249787
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.2608460   0.1758061   0.3458860
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.4885612   0.3280935   0.6490289
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.4316168   0.3717594   0.4914742
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3910531   0.2808034   0.5013028
24 months   COHORTS         GUATEMALA                      >=38                 NA                0.7888243   0.7126143   0.8650344
24 months   COHORTS         GUATEMALA                      <32                  NA                0.7766709   0.7292949   0.8240469
24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.8522454   0.7864992   0.9179916
24 months   COHORTS         PHILIPPINES                    >=38                 NA                0.6218744   0.5429715   0.7007773
24 months   COHORTS         PHILIPPINES                    <32                  NA                0.6174941   0.5887405   0.6462476
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                0.6161720   0.5421360   0.6902079
24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.4447615   0.3213273   0.5681957
24 months   MAL-ED          BANGLADESH                     <32                  NA                0.5277751   0.3421242   0.7134260
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.4839596   0.3456306   0.6222886
24 months   MAL-ED          INDIA                          >=38                 NA                0.3332615   0.1764118   0.4901113
24 months   MAL-ED          INDIA                          <32                  NA                0.4511452   0.3178004   0.5844900
24 months   MAL-ED          INDIA                          [32-38)              NA                0.4415637   0.3267947   0.5563327
24 months   MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   PROBIT          BELARUS                        >=38                 NA                0.0641818   0.0356621   0.0927015
24 months   PROBIT          BELARUS                        <32                  NA                0.0668027   0.0372374   0.0963681
24 months   PROBIT          BELARUS                        [32-38)              NA                0.0695871   0.0377322   0.1014420


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA                      NA                   NA                0.0607533   0.0444233   0.0770834
Birth       COHORTS         PHILIPPINES                    NA                   NA                0.0611413   0.0524852   0.0697974
Birth       SAS-CompFeed    INDIA                          NA                   NA                0.2786229   0.2475201   0.3097257
6 months    COHORTS         GUATEMALA                      NA                   NA                0.4047363   0.3731561   0.4363165
6 months    COHORTS         PHILIPPINES                    NA                   NA                0.2118902   0.1962516   0.2275288
6 months    LCNI-5          MALAWI                         NA                   NA                0.3113208   0.2227550   0.3998865
6 months    MAL-ED          BANGLADESH                     NA                   NA                0.1933333   0.1299237   0.2567430
6 months    MAL-ED          INDIA                          NA                   NA                0.1801242   0.1205788   0.2396696
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2700000   0.1825472   0.3574528
6 months    PROBIT          BELARUS                        NA                   NA                0.0380714   0.0282426   0.0479002
6 months    SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
24 months   COHORTS         GUATEMALA                      NA                   NA                0.8099902   0.7859147   0.8340657
24 months   COHORTS         PHILIPPINES                    NA                   NA                0.6258962   0.6064148   0.6453777
24 months   MAL-ED          BANGLADESH                     NA                   NA                0.4701987   0.3903257   0.5500716
24 months   MAL-ED          INDIA                          NA                   NA                0.4161491   0.3397719   0.4925262
24 months   MAL-ED          PERU                           NA                   NA                0.3291139   0.2248346   0.4333933
24 months   PROBIT          BELARUS                        NA                   NA                0.0670248   0.0408615   0.0931881


### Parameter: RR


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       COHORTS         GUATEMALA                      <32                  >=38              0.9996210   0.5253870   1.9019164
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              1.0500905   0.5037836   2.1888169
Birth       COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              1.0749682   0.5822540   1.9846263
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              1.0923431   0.4861478   2.4544254
Birth       SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38              0.8120947   0.6024463   1.0946998
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38              0.7943894   0.5675032   1.1119841
6 months    COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38              1.2105891   0.9343125   1.5685607
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              1.1418682   0.8232625   1.5837754
6 months    COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38              0.9592820   0.7013884   1.3120004
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              1.0731761   0.7206916   1.5980580
6 months    LCNI-5          MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    LCNI-5          MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
6 months    MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38              1.7692308   0.8728158   3.5862980
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              0.6244344   0.2538556   1.5359844
6 months    MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              0.8150943   0.3940268   1.6861258
6 months    MAL-ED          INDIA                          [32-38)              >=38              0.3500000   0.1449027   0.8453946
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.2307692   0.5222084   2.9007439
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              0.8981289   0.4295810   1.8777263
6 months    PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              1.1386568   0.6762822   1.9171571
6 months    PROBIT          BELARUS                        [32-38)              >=38              1.2452969   0.7608399   2.0382271
6 months    SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38              0.8484479   0.6159217   1.1687588
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38              0.7949739   0.5149774   1.2272064
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              0.8834448   0.6185942   1.2616908
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.8004178   0.5191705   1.2340238
24 months   COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38              0.9845930   0.8786393   1.1033234
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              1.0803995   0.9550217   1.2222373
24 months   COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38              0.9929563   0.8680770   1.1358005
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38              0.9908303   0.8322991   1.1795575
24 months   MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              1.1866475   0.7572925   1.8594299
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              1.0881327   0.7286316   1.6250088
24 months   MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              1.3537272   0.7805233   2.3478829
24 months   MAL-ED          INDIA                          [32-38)              >=38              1.3249767   0.7771525   2.2589689
24 months   MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              1.0408359   0.5675071   1.9089441
24 months   PROBIT          BELARUS                        [32-38)              >=38              1.0842185   0.5721356   2.0546346


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.0007057   -0.0243275   0.0257390
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0000743   -0.0340404   0.0338918
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.0627326   -0.1573176   0.0318524
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0189425   -0.0640800   0.1019651
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.0050586   -0.0542245   0.0643418
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.1190131   -0.0211521   0.2591783
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0049275   -0.0636756   0.0735307
6 months    MAL-ED          INDIA                          >=38                 NA                -0.0976536   -0.2219655   0.0266584
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639   0.0901972
6 months    PROBIT          BELARUS                        >=38                 NA                 0.0050166   -0.0113914   0.0214246
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.0445481   -0.1457432   0.0566470
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0596138   -0.2115064   0.0922788
24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0211659   -0.0503285   0.0926602
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0040219   -0.0731506   0.0811943
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0254372   -0.0672030   0.1180773
24 months   MAL-ED          INDIA                          >=38                 NA                 0.0828876   -0.0568058   0.2225809
24 months   MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113   0.2045776
24 months   PROBIT          BELARUS                        >=38                 NA                 0.0028430   -0.0337048   0.0393909


### Parameter: PAF


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.0116162   -0.4996215   0.3485673
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0012153   -0.7438283   0.4251543
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.2251523   -0.6230222   0.0751832
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0468022   -0.1820264   0.2313318
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.0238739   -0.3000721   0.2671006
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.3822844   -0.2683064   0.6991479
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0254873   -0.4024951   0.3228674
6 months    MAL-ED          INDIA                          >=38                 NA                -0.5421456   -1.4008101   0.0094123
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159   0.2832519
6 months    PROBIT          BELARUS                        >=38                 NA                 0.1317687   -0.4117012   0.4660162
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.1570968   -0.5792103   0.1521883
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1389770   -0.5545219   0.1654871
24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0261310   -0.0662908   0.1105421
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0064258   -0.1248423   0.1223750
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0540988   -0.1654191   0.2322683
24 months   MAL-ED          INDIA                          >=38                 NA                 0.1991776   -0.2188934   0.4738534
24 months   MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032   0.5216242
24 months   PROBIT          BELARUS                        >=38                 NA                 0.0424175   -0.6742208   0.4523039
