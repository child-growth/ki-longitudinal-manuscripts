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

agecat      studyid         country                        fage       n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38          245     823
Birth       COHORTS         GUATEMALA                      <32           380     823
Birth       COHORTS         GUATEMALA                      [32-38)       198     823
Birth       COHORTS         PHILIPPINES                    >=38          328    2944
Birth       COHORTS         PHILIPPINES                    <32          2079    2944
Birth       COHORTS         PHILIPPINES                    [32-38)       537    2944
Birth       MAL-ED          BANGLADESH                     >=38           63     133
Birth       MAL-ED          BANGLADESH                     <32            25     133
Birth       MAL-ED          BANGLADESH                     [32-38)        45     133
Birth       MAL-ED          BRAZIL                         >=38            6      18
Birth       MAL-ED          BRAZIL                         <32             1      18
Birth       MAL-ED          BRAZIL                         [32-38)        11      18
Birth       MAL-ED          INDIA                          >=38            7      27
Birth       MAL-ED          INDIA                          <32             9      27
Birth       MAL-ED          INDIA                          [32-38)        11      27
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      69
Birth       MAL-ED          PERU                           <32            22      69
Birth       MAL-ED          PERU                           [32-38)        24      69
Birth       MAL-ED          SOUTH AFRICA                   >=38           17      31
Birth       MAL-ED          SOUTH AFRICA                   <32             5      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      31
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46
Birth       PROBIT          BELARUS                        >=38          606   13399
Birth       PROBIT          BELARUS                        <32         10732   13399
Birth       PROBIT          BELARUS                        [32-38)      2061   13399
Birth       SAS-CompFeed    INDIA                          >=38           40    1249
Birth       SAS-CompFeed    INDIA                          <32          1045    1249
Birth       SAS-CompFeed    INDIA                          [32-38)       164    1249
6 months    COHORTS         GUATEMALA                      >=38          275     929
6 months    COHORTS         GUATEMALA                      <32           421     929
6 months    COHORTS         GUATEMALA                      [32-38)       233     929
6 months    COHORTS         PHILIPPINES                    >=38          300    2624
6 months    COHORTS         PHILIPPINES                    <32          1829    2624
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2624
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
6 months    PROBIT          BELARUS                        >=38          701   15182
6 months    PROBIT          BELARUS                        <32         12175   15182
6 months    PROBIT          BELARUS                        [32-38)      2306   15182
6 months    SAS-CompFeed    INDIA                          >=38           44    1333
6 months    SAS-CompFeed    INDIA                          <32          1125    1333
6 months    SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        77     380
24 months   COHORTS         GUATEMALA                      >=38          285    1021
24 months   COHORTS         GUATEMALA                      <32           491    1021
24 months   COHORTS         GUATEMALA                      [32-38)       245    1021
24 months   COHORTS         PHILIPPINES                    >=38          270    2371
24 months   COHORTS         PHILIPPINES                    <32          1666    2371
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2371
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
24 months   PROBIT          BELARUS                        >=38          178    3909
24 months   PROBIT          BELARUS                        <32          3143    3909
24 months   PROBIT          BELARUS                        [32-38)       588    3909


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
![](/tmp/f438b63b-5e0f-4b17-bd6e-f785bdd206c7/78375172-a41a-4364-9b42-d1a29e3b1d77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f438b63b-5e0f-4b17-bd6e-f785bdd206c7/78375172-a41a-4364-9b42-d1a29e3b1d77/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f438b63b-5e0f-4b17-bd6e-f785bdd206c7/78375172-a41a-4364-9b42-d1a29e3b1d77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.3535887    0.1713772    0.5358003
Birth       COHORTS         GUATEMALA                      <32                  NA                 0.1905340    0.0369097    0.3441583
Birth       COHORTS         GUATEMALA                      [32-38)              NA                 0.1590814   -0.0901018    0.4082645
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.2015540   -0.3437156   -0.0593924
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.2591716   -0.3210836   -0.1972596
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.3898817   -0.5767076   -0.2030559
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9727517   -1.2126500   -0.7328534
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.2975235   -1.6596046   -0.9354423
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9873467   -1.2893173   -0.6853762
Birth       MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       MAL-ED          PERU                           >=38                 NA                -0.4192803   -0.7146843   -0.1238762
Birth       MAL-ED          PERU                           <32                  NA                -1.2057818   -1.6504859   -0.7610778
Birth       MAL-ED          PERU                           [32-38)              NA                -1.2769371   -1.5808183   -0.9730559
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       PROBIT          BELARUS                        >=38                 NA                 1.2584025    1.1379257    1.3788792
Birth       PROBIT          BELARUS                        <32                  NA                 1.3075198    1.1533894    1.4616503
Birth       PROBIT          BELARUS                        [32-38)              NA                 1.2783659    1.0885578    1.4681739
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -1.1191180   -1.3708200   -0.8674161
Birth       SAS-CompFeed    INDIA                          <32                  NA                -1.3666939   -1.4728651   -1.2605227
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -1.4884439   -1.7560242   -1.2208637
6 months    COHORTS         GUATEMALA                      >=38                 NA                -1.6993309   -1.8985744   -1.5000874
6 months    COHORTS         GUATEMALA                      <32                  NA                -1.8217723   -1.9460908   -1.6974538
6 months    COHORTS         GUATEMALA                      [32-38)              NA                -1.9361104   -2.1271522   -1.7450687
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -1.2691836   -1.4216839   -1.1166833
6 months    COHORTS         PHILIPPINES                    <32                  NA                -1.0942209   -1.1578356   -1.0306061
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -1.2060832   -1.4069804   -1.0051860
6 months    LCNI-5          MALAWI                         >=38                 NA                -1.4669449   -1.7294479   -1.2044418
6 months    LCNI-5          MALAWI                         <32                  NA                -1.5969287   -1.8983216   -1.2955359
6 months    LCNI-5          MALAWI                         [32-38)              NA                -1.8949663   -2.2326914   -1.5572412
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -1.0590346   -1.2563381   -0.8617310
6 months    MAL-ED          BANGLADESH                     <32                  NA                -1.5838548   -1.8995135   -1.2681962
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -1.2162328   -1.4309261   -1.0015395
6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.2573233   -0.0484598    0.5631065
6 months    MAL-ED          BRAZIL                         <32                  NA                -0.2787725   -0.9599757    0.4024307
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.0766746   -0.2597362    0.4130854
6 months    MAL-ED          INDIA                          >=38                 NA                -1.4025840   -1.8521202   -0.9530478
6 months    MAL-ED          INDIA                          <32                  NA                -1.3973630   -1.7036257   -1.0911004
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.9430764   -1.1400367   -0.7461161
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.4357796   -1.2714712    0.3999121
6 months    MAL-ED          NEPAL                          <32                  NA                -0.3852632   -0.6773667   -0.0931598
6 months    MAL-ED          NEPAL                          [32-38)              NA                -0.8637450   -1.1046075   -0.6228824
6 months    MAL-ED          PERU                           >=38                 NA                -1.0538582   -1.2671587   -0.8405578
6 months    MAL-ED          PERU                           <32                  NA                -1.3161885   -1.7584253   -0.8739516
6 months    MAL-ED          PERU                           [32-38)              NA                -1.5569810   -2.0256775   -1.0882846
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367188   -1.0969700   -0.5764675
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4724670   -1.7604015   -1.1845325
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6386851   -2.2829748   -0.9943955
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.3993836   -1.6871839   -1.1115834
6 months    PROBIT          BELARUS                        >=38                 NA                 0.1646784    0.0950649    0.2342919
6 months    PROBIT          BELARUS                        <32                  NA                 0.1030606    0.0111003    0.1950208
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.1119345   -0.0153367    0.2392057
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.9649718   -2.2670906   -1.6628530
6 months    SAS-CompFeed    INDIA                          <32                  NA                -1.3460697   -1.4667082   -1.2254311
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -1.5210432   -1.8712893   -1.1707972
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.7289034   -2.2230805   -1.2347263
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -2.0483336   -2.2264433   -1.8702240
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.9186241   -2.4785611   -1.3586871
24 months   COHORTS         GUATEMALA                      >=38                 NA                -2.8609832   -3.0426611   -2.6793053
24 months   COHORTS         GUATEMALA                      <32                  NA                -2.8196141   -2.9132486   -2.7259795
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -3.0614889   -3.2499877   -2.8729901
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -2.5163197   -2.7185587   -2.3140807
24 months   COHORTS         PHILIPPINES                    <32                  NA                -2.3352864   -2.3998911   -2.2706818
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -2.3656409   -2.5557433   -2.1755385
24 months   LCNI-5          MALAWI                         >=38                 NA                -1.7323563   -2.0668623   -1.3978502
24 months   LCNI-5          MALAWI                         <32                  NA                -1.8878756   -2.2011693   -1.5745818
24 months   LCNI-5          MALAWI                         [32-38)              NA                -1.6467508   -2.1486064   -1.1448953
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -1.9437964   -2.1776597   -1.7099332
24 months   MAL-ED          BANGLADESH                     <32                  NA                -2.8755091   -3.1029152   -2.6481029
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -2.0209190   -2.3565961   -1.6852419
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.3800600    0.0800310    0.6800890
24 months   MAL-ED          BRAZIL                         <32                  NA                -0.0463558   -0.5382253    0.4455138
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0142129   -0.4012418    0.4296677
24 months   MAL-ED          INDIA                          >=38                 NA                -1.9868286   -2.4074883   -1.5661688
24 months   MAL-ED          INDIA                          <32                  NA                -1.9700536   -2.3120809   -1.6280263
24 months   MAL-ED          INDIA                          [32-38)              NA                -1.7877649   -2.0780772   -1.4974525
24 months   MAL-ED          NEPAL                          >=38                 NA                -1.3189752   -1.7749099   -0.8630405
24 months   MAL-ED          NEPAL                          <32                  NA                -1.5815130   -2.0970938   -1.0659323
24 months   MAL-ED          NEPAL                          [32-38)              NA                -1.6077042   -1.8316187   -1.3837897
24 months   MAL-ED          PERU                           >=38                 NA                -1.6375946   -1.9472851   -1.3279042
24 months   MAL-ED          PERU                           <32                  NA                -1.6151913   -1.9640632   -1.2663195
24 months   MAL-ED          PERU                           [32-38)              NA                -1.8328874   -2.3556102   -1.3101646
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6177775   -2.8848098   -2.3507451
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -2.9959142   -3.5170479   -2.4747805
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8468398   -3.1950133   -2.4986662
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1384947   -0.4407112    0.1637217
24 months   PROBIT          BELARUS                        <32                  NA                -0.1348866   -0.4524946    0.1827215
24 months   PROBIT          BELARUS                        [32-38)              NA                -0.2486928   -0.4930229   -0.0043628


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
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.1630547   -0.4017194    0.0756100
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.1945074   -0.5030792    0.1140645
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.0576176   -0.2122920    0.0970568
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.1883278   -0.4229793    0.0463237
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.3247718   -0.7589642    0.1094206
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0145951   -0.4012328    0.3720426
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.7865016   -1.3140895   -0.2589137
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.8576568   -1.2863477   -0.4289659
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38               0.2445882   -0.8080795    1.2972560
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2527451   -1.0999063    0.5944161
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2290058   -0.9999691    0.5419574
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.3632164   -0.3239497    1.0503825
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38               0.0491174   -0.0452279    0.1434627
Birth       PROBIT          BELARUS                        [32-38)              >=38               0.0199634   -0.1205783    0.1605051
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38              -0.2475759   -0.5141574    0.0190057
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3693259   -0.7549031    0.0162513
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38              -0.1224414   -0.3571565    0.1122738
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.2367795   -0.5130933    0.0395342
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38               0.1749627    0.0100033    0.3399222
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38               0.0631004   -0.1889685    0.3151694
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.1299839   -0.5319271    0.2719593
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.4280214   -0.8548216   -0.0012212
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.5248203   -0.8994385   -0.1502021
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1571983   -0.4488484    0.1344519
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.5360958   -1.2738236    0.2016320
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.1806487   -0.6384526    0.2771552
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38               0.0052210   -0.5395884    0.5500303
6 months    MAL-ED          INDIA                          [32-38)              >=38               0.4595075   -0.0311529    0.9501680
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38               0.0505163   -0.8340320    0.9350647
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.4279654   -1.2990197    0.4430888
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.2623302   -0.7512358    0.2265754
6 months    MAL-ED          PERU                           [32-38)              >=38              -0.5031228   -1.0179787    0.0117332
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367188   -0.4472439    0.7206814
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1662181   -0.8738577    0.5414215
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0730834   -0.3368256    0.4829924
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0616179   -0.1487493    0.0255136
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0527439   -0.1550682    0.0495804
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.6189021    0.2877757    0.9500285
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.4439285    0.1835143    0.7043427
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.3194302   -0.8442338    0.2053735
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.1897207   -0.9365823    0.5571409
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0413691   -0.1625833    0.2453216
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.2005057   -0.4620732    0.0610619
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.1810333   -0.0312568    0.3933234
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.1506788   -0.1269508    0.4283084
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.1555193   -0.6133570    0.3023183
24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.0856055   -0.5174863    0.6886972
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.9317126   -1.2661966   -0.5972286
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0771226   -0.4844926    0.3302475
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.4264158   -1.0014465    0.1486150
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.3658470   -0.8796058    0.1479117
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38               0.0167750   -0.5233563    0.5569062
24 months   MAL-ED          INDIA                          [32-38)              >=38               0.1990637   -0.3106323    0.7087597
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.2625378   -0.9410024    0.4159268
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.2887290   -0.8011398    0.2236818
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38               0.0224033   -0.4431740    0.4879806
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.1952927   -0.8032993    0.4127138
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3781367   -0.9639654    0.2076920
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2290623   -0.6677683    0.2096437
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38               0.0036082   -0.4089211    0.4161375
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.1101981   -0.4835919    0.2631956


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.2158852   -0.3867687   -0.0450018
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0453448   -0.1848165    0.0941269
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0373235   -0.2135114    0.1388643
Birth       MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       MAL-ED          PERU                           >=38                 NA                -0.5141980   -0.7893766   -0.2390194
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       PROBIT          BELARUS                        >=38                 NA                 0.0613737   -0.0360081    0.1587554
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.3108980   -0.5813023   -0.0404936
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.1075044   -0.2946956    0.0796868
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.1270571   -0.0222881    0.2764024
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1541872   -0.4238301    0.1154557
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.1389988   -0.2858369    0.0078393
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.2029984   -0.4743749    0.0683781
6 months    MAL-ED          INDIA                          >=38                 NA                 0.2246958   -0.1824637    0.6318553
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.2919209   -1.0822803    0.4984386
6 months    MAL-ED          PERU                           >=38                 NA                -0.2778887   -0.5297306   -0.0260468
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0020163   -0.2079490    0.2039165
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0580063   -0.1380934    0.0220809
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.5643341    0.2584975    0.8701707
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1697808   -0.6559150    0.3163535
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.1218180   -0.2949327    0.0512968
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0958811   -0.1019981    0.2937602
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0508870   -0.3546173    0.2528434
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0455413   -0.2314490    0.1403664
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.2434566   -0.5198174    0.0329041
24 months   MAL-ED          INDIA                          >=38                 NA                 0.1064559   -0.2845841    0.4974959
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.2179235   -0.6187817    0.1829346
24 months   MAL-ED          PERU                           >=38                 NA                -0.0641564   -0.3544080    0.2260951
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1470725   -0.3568566    0.0627115
24 months   PROBIT          BELARUS                        >=38                 NA                 0.0002825   -0.3673798    0.3679448
