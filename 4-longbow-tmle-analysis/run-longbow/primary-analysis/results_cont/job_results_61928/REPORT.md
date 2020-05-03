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

agecat      studyid         country                        fage       n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA                      >=38          245     823  haz              
Birth       COHORTS         GUATEMALA                      <32           380     823  haz              
Birth       COHORTS         GUATEMALA                      [32-38)       198     823  haz              
Birth       COHORTS         PHILIPPINES                    >=38          328    2944  haz              
Birth       COHORTS         PHILIPPINES                    <32          2079    2944  haz              
Birth       COHORTS         PHILIPPINES                    [32-38)       537    2944  haz              
Birth       MAL-ED          BANGLADESH                     >=38           63     133  haz              
Birth       MAL-ED          BANGLADESH                     <32            25     133  haz              
Birth       MAL-ED          BANGLADESH                     [32-38)        45     133  haz              
Birth       MAL-ED          BRAZIL                         >=38            6      18  haz              
Birth       MAL-ED          BRAZIL                         <32             1      18  haz              
Birth       MAL-ED          BRAZIL                         [32-38)        11      18  haz              
Birth       MAL-ED          INDIA                          >=38            7      27  haz              
Birth       MAL-ED          INDIA                          <32             9      27  haz              
Birth       MAL-ED          INDIA                          [32-38)        11      27  haz              
Birth       MAL-ED          NEPAL                          >=38            2       9  haz              
Birth       MAL-ED          NEPAL                          <32             2       9  haz              
Birth       MAL-ED          NEPAL                          [32-38)         5       9  haz              
Birth       MAL-ED          PERU                           >=38           23      69  haz              
Birth       MAL-ED          PERU                           <32            22      69  haz              
Birth       MAL-ED          PERU                           [32-38)        24      69  haz              
Birth       MAL-ED          SOUTH AFRICA                   >=38           17      31  haz              
Birth       MAL-ED          SOUTH AFRICA                   <32             5      31  haz              
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      31  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46  haz              
Birth       PROBIT          BELARUS                        >=38          606   13399  haz              
Birth       PROBIT          BELARUS                        <32         10732   13399  haz              
Birth       PROBIT          BELARUS                        [32-38)      2061   13399  haz              
Birth       SAS-CompFeed    INDIA                          >=38           40    1249  haz              
Birth       SAS-CompFeed    INDIA                          <32          1045    1249  haz              
Birth       SAS-CompFeed    INDIA                          [32-38)       164    1249  haz              
6 months    COHORTS         GUATEMALA                      >=38          275     929  haz              
6 months    COHORTS         GUATEMALA                      <32           421     929  haz              
6 months    COHORTS         GUATEMALA                      [32-38)       233     929  haz              
6 months    COHORTS         PHILIPPINES                    >=38          300    2624  haz              
6 months    COHORTS         PHILIPPINES                    <32          1829    2624  haz              
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2624  haz              
6 months    LCNI-5          MALAWI                         >=38           26     106  haz              
6 months    LCNI-5          MALAWI                         <32            56     106  haz              
6 months    LCNI-5          MALAWI                         [32-38)        24     106  haz              
6 months    MAL-ED          BANGLADESH                     >=38           69     150  haz              
6 months    MAL-ED          BANGLADESH                     <32            30     150  haz              
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150  haz              
6 months    MAL-ED          BRAZIL                         >=38           30      79  haz              
6 months    MAL-ED          BRAZIL                         <32            18      79  haz              
6 months    MAL-ED          BRAZIL                         [32-38)        31      79  haz              
6 months    MAL-ED          INDIA                          >=38           36     161  haz              
6 months    MAL-ED          INDIA                          <32            53     161  haz              
6 months    MAL-ED          INDIA                          [32-38)        72     161  haz              
6 months    MAL-ED          NEPAL                          >=38           17      79  haz              
6 months    MAL-ED          NEPAL                          <32            15      79  haz              
6 months    MAL-ED          NEPAL                          [32-38)        47      79  haz              
6 months    MAL-ED          PERU                           >=38           27      83  haz              
6 months    MAL-ED          PERU                           <32            28      83  haz              
6 months    MAL-ED          PERU                           [32-38)        28      83  haz              
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89  haz              
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89  haz              
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  haz              
6 months    PROBIT          BELARUS                        >=38          701   15182  haz              
6 months    PROBIT          BELARUS                        <32         12175   15182  haz              
6 months    PROBIT          BELARUS                        [32-38)      2306   15182  haz              
6 months    SAS-CompFeed    INDIA                          >=38           44    1333  haz              
6 months    SAS-CompFeed    INDIA                          <32          1125    1333  haz              
6 months    SAS-CompFeed    INDIA                          [32-38)       164    1333  haz              
6 months    SAS-FoodSuppl   INDIA                          >=38           39     380  haz              
6 months    SAS-FoodSuppl   INDIA                          <32           264     380  haz              
6 months    SAS-FoodSuppl   INDIA                          [32-38)        77     380  haz              
24 months   COHORTS         GUATEMALA                      >=38          285    1021  haz              
24 months   COHORTS         GUATEMALA                      <32           491    1021  haz              
24 months   COHORTS         GUATEMALA                      [32-38)       245    1021  haz              
24 months   COHORTS         PHILIPPINES                    >=38          270    2371  haz              
24 months   COHORTS         PHILIPPINES                    <32          1666    2371  haz              
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2371  haz              
24 months   LCNI-5          MALAWI                         >=38           21      74  haz              
24 months   LCNI-5          MALAWI                         <32            37      74  haz              
24 months   LCNI-5          MALAWI                         [32-38)        16      74  haz              
24 months   MAL-ED          BANGLADESH                     >=38           69     151  haz              
24 months   MAL-ED          BANGLADESH                     <32            30     151  haz              
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151  haz              
24 months   MAL-ED          BRAZIL                         >=38           30      79  haz              
24 months   MAL-ED          BRAZIL                         <32            18      79  haz              
24 months   MAL-ED          BRAZIL                         [32-38)        31      79  haz              
24 months   MAL-ED          INDIA                          >=38           36     161  haz              
24 months   MAL-ED          INDIA                          <32            53     161  haz              
24 months   MAL-ED          INDIA                          [32-38)        72     161  haz              
24 months   MAL-ED          NEPAL                          >=38           17      79  haz              
24 months   MAL-ED          NEPAL                          <32            15      79  haz              
24 months   MAL-ED          NEPAL                          [32-38)        47      79  haz              
24 months   MAL-ED          PERU                           >=38           26      79  haz              
24 months   MAL-ED          PERU                           <32            27      79  haz              
24 months   MAL-ED          PERU                           [32-38)        26      79  haz              
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89  haz              
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89  haz              
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  haz              
24 months   PROBIT          BELARUS                        >=38          178    3909  haz              
24 months   PROBIT          BELARUS                        <32          3143    3909  haz              
24 months   PROBIT          BELARUS                        [32-38)       588    3909  haz              


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
![](/tmp/22386b72-9fc3-4cce-8ac7-ea1d0845a812/8178c649-caae-40d1-a84d-940ff03ce47a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/22386b72-9fc3-4cce-8ac7-ea1d0845a812/8178c649-caae-40d1-a84d-940ff03ce47a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/22386b72-9fc3-4cce-8ac7-ea1d0845a812/8178c649-caae-40d1-a84d-940ff03ce47a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.3878066    0.2031740    0.5724393
Birth       COHORTS         GUATEMALA                      <32                  NA                 0.1243698   -0.0179268    0.2666663
Birth       COHORTS         GUATEMALA                      [32-38)              NA                 0.2020205   -0.0573444    0.4613855
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.1879427   -0.3247854   -0.0511001
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.2567169   -0.3179644   -0.1954693
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.4180248   -0.6224818   -0.2135677
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9441518   -1.1820540   -0.7062496
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.1697057   -1.5490752   -0.7903362
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9539175   -1.2651437   -0.6426912
Birth       MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       MAL-ED          PERU                           >=38                 NA                -0.4667783   -0.7768208   -0.1567358
Birth       MAL-ED          PERU                           <32                  NA                -1.1058944   -1.5725310   -0.6392577
Birth       MAL-ED          PERU                           [32-38)              NA                -1.2446216   -1.5506393   -0.9386039
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       PROBIT          BELARUS                        >=38                 NA                 1.2395054    1.1183525    1.3606583
Birth       PROBIT          BELARUS                        <32                  NA                 1.3087212    1.1544951    1.4629473
Birth       PROBIT          BELARUS                        [32-38)              NA                 1.2860938    1.0911387    1.4810490
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
6 months    COHORTS         GUATEMALA                      >=38                 NA                -1.6909263   -1.8694559   -1.5123968
6 months    COHORTS         GUATEMALA                      <32                  NA                -1.8519463   -1.9721189   -1.7317738
6 months    COHORTS         GUATEMALA                      [32-38)              NA                -1.9397339   -2.1559965   -1.7234714
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -1.2897012   -1.4532660   -1.1261364
6 months    COHORTS         PHILIPPINES                    <32                  NA                -1.0908962   -1.1552559   -1.0265366
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -1.1926946   -1.3657470   -1.0196422
6 months    LCNI-5          MALAWI                         >=38                 NA                -1.4533654   -1.7066840   -1.2000467
6 months    LCNI-5          MALAWI                         <32                  NA                -1.6049222   -1.9067152   -1.3031293
6 months    LCNI-5          MALAWI                         [32-38)              NA                -1.8514528   -2.1817947   -1.5211109
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -1.0214526   -1.2167086   -0.8261966
6 months    MAL-ED          BANGLADESH                     <32                  NA                -1.5899277   -1.9147027   -1.2651528
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -1.2131194   -1.4352009   -0.9910379
6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.2889160   -0.0095899    0.5874219
6 months    MAL-ED          BRAZIL                         <32                  NA                -0.2800349   -0.9103643    0.3502945
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.0842760   -0.2404400    0.4089921
6 months    MAL-ED          INDIA                          >=38                 NA                -1.3386098   -1.8460716   -0.8311480
6 months    MAL-ED          INDIA                          <32                  NA                -1.3435269   -1.6055672   -1.0814865
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.9795282   -1.1840405   -0.7750158
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.5077360   -1.1935645    0.1780925
6 months    MAL-ED          NEPAL                          <32                  NA                -0.4771134   -0.7708027   -0.1834241
6 months    MAL-ED          NEPAL                          [32-38)              NA                -0.8493328   -1.0890219   -0.6096436
6 months    MAL-ED          PERU                           >=38                 NA                -1.0482251   -1.2525345   -0.8439158
6 months    MAL-ED          PERU                           <32                  NA                -1.3692472   -1.8231232   -0.9153712
6 months    MAL-ED          PERU                           [32-38)              NA                -1.5626254   -2.0567308   -1.0685200
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367188   -1.0969700   -0.5764675
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4447889   -1.7360375   -1.1535403
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6791830   -2.2983966   -1.0599694
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4405024   -1.7262669   -1.1547380
6 months    PROBIT          BELARUS                        >=38                 NA                 0.1689171    0.0942250    0.2436093
6 months    PROBIT          BELARUS                        <32                  NA                 0.1014960    0.0092020    0.1937900
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.1065841   -0.0296387    0.2428068
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.8326186   -2.3228415   -1.3423957
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -2.0601168   -2.2261877   -1.8940459
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.8686959   -2.4011770   -1.3362147
24 months   COHORTS         GUATEMALA                      >=38                 NA                -2.8540692   -3.0251277   -2.6830106
24 months   COHORTS         GUATEMALA                      <32                  NA                -2.8192058   -2.9213480   -2.7170635
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -3.0750744   -3.2641423   -2.8860064
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -2.5577168   -2.7477821   -2.3676516
24 months   COHORTS         PHILIPPINES                    <32                  NA                -2.3497064   -2.4173373   -2.2820754
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -2.3882695   -2.5855815   -2.1909575
24 months   LCNI-5          MALAWI                         >=38                 NA                -1.7156456   -2.0522728   -1.3790184
24 months   LCNI-5          MALAWI                         <32                  NA                -1.8827650   -2.2080950   -1.5574350
24 months   LCNI-5          MALAWI                         [32-38)              NA                -1.6111989   -2.1596949   -1.0627028
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -1.9597881   -2.2156879   -1.7038883
24 months   MAL-ED          BANGLADESH                     <32                  NA                -2.2315391   -2.4851503   -1.9779280
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -2.0841219   -2.3996583   -1.7685855
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.3872920    0.0970936    0.6774904
24 months   MAL-ED          BRAZIL                         <32                  NA                -0.0703991   -0.5903721    0.4495738
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0533607   -0.3561673    0.4628887
24 months   MAL-ED          INDIA                          >=38                 NA                -2.0071271   -2.4244413   -1.5898128
24 months   MAL-ED          INDIA                          <32                  NA                -2.0034009   -2.3712422   -1.6355596
24 months   MAL-ED          INDIA                          [32-38)              NA                -1.8352427   -2.1381878   -1.5322975
24 months   MAL-ED          NEPAL                          >=38                 NA                -1.3189579   -1.8039083   -0.8340075
24 months   MAL-ED          NEPAL                          <32                  NA                -1.4833902   -2.0125645   -0.9542158
24 months   MAL-ED          NEPAL                          [32-38)              NA                -1.6111434   -1.8360853   -1.3862014
24 months   MAL-ED          PERU                           >=38                 NA                -1.6263521   -1.9430269   -1.3096774
24 months   MAL-ED          PERU                           <32                  NA                -1.6008671   -1.9822108   -1.2195234
24 months   MAL-ED          PERU                           [32-38)              NA                -1.8736846   -2.3576014   -1.3897679
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6223542   -2.8925660   -2.3521424
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -3.0213705   -3.5730724   -2.4696685
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8643904   -3.2164726   -2.5123081
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1768048   -0.4863668    0.1327571
24 months   PROBIT          BELARUS                        <32                  NA                -0.1383864   -0.4456487    0.1688758
24 months   PROBIT          BELARUS                        [32-38)              NA                -0.2033736   -0.4437763    0.0370291


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      NA                   NA                 0.1377035    0.0520086    0.2233984
Birth       COHORTS         PHILIPPINES                    NA                   NA                -0.2468988   -0.2865742   -0.2072233
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.0100752   -1.1744939   -0.8456565
Birth       MAL-ED          INDIA                          NA                   NA                -1.3522222   -1.7800602   -0.9243843
Birth       MAL-ED          PERU                           NA                   NA                -0.9334783   -1.1468994   -0.7200571
Birth       MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7345161   -1.1414567   -0.3275756
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.0947826   -1.3988341   -0.7907311
Birth       PROBIT          BELARUS                        NA                   NA                 1.3197761    1.1597902    1.4797620
Birth       SAS-CompFeed    INDIA                          NA                   NA                -1.4300160   -1.5090211   -1.3510109
6 months    COHORTS         GUATEMALA                      NA                   NA                -1.8068353   -1.8758487   -1.7378219
6 months    COHORTS         PHILIPPINES                    NA                   NA                -1.1421265   -1.1845116   -1.0997415
6 months    LCNI-5          MALAWI                         NA                   NA                -1.6211321   -1.8052501   -1.4370141
6 months    MAL-ED          BANGLADESH                     NA                   NA                -1.1980333   -1.3314438   -1.0646229
6 months    MAL-ED          BRAZIL                         NA                   NA                 0.0543249   -0.1697391    0.2783889
6 months    MAL-ED          INDIA                          NA                   NA                -1.1778882   -1.3228601   -1.0329163
6 months    MAL-ED          NEPAL                          NA                   NA                -0.7277004   -0.9122329   -0.5431679
6 months    MAL-ED          PERU                           NA                   NA                -1.3317470   -1.5395361   -1.1239579
6 months    MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9078464   -1.1231179   -0.6925750
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4744833   -1.6639782   -1.2849884
6 months    PROBIT          BELARUS                        NA                   NA                 0.1066722    0.0154121    0.1979322
6 months    SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   COHORTS         GUATEMALA                      NA                   NA                -2.9828012   -3.0482527   -2.9173497
24 months   COHORTS         PHILIPPINES                    NA                   NA                -2.4204386   -2.4659064   -2.3749708
24 months   LCNI-5          MALAWI                         NA                   NA                -1.7832432   -1.9856110   -1.5808754
24 months   MAL-ED          BANGLADESH                     NA                   NA                -1.9893377   -2.1309533   -1.8477222
24 months   MAL-ED          BRAZIL                         NA                   NA                 0.1366034   -0.0878045    0.3610113
24 months   MAL-ED          INDIA                          NA                   NA                -1.8803727   -2.0319827   -1.7287626
24 months   MAL-ED          NEPAL                          NA                   NA                -1.5368987   -1.7259939   -1.3478035
24 months   MAL-ED          PERU                           NA                   NA                -1.7017511   -1.8926845   -1.5108176
24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4819850   -1.6947019   -1.2692681
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.7648500   -2.9586982   -2.5710018
24 months   PROBIT          BELARUS                        NA                   NA                -0.1382122   -0.4196601    0.1432356


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.2634369   -0.4969141   -0.0299596
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.1857861   -0.5042361    0.1326639
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.0687741   -0.2183307    0.0807825
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.2300820   -0.4760658    0.0159018
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.2255539   -0.6749266    0.2238188
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0097656   -0.4050503    0.3855190
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.6391160   -1.2012638   -0.0769683
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.7778433   -1.2157209   -0.3399656
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38               0.2445882   -0.8080795    1.2972560
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2527451   -1.0999063    0.5944161
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2290058   -0.9999691    0.5419574
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.3632164   -0.3239497    1.0503825
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38               0.0692158   -0.0249658    0.1633975
Birth       PROBIT          BELARUS                        [32-38)              >=38               0.0465884   -0.0970367    0.1902136
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38              -0.2475759   -0.5141574    0.0190057
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3693259   -0.7549031    0.0162513
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38              -0.1610200   -0.3760141    0.0539741
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.2488076   -0.5295242    0.0319090
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38               0.1988050    0.0229387    0.3746713
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38               0.0970066   -0.1411676    0.3351809
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.1515569   -0.5489215    0.2458077
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.3980875   -0.8173810    0.0212061
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.5684751   -0.9505234   -0.1864268
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1916668   -0.4883033    0.1049697
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.5689509   -1.2502139    0.1123122
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.2046400   -0.6453137    0.2360338
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.0049171   -0.5767183    0.5668842
6 months    MAL-ED          INDIA                          [32-38)              >=38               0.3590816   -0.1882597    0.9064230
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38               0.0306226   -0.7164083    0.7776535
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.3415968   -1.0684382    0.3852447
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.3210221   -0.8205766    0.1785325
6 months    MAL-ED          PERU                           [32-38)              >=38              -0.5144002   -1.0502352    0.0214348
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367188   -0.4472439    0.7206814
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2343942   -0.9218424    0.4530540
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0042864   -0.4041530    0.4127259
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0674211   -0.1501406    0.0152984
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0623331   -0.1746966    0.0500305
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2274982   -0.7446072    0.2896108
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0360773   -0.7598183    0.6876637
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0348634   -0.1639783    0.2337050
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.2210052   -0.4756901    0.0336797
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.2080104    0.0061967    0.4098242
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.1694473   -0.1046167    0.4435112
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.1671194   -0.6384033    0.3041645
24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.1044467   -0.5418667    0.7507602
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.2717510   -0.6355764    0.0920744
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1243338   -0.5242391    0.2755715
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.4576911   -1.0543480    0.1389657
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.3339313   -0.8397897    0.1719271
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38               0.0037261   -0.5484560    0.5559083
24 months   MAL-ED          INDIA                          [32-38)              >=38               0.1718844   -0.3434829    0.6872517
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.1644323   -0.8846717    0.5558072
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.2921855   -0.8284057    0.2440347
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38               0.0254851   -0.4671574    0.5181275
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.2473325   -0.8247674    0.3301024
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3990163   -1.0160552    0.2180227
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2420362   -0.6891988    0.2051265
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38               0.0384184   -0.3698177    0.4466544
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0265687   -0.4086530    0.3555156


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.2501031   -0.4231771   -0.0770292
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0589560   -0.1932116    0.0752995
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0659234   -0.2429524    0.1111057
Birth       MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       MAL-ED          PERU                           >=38                 NA                -0.4666999   -0.7557772   -0.1776227
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       PROBIT          BELARUS                        >=38                 NA                 0.0802707   -0.0170822    0.1776236
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.1159090   -0.2830482    0.0512303
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.1475747   -0.0129863    0.3081357
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1677667   -0.4323605    0.0968270
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.1765807   -0.3224595   -0.0307020
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.2345911   -0.4949061    0.0257240
6 months    MAL-ED          INDIA                          >=38                 NA                 0.1607216   -0.2961898    0.6176330
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.2199644   -0.8567301    0.4168013
6 months    MAL-ED          PERU                           >=38                 NA                -0.2835219   -0.5330028   -0.0340409
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0296945   -0.2365515    0.1771626
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0622450   -0.1379626    0.0134727
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0660656   -0.5497175    0.4175863
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.1287320   -0.2913530    0.0338890
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.1372782   -0.0486846    0.3232410
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0675976   -0.3757556    0.2405603
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0295496   -0.2316504    0.1725511
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.2506886   -0.5228760    0.0214988
24 months   MAL-ED          INDIA                          >=38                 NA                 0.1267544   -0.2600516    0.5135604
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.2179408   -0.6471256    0.2112439
24 months   MAL-ED          PERU                           >=38                 NA                -0.0753989   -0.3690426    0.2182448
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1424958   -0.3572121    0.0722205
24 months   PROBIT          BELARUS                        >=38                 NA                 0.0385926   -0.3370923    0.4142775
