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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        fage       swasted   n_cell       n
----------  --------------  -----------------------------  --------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38             0      207     735
Birth       COHORTS         GUATEMALA                      >=38             1       15     735
Birth       COHORTS         GUATEMALA                      <32              0      306     735
Birth       COHORTS         GUATEMALA                      <32              1       31     735
Birth       COHORTS         GUATEMALA                      [32-38)          0      163     735
Birth       COHORTS         GUATEMALA                      [32-38)          1       13     735
Birth       COHORTS         PHILIPPINES                    >=38             0      296    2797
Birth       COHORTS         PHILIPPINES                    >=38             1        7    2797
Birth       COHORTS         PHILIPPINES                    <32              0     1892    2797
Birth       COHORTS         PHILIPPINES                    <32              1       89    2797
Birth       COHORTS         PHILIPPINES                    [32-38)          0      494    2797
Birth       COHORTS         PHILIPPINES                    [32-38)          1       19    2797
Birth       MAL-ED          BANGLADESH                     >=38             0       58     128
Birth       MAL-ED          BANGLADESH                     >=38             1        3     128
Birth       MAL-ED          BANGLADESH                     <32              0       22     128
Birth       MAL-ED          BANGLADESH                     <32              1        1     128
Birth       MAL-ED          BANGLADESH                     [32-38)          0       42     128
Birth       MAL-ED          BANGLADESH                     [32-38)          1        2     128
Birth       MAL-ED          BRAZIL                         >=38             0        5      16
Birth       MAL-ED          BRAZIL                         >=38             1        0      16
Birth       MAL-ED          BRAZIL                         <32              0        1      16
Birth       MAL-ED          BRAZIL                         <32              1        0      16
Birth       MAL-ED          BRAZIL                         [32-38)          0       10      16
Birth       MAL-ED          BRAZIL                         [32-38)          1        0      16
Birth       MAL-ED          INDIA                          >=38             0        7      25
Birth       MAL-ED          INDIA                          >=38             1        0      25
Birth       MAL-ED          INDIA                          <32              0        8      25
Birth       MAL-ED          INDIA                          <32              1        0      25
Birth       MAL-ED          INDIA                          [32-38)          0       10      25
Birth       MAL-ED          INDIA                          [32-38)          1        0      25
Birth       MAL-ED          NEPAL                          >=38             0        2       9
Birth       MAL-ED          NEPAL                          >=38             1        0       9
Birth       MAL-ED          NEPAL                          <32              0        2       9
Birth       MAL-ED          NEPAL                          <32              1        0       9
Birth       MAL-ED          NEPAL                          [32-38)          0        4       9
Birth       MAL-ED          NEPAL                          [32-38)          1        1       9
Birth       MAL-ED          PERU                           >=38             0       23      67
Birth       MAL-ED          PERU                           >=38             1        0      67
Birth       MAL-ED          PERU                           <32              0       21      67
Birth       MAL-ED          PERU                           <32              1        0      67
Birth       MAL-ED          PERU                           [32-38)          0       23      67
Birth       MAL-ED          PERU                           [32-38)          1        0      67
Birth       MAL-ED          SOUTH AFRICA                   >=38             0       16      30
Birth       MAL-ED          SOUTH AFRICA                   >=38             1        0      30
Birth       MAL-ED          SOUTH AFRICA                   <32              0        5      30
Birth       MAL-ED          SOUTH AFRICA                   <32              1        0      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          0        9      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          1        0      30
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       17      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        9      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       18      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0      44
Birth       PROBIT          BELARUS                        >=38             0      575   13325
Birth       PROBIT          BELARUS                        >=38             1       29   13325
Birth       PROBIT          BELARUS                        <32              0     9939   13325
Birth       PROBIT          BELARUS                        <32              1      732   13325
Birth       PROBIT          BELARUS                        [32-38)          0     1934   13325
Birth       PROBIT          BELARUS                        [32-38)          1      116   13325
Birth       SAS-CompFeed    INDIA                          >=38             0       30    1101
Birth       SAS-CompFeed    INDIA                          >=38             1        4    1101
Birth       SAS-CompFeed    INDIA                          <32              0      901    1101
Birth       SAS-CompFeed    INDIA                          <32              1       22    1101
Birth       SAS-CompFeed    INDIA                          [32-38)          0      141    1101
Birth       SAS-CompFeed    INDIA                          [32-38)          1        3    1101
6 months    COHORTS         GUATEMALA                      >=38             0      274     930
6 months    COHORTS         GUATEMALA                      >=38             1        2     930
6 months    COHORTS         GUATEMALA                      <32              0      419     930
6 months    COHORTS         GUATEMALA                      <32              1        2     930
6 months    COHORTS         GUATEMALA                      [32-38)          0      232     930
6 months    COHORTS         GUATEMALA                      [32-38)          1        1     930
6 months    COHORTS         PHILIPPINES                    >=38             0      293    2622
6 months    COHORTS         PHILIPPINES                    >=38             1        6    2622
6 months    COHORTS         PHILIPPINES                    <32              0     1810    2622
6 months    COHORTS         PHILIPPINES                    <32              1       18    2622
6 months    COHORTS         PHILIPPINES                    [32-38)          0      486    2622
6 months    COHORTS         PHILIPPINES                    [32-38)          1        9    2622
6 months    LCNI-5          MALAWI                         >=38             0       26     106
6 months    LCNI-5          MALAWI                         >=38             1        0     106
6 months    LCNI-5          MALAWI                         <32              0       56     106
6 months    LCNI-5          MALAWI                         <32              1        0     106
6 months    LCNI-5          MALAWI                         [32-38)          0       24     106
6 months    LCNI-5          MALAWI                         [32-38)          1        0     106
6 months    MAL-ED          BANGLADESH                     >=38             0       68     150
6 months    MAL-ED          BANGLADESH                     >=38             1        1     150
6 months    MAL-ED          BANGLADESH                     <32              0       30     150
6 months    MAL-ED          BANGLADESH                     <32              1        0     150
6 months    MAL-ED          BANGLADESH                     [32-38)          0       51     150
6 months    MAL-ED          BANGLADESH                     [32-38)          1        0     150
6 months    MAL-ED          BRAZIL                         >=38             0       30      79
6 months    MAL-ED          BRAZIL                         >=38             1        0      79
6 months    MAL-ED          BRAZIL                         <32              0       18      79
6 months    MAL-ED          BRAZIL                         <32              1        0      79
6 months    MAL-ED          BRAZIL                         [32-38)          0       31      79
6 months    MAL-ED          BRAZIL                         [32-38)          1        0      79
6 months    MAL-ED          INDIA                          >=38             0       35     161
6 months    MAL-ED          INDIA                          >=38             1        1     161
6 months    MAL-ED          INDIA                          <32              0       52     161
6 months    MAL-ED          INDIA                          <32              1        1     161
6 months    MAL-ED          INDIA                          [32-38)          0       69     161
6 months    MAL-ED          INDIA                          [32-38)          1        3     161
6 months    MAL-ED          NEPAL                          >=38             0       17      79
6 months    MAL-ED          NEPAL                          >=38             1        0      79
6 months    MAL-ED          NEPAL                          <32              0       15      79
6 months    MAL-ED          NEPAL                          <32              1        0      79
6 months    MAL-ED          NEPAL                          [32-38)          0       47      79
6 months    MAL-ED          NEPAL                          [32-38)          1        0      79
6 months    MAL-ED          PERU                           >=38             0       27      83
6 months    MAL-ED          PERU                           >=38             1        0      83
6 months    MAL-ED          PERU                           <32              0       28      83
6 months    MAL-ED          PERU                           <32              1        0      83
6 months    MAL-ED          PERU                           [32-38)          0       28      83
6 months    MAL-ED          PERU                           [32-38)          1        0      83
6 months    MAL-ED          SOUTH AFRICA                   >=38             0       63      89
6 months    MAL-ED          SOUTH AFRICA                   >=38             1        1      89
6 months    MAL-ED          SOUTH AFRICA                   <32              0        9      89
6 months    MAL-ED          SOUTH AFRICA                   <32              1        0      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          0       16      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          1        0      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       37     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0     100
6 months    PROBIT          BELARUS                        >=38             0      697   15179
6 months    PROBIT          BELARUS                        >=38             1        4   15179
6 months    PROBIT          BELARUS                        <32              0    12171   15179
6 months    PROBIT          BELARUS                        <32              1        3   15179
6 months    PROBIT          BELARUS                        [32-38)          0     2302   15179
6 months    PROBIT          BELARUS                        [32-38)          1        2   15179
6 months    SAS-CompFeed    INDIA                          >=38             0       41    1331
6 months    SAS-CompFeed    INDIA                          >=38             1        3    1331
6 months    SAS-CompFeed    INDIA                          <32              0     1085    1331
6 months    SAS-CompFeed    INDIA                          <32              1       37    1331
6 months    SAS-CompFeed    INDIA                          [32-38)          0      162    1331
6 months    SAS-CompFeed    INDIA                          [32-38)          1        3    1331
6 months    SAS-FoodSuppl   INDIA                          >=38             0       38     380
6 months    SAS-FoodSuppl   INDIA                          >=38             1        2     380
6 months    SAS-FoodSuppl   INDIA                          <32              0      253     380
6 months    SAS-FoodSuppl   INDIA                          <32              1       11     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)          0       70     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)          1        6     380
24 months   COHORTS         GUATEMALA                      >=38             0      285    1032
24 months   COHORTS         GUATEMALA                      >=38             1        2    1032
24 months   COHORTS         GUATEMALA                      <32              0      493    1032
24 months   COHORTS         GUATEMALA                      <32              1        2    1032
24 months   COHORTS         GUATEMALA                      [32-38)          0      250    1032
24 months   COHORTS         GUATEMALA                      [32-38)          1        0    1032
24 months   COHORTS         PHILIPPINES                    >=38             0      268    2376
24 months   COHORTS         PHILIPPINES                    >=38             1        3    2376
24 months   COHORTS         PHILIPPINES                    <32              0     1653    2376
24 months   COHORTS         PHILIPPINES                    <32              1       17    2376
24 months   COHORTS         PHILIPPINES                    [32-38)          0      430    2376
24 months   COHORTS         PHILIPPINES                    [32-38)          1        5    2376
24 months   LCNI-5          MALAWI                         >=38             0       21      74
24 months   LCNI-5          MALAWI                         >=38             1        0      74
24 months   LCNI-5          MALAWI                         <32              0       37      74
24 months   LCNI-5          MALAWI                         <32              1        0      74
24 months   LCNI-5          MALAWI                         [32-38)          0       16      74
24 months   LCNI-5          MALAWI                         [32-38)          1        0      74
24 months   MAL-ED          BANGLADESH                     >=38             0       69     151
24 months   MAL-ED          BANGLADESH                     >=38             1        0     151
24 months   MAL-ED          BANGLADESH                     <32              0       30     151
24 months   MAL-ED          BANGLADESH                     <32              1        0     151
24 months   MAL-ED          BANGLADESH                     [32-38)          0       52     151
24 months   MAL-ED          BANGLADESH                     [32-38)          1        0     151
24 months   MAL-ED          BRAZIL                         >=38             0       30      79
24 months   MAL-ED          BRAZIL                         >=38             1        0      79
24 months   MAL-ED          BRAZIL                         <32              0       18      79
24 months   MAL-ED          BRAZIL                         <32              1        0      79
24 months   MAL-ED          BRAZIL                         [32-38)          0       31      79
24 months   MAL-ED          BRAZIL                         [32-38)          1        0      79
24 months   MAL-ED          INDIA                          >=38             0       36     161
24 months   MAL-ED          INDIA                          >=38             1        0     161
24 months   MAL-ED          INDIA                          <32              0       53     161
24 months   MAL-ED          INDIA                          <32              1        0     161
24 months   MAL-ED          INDIA                          [32-38)          0       72     161
24 months   MAL-ED          INDIA                          [32-38)          1        0     161
24 months   MAL-ED          NEPAL                          >=38             0       17      79
24 months   MAL-ED          NEPAL                          >=38             1        0      79
24 months   MAL-ED          NEPAL                          <32              0       15      79
24 months   MAL-ED          NEPAL                          <32              1        0      79
24 months   MAL-ED          NEPAL                          [32-38)          0       47      79
24 months   MAL-ED          NEPAL                          [32-38)          1        0      79
24 months   MAL-ED          PERU                           >=38             0       26      79
24 months   MAL-ED          PERU                           >=38             1        0      79
24 months   MAL-ED          PERU                           <32              0       26      79
24 months   MAL-ED          PERU                           <32              1        1      79
24 months   MAL-ED          PERU                           [32-38)          0       26      79
24 months   MAL-ED          PERU                           [32-38)          1        0      79
24 months   MAL-ED          SOUTH AFRICA                   >=38             0       65      89
24 months   MAL-ED          SOUTH AFRICA                   >=38             1        0      89
24 months   MAL-ED          SOUTH AFRICA                   <32              0        8      89
24 months   MAL-ED          SOUTH AFRICA                   <32              1        0      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          0       16      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          1        0      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       37     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0     100
24 months   PROBIT          BELARUS                        >=38             0      176    3847
24 months   PROBIT          BELARUS                        >=38             1        0    3847
24 months   PROBIT          BELARUS                        <32              0     3087    3847
24 months   PROBIT          BELARUS                        <32              1        6    3847
24 months   PROBIT          BELARUS                        [32-38)          0      577    3847
24 months   PROBIT          BELARUS                        [32-38)          1        1    3847


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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
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
![](/tmp/2913ae2c-525d-4a08-860e-630253e77415/a4684b5d-a22b-44ba-9e85-dc07b41adb43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2913ae2c-525d-4a08-860e-630253e77415/a4684b5d-a22b-44ba-9e85-dc07b41adb43/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2913ae2c-525d-4a08-860e-630253e77415/a4684b5d-a22b-44ba-9e85-dc07b41adb43/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2913ae2c-525d-4a08-860e-630253e77415/a4684b5d-a22b-44ba-9e85-dc07b41adb43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS   GUATEMALA     >=38                 NA                0.0675676   0.0345272   0.1006080
Birth      COHORTS   GUATEMALA     <32                  NA                0.0919881   0.0611108   0.1228655
Birth      COHORTS   GUATEMALA     [32-38)              NA                0.0738636   0.0351967   0.1125306
Birth      COHORTS   PHILIPPINES   >=38                 NA                0.0231023   0.0061840   0.0400206
Birth      COHORTS   PHILIPPINES   <32                  NA                0.0449268   0.0358034   0.0540502
Birth      COHORTS   PHILIPPINES   [32-38)              NA                0.0370370   0.0206918   0.0533822
Birth      PROBIT    BELARUS       >=38                 NA                0.0480132   0.0151580   0.0808685
Birth      PROBIT    BELARUS       <32                  NA                0.0685971   0.0348527   0.1023416
Birth      PROBIT    BELARUS       [32-38)              NA                0.0565854   0.0246133   0.0885574
6 months   COHORTS   PHILIPPINES   >=38                 NA                0.0200669   0.0041692   0.0359646
6 months   COHORTS   PHILIPPINES   <32                  NA                0.0098468   0.0053195   0.0143742
6 months   COHORTS   PHILIPPINES   [32-38)              NA                0.0181818   0.0064095   0.0299542


### Parameter: E(Y)


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS   GUATEMALA     NA                   NA                0.0802721   0.0606153   0.0999289
Birth      COHORTS   PHILIPPINES   NA                   NA                0.0411155   0.0337557   0.0484753
Birth      PROBIT    BELARUS       NA                   NA                0.0658161   0.0328925   0.0987397
6 months   COHORTS   PHILIPPINES   NA                   NA                0.0125858   0.0083180   0.0168536


### Parameter: RR


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth      COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      COHORTS   GUATEMALA     <32                  >=38              1.3614243   0.7523239   2.463668
Birth      COHORTS   GUATEMALA     [32-38)              >=38              1.0931818   0.5340527   2.237694
Birth      COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      COHORTS   PHILIPPINES   <32                  >=38              1.9446888   0.9095066   4.158095
Birth      COHORTS   PHILIPPINES   [32-38)              >=38              1.6031746   0.6817905   3.769734
Birth      PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      PROBIT    BELARUS       <32                  >=38              1.4287127   1.0074483   2.026129
Birth      PROBIT    BELARUS       [32-38)              >=38              1.1785366   0.8258441   1.681853
6 months   COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6 months   COHORTS   PHILIPPINES   <32                  >=38              0.4907002   0.1963401   1.226375
6 months   COHORTS   PHILIPPINES   [32-38)              >=38              0.9060606   0.3256890   2.520643


### Parameter: PAR


agecat     studyid   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth      COHORTS   GUATEMALA     >=38                 NA                 0.0127045   -0.0159066   0.0413157
Birth      COHORTS   PHILIPPINES   >=38                 NA                 0.0180132    0.0013284   0.0346979
Birth      PROBIT    BELARUS       >=38                 NA                 0.0178029    0.0024594   0.0331463
6 months   COHORTS   PHILIPPINES   >=38                 NA                -0.0074811   -0.0220862   0.0071240


### Parameter: PAF


agecat     studyid   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth      COHORTS   GUATEMALA     >=38                 NA                 0.1582684   -0.2827554   0.4476640
Birth      COHORTS   PHILIPPINES   >=38                 NA                 0.4381116   -0.1420289   0.7235459
Birth      PROBIT    BELARUS       >=38                 NA                 0.2704943   -0.0139128   0.4751239
6 months   COHORTS   PHILIPPINES   >=38                 NA                -0.5944056   -2.2664745   0.2217514
