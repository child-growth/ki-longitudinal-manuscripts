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
![](/tmp/b5e03bbf-a5e6-4358-974a-582e8b41a616/5291e5d6-7726-4f81-93b1-286de923edb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b5e03bbf-a5e6-4358-974a-582e8b41a616/5291e5d6-7726-4f81-93b1-286de923edb2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b5e03bbf-a5e6-4358-974a-582e8b41a616/5291e5d6-7726-4f81-93b1-286de923edb2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.4264179    0.2315163    0.6213194
Birth       COHORTS         GUATEMALA                      <32                  NA                 0.1451306   -0.0035276    0.2937888
Birth       COHORTS         GUATEMALA                      [32-38)              NA                 0.1905126   -0.0498336    0.4308588
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.2000224   -0.3443426   -0.0557023
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.2608036   -0.3208270   -0.2007803
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.3747897   -0.5695659   -0.1800135
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9428112   -1.1792017   -0.7064207
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.1983557   -1.5572705   -0.8394410
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9330069   -1.2406052   -0.6254087
Birth       MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       MAL-ED          PERU                           >=38                 NA                -0.3814058   -0.6773458   -0.0854659
Birth       MAL-ED          PERU                           <32                  NA                -1.2231938   -1.6869205   -0.7594670
Birth       MAL-ED          PERU                           [32-38)              NA                -1.2093852   -1.4924767   -0.9262936
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       PROBIT          BELARUS                        >=38                 NA                 1.2357190    1.1153192    1.3561187
Birth       PROBIT          BELARUS                        <32                  NA                 1.3078403    1.1545233    1.4611573
Birth       PROBIT          BELARUS                        [32-38)              NA                 1.3019605    1.1116410    1.4922800
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
6 months    COHORTS         GUATEMALA                      >=38                 NA                -1.7556257   -1.9345872   -1.5766643
6 months    COHORTS         GUATEMALA                      <32                  NA                -1.8345487   -1.9636628   -1.7054346
6 months    COHORTS         GUATEMALA                      [32-38)              NA                -1.9493581   -2.1351453   -1.7635710
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -1.2401440   -1.4085661   -1.0717219
6 months    COHORTS         PHILIPPINES                    <32                  NA                -1.0987391   -1.1608033   -1.0366750
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -1.1794563   -1.3365296   -1.0223831
6 months    LCNI-5          MALAWI                         >=38                 NA                -1.4475649   -1.7277841   -1.1673457
6 months    LCNI-5          MALAWI                         <32                  NA                -1.6004543   -1.9054576   -1.2954509
6 months    LCNI-5          MALAWI                         [32-38)              NA                -1.8458060   -2.1817879   -1.5098242
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -1.0375385   -1.2412457   -0.8338314
6 months    MAL-ED          BANGLADESH                     <32                  NA                -1.5850173   -1.8855372   -1.2844975
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -1.1911592   -1.4170189   -0.9652995
6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.3049106    0.0057054    0.6041158
6 months    MAL-ED          BRAZIL                         <32                  NA                -0.3151314   -1.1043138    0.4740510
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.0731640   -0.2358914    0.3822193
6 months    MAL-ED          INDIA                          >=38                 NA                -1.3229316   -1.8469580   -0.7989052
6 months    MAL-ED          INDIA                          <32                  NA                -1.3475995   -1.6336157   -1.0615833
6 months    MAL-ED          INDIA                          [32-38)              NA                -1.0001693   -1.2205034   -0.7798351
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.4181234   -1.2513773    0.4151304
6 months    MAL-ED          NEPAL                          <32                  NA                -0.2546119   -0.5030404   -0.0061834
6 months    MAL-ED          NEPAL                          [32-38)              NA                -0.8676164   -1.0977184   -0.6375144
6 months    MAL-ED          PERU                           >=38                 NA                -1.0248274   -1.2314566   -0.8181982
6 months    MAL-ED          PERU                           <32                  NA                -1.3045886   -1.7691719   -0.8400053
6 months    MAL-ED          PERU                           [32-38)              NA                -1.5448299   -2.0940154   -0.9956445
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367188   -1.0969700   -0.5764675
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4785365   -1.7652447   -1.1918284
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6737298   -2.2756031   -1.0718564
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4504746   -1.7394342   -1.1615150
6 months    PROBIT          BELARUS                        >=38                 NA                 0.1435142    0.0719012    0.2151271
6 months    PROBIT          BELARUS                        <32                  NA                 0.1006559    0.0074282    0.1938836
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.1161362   -0.0176163    0.2498888
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.8081199   -2.3508768   -1.2653630
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -2.0447200   -2.2077533   -1.8816867
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.8559490   -2.3630178   -1.3488802
24 months   COHORTS         GUATEMALA                      >=38                 NA                -2.8238147   -2.9768137   -2.6708157
24 months   COHORTS         GUATEMALA                      <32                  NA                -2.8660235   -2.9619192   -2.7701279
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -3.0879900   -3.2743110   -2.9016690
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -2.5442166   -2.7404008   -2.3480323
24 months   COHORTS         PHILIPPINES                    <32                  NA                -2.3430799   -2.4104426   -2.2757171
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -2.3162656   -2.4924663   -2.1400650
24 months   LCNI-5          MALAWI                         >=38                 NA                -1.7316426   -2.0777880   -1.3854971
24 months   LCNI-5          MALAWI                         <32                  NA                -1.8756978   -2.1779238   -1.5734717
24 months   LCNI-5          MALAWI                         [32-38)              NA                -1.5567588   -2.1005686   -1.0129489
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -1.9715109   -2.1961630   -1.7468587
24 months   MAL-ED          BANGLADESH                     <32                  NA                -2.6763985   -2.9120785   -2.4407184
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -1.9981432   -2.3097346   -1.6865518
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.3995807    0.1262798    0.6728816
24 months   MAL-ED          BRAZIL                         <32                  NA                -0.0355983   -0.5469459    0.4757493
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0119371   -0.3992985    0.4231727
24 months   MAL-ED          INDIA                          >=38                 NA                -2.0115089   -2.4144192   -1.6085986
24 months   MAL-ED          INDIA                          <32                  NA                -1.9973772   -2.3109559   -1.6837985
24 months   MAL-ED          INDIA                          [32-38)              NA                -1.8168002   -2.1039210   -1.5296793
24 months   MAL-ED          NEPAL                          >=38                 NA                -1.1618555   -1.5157696   -0.8079413
24 months   MAL-ED          NEPAL                          <32                  NA                -1.3653884   -1.8841106   -0.8466663
24 months   MAL-ED          NEPAL                          [32-38)              NA                -1.5654653   -1.7977716   -1.3331590
24 months   MAL-ED          PERU                           >=38                 NA                -1.6472788   -1.9586958   -1.3358618
24 months   MAL-ED          PERU                           <32                  NA                -1.6125887   -1.9707895   -1.2543880
24 months   MAL-ED          PERU                           [32-38)              NA                -1.7579670   -2.2463055   -1.2696285
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6131705   -2.8726443   -2.3536966
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -3.1056816   -3.6407138   -2.5706495
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8251476   -3.1820552   -2.4682399
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1471548   -0.4683307    0.1740211
24 months   PROBIT          BELARUS                        <32                  NA                -0.1382442   -0.4455086    0.1690201
24 months   PROBIT          BELARUS                        [32-38)              NA                -0.2095198   -0.4545027    0.0354630


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      NA                   NA                 0.1377035    0.0520086    0.2233984
Birth       COHORTS         PHILIPPINES                    NA                   NA                -0.2468988   -0.2865742   -0.2072233
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.0100752   -1.1744939   -0.8456565
Birth       MAL-ED          INDIA                          NA                   NA                -1.3522222   -1.7800602   -0.9243843
Birth       MAL-ED          PERU                           NA                   NA                -0.9334783   -1.1468995   -0.7200571
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
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.2812873   -0.5271027   -0.0354718
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.2359053   -0.5452820    0.0734714
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.0607812   -0.2168155    0.0952531
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.1747672   -0.4170941    0.0675597
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.2555445   -0.6870752    0.1759862
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38               0.0098043   -0.3810595    0.4006680
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.8417879   -1.3799597   -0.3036162
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.8279793   -1.2367602   -0.4191985
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38               0.2445882   -0.8080795    1.2972560
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2527451   -1.0999063    0.5944161
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2290058   -0.9999691    0.5419574
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.3632164   -0.3239497    1.0503825
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38               0.0721214   -0.0241280    0.1683707
Birth       PROBIT          BELARUS                        [32-38)              >=38               0.0662416   -0.0698173    0.2023004
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38              -0.2475759   -0.5141574    0.0190057
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3693259   -0.7549031    0.0162513
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0789230   -0.2995421    0.1416961
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.1937324   -0.4521417    0.0646769
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38               0.1414049   -0.0376598    0.3204695
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38               0.0606876   -0.1693406    0.2907159
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.1528894   -0.5698538    0.2640750
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.3982412   -0.8361798    0.0396975
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.5474788   -0.9107423   -0.1842153
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1536206   -0.4582373    0.1509960
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.6200420   -1.4580585    0.2179745
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.2317466   -0.6620438    0.1985505
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.0246679   -0.6226518    0.5733161
6 months    MAL-ED          INDIA                          [32-38)              >=38               0.3227624   -0.2466069    0.8921317
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38               0.1635115   -0.7040220    1.0310450
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.4494930   -1.3152729    0.4162869
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.2797612   -0.7900482    0.2305258
6 months    MAL-ED          PERU                           [32-38)              >=38              -0.5200026   -1.1085427    0.0685375
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367188   -0.4472439    0.7206814
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1951932   -0.8647380    0.4743515
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0280619   -0.3783230    0.4344467
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0428583   -0.1298097    0.0440932
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0273779   -0.1370585    0.0823026
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2366001   -0.8028464    0.3296462
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0478291   -0.7907000    0.6950417
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0422088   -0.2219818    0.1375642
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.2641753   -0.5051371   -0.0232135
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.2011367   -0.0063053    0.4085787
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.2279510   -0.0358546    0.4917565
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.1440552   -0.6001709    0.3120605
24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.1748838   -0.4666092    0.8163767
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.7048876   -1.0394885   -0.3702868
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0266324   -0.4065511    0.3532864
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.4351790   -1.0081235    0.1377655
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.3876436   -0.8768647    0.1015774
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38               0.0141317   -0.4942253    0.5224886
24 months   MAL-ED          INDIA                          [32-38)              >=38               0.1947087   -0.2994762    0.6888936
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.2035330   -0.8119534    0.4048875
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.4036099   -0.8293169    0.0220972
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38               0.0346901   -0.4415209    0.5109011
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.1106882   -0.6912409    0.4698645
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.4925112   -1.0874353    0.1024130
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2119771   -0.6547242    0.2307700
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38               0.0089106   -0.4295367    0.4473579
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0623650   -0.4633277    0.3385977


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.2887143   -0.4734645   -0.1039642
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0468763   -0.1882758    0.0945231
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0672640   -0.2417750    0.1072471
Birth       MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       MAL-ED          PERU                           >=38                 NA                -0.5520724   -0.8272072   -0.2769377
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       PROBIT          BELARUS                        >=38                 NA                 0.0840571   -0.0161142    0.1842285
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0512096   -0.2190389    0.1166198
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.0980175   -0.0670534    0.2630883
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1735672   -0.4566463    0.1095120
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.1604948   -0.3113247   -0.0096649
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.2505857   -0.5164696    0.0152982
6 months    MAL-ED          INDIA                          >=38                 NA                 0.1450434   -0.3313552    0.6214420
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.3095770   -1.0974913    0.4783374
6 months    MAL-ED          PERU                           >=38                 NA                -0.3069196   -0.5626211   -0.0512181
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0040532   -0.1992146    0.2073210
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0368420   -0.1156860    0.0420020
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0905643   -0.6239035    0.4427748
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.1589865   -0.3030384   -0.0149345
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.1237780   -0.0683293    0.3158852
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0516007   -0.3603386    0.2571373
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0178269   -0.1960153    0.1603615
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.2629773   -0.5178387   -0.0081160
24 months   MAL-ED          INDIA                          >=38                 NA                 0.1311362   -0.2383026    0.5005750
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.3750433   -0.6908995   -0.0591871
24 months   MAL-ED          PERU                           >=38                 NA                -0.0544723   -0.3443234    0.2353789
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1516795   -0.3574377    0.0540787
24 months   PROBIT          BELARUS                        >=38                 NA                 0.0089426   -0.3946200    0.4125052
