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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        parity    pers_wast   n_cell       n
------------  ---------------  -----------------------------  -------  ----------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                 0      142    1053
0-24 months   COHORTS          GUATEMALA                      1                 1        4    1053
0-24 months   COHORTS          GUATEMALA                      2                 0      144    1053
0-24 months   COHORTS          GUATEMALA                      2                 1        3    1053
0-24 months   COHORTS          GUATEMALA                      3+                0      731    1053
0-24 months   COHORTS          GUATEMALA                      3+                1       29    1053
0-24 months   COHORTS          INDIA                          1                 0      550    3595
0-24 months   COHORTS          INDIA                          1                 1       46    3595
0-24 months   COHORTS          INDIA                          2                 0      825    3595
0-24 months   COHORTS          INDIA                          2                 1       73    3595
0-24 months   COHORTS          INDIA                          3+                0     1853    3595
0-24 months   COHORTS          INDIA                          3+                1      248    3595
0-24 months   COHORTS          PHILIPPINES                    1                 0      583    2811
0-24 months   COHORTS          PHILIPPINES                    1                 1       24    2811
0-24 months   COHORTS          PHILIPPINES                    2                 0      608    2811
0-24 months   COHORTS          PHILIPPINES                    2                 1       19    2811
0-24 months   COHORTS          PHILIPPINES                    3+                0     1476    2811
0-24 months   COHORTS          PHILIPPINES                    3+                1      101    2811
0-24 months   GMS-Nepal        NEPAL                          1                 0      150     597
0-24 months   GMS-Nepal        NEPAL                          1                 1       19     597
0-24 months   GMS-Nepal        NEPAL                          2                 0      130     597
0-24 months   GMS-Nepal        NEPAL                          2                 1       25     597
0-24 months   GMS-Nepal        NEPAL                          3+                0      237     597
0-24 months   GMS-Nepal        NEPAL                          3+                1       36     597
0-24 months   JiVitA-3         BANGLADESH                     1                 0     5444   15803
0-24 months   JiVitA-3         BANGLADESH                     1                 1      365   15803
0-24 months   JiVitA-3         BANGLADESH                     2                 0     5185   15803
0-24 months   JiVitA-3         BANGLADESH                     2                 1      256   15803
0-24 months   JiVitA-3         BANGLADESH                     3+                0     4276   15803
0-24 months   JiVitA-3         BANGLADESH                     3+                1      277   15803
0-24 months   Keneba           GAMBIA                         1                 0      218    1853
0-24 months   Keneba           GAMBIA                         1                 1       11    1853
0-24 months   Keneba           GAMBIA                         2                 0      190    1853
0-24 months   Keneba           GAMBIA                         2                 1       10    1853
0-24 months   Keneba           GAMBIA                         3+                0     1342    1853
0-24 months   Keneba           GAMBIA                         3+                1       82    1853
0-24 months   PROVIDE          BANGLADESH                     1                 0      238     641
0-24 months   PROVIDE          BANGLADESH                     1                 1        4     641
0-24 months   PROVIDE          BANGLADESH                     2                 0      223     641
0-24 months   PROVIDE          BANGLADESH                     2                 1        4     641
0-24 months   PROVIDE          BANGLADESH                     3+                0      165     641
0-24 months   PROVIDE          BANGLADESH                     3+                1        7     641
0-24 months   SAS-CompFeed     INDIA                          1                 0      378    1366
0-24 months   SAS-CompFeed     INDIA                          1                 1       30    1366
0-24 months   SAS-CompFeed     INDIA                          2                 0      291    1366
0-24 months   SAS-CompFeed     INDIA                          2                 1       27    1366
0-24 months   SAS-CompFeed     INDIA                          3+                0      583    1366
0-24 months   SAS-CompFeed     INDIA                          3+                1       57    1366
0-24 months   SAS-FoodSuppl    INDIA                          1                 0        1     375
0-24 months   SAS-FoodSuppl    INDIA                          1                 1        1     375
0-24 months   SAS-FoodSuppl    INDIA                          2                 0       62     375
0-24 months   SAS-FoodSuppl    INDIA                          2                 1        7     375
0-24 months   SAS-FoodSuppl    INDIA                          3+                0      247     375
0-24 months   SAS-FoodSuppl    INDIA                          3+                1       57     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
0-24 months   ZVITAMBO         ZIMBABWE                       1                 0     3741    9526
0-24 months   ZVITAMBO         ZIMBABWE                       1                 1       63    9526
0-24 months   ZVITAMBO         ZIMBABWE                       2                 0     2873    9526
0-24 months   ZVITAMBO         ZIMBABWE                       2                 1       51    9526
0-24 months   ZVITAMBO         ZIMBABWE                       3+                0     2744    9526
0-24 months   ZVITAMBO         ZIMBABWE                       3+                1       54    9526
0-6 months    COHORTS          PHILIPPINES                    1                 0      158     853
0-6 months    COHORTS          PHILIPPINES                    1                 1        9     853
0-6 months    COHORTS          PHILIPPINES                    2                 0      174     853
0-6 months    COHORTS          PHILIPPINES                    2                 1       13     853
0-6 months    COHORTS          PHILIPPINES                    3+                0      469     853
0-6 months    COHORTS          PHILIPPINES                    3+                1       30     853
0-6 months    GMS-Nepal        NEPAL                          1                 0      139     567
0-6 months    GMS-Nepal        NEPAL                          1                 1       15     567
0-6 months    GMS-Nepal        NEPAL                          2                 0      131     567
0-6 months    GMS-Nepal        NEPAL                          2                 1       17     567
0-6 months    GMS-Nepal        NEPAL                          3+                0      235     567
0-6 months    GMS-Nepal        NEPAL                          3+                1       30     567
0-6 months    JiVitA-3         BANGLADESH                     1                 0       22      50
0-6 months    JiVitA-3         BANGLADESH                     1                 1        1      50
0-6 months    JiVitA-3         BANGLADESH                     2                 0       15      50
0-6 months    JiVitA-3         BANGLADESH                     2                 1        0      50
0-6 months    JiVitA-3         BANGLADESH                     3+                0       11      50
0-6 months    JiVitA-3         BANGLADESH                     3+                1        1      50
0-6 months    Keneba           GAMBIA                         1                 0      203    1633
0-6 months    Keneba           GAMBIA                         1                 1        5    1633
0-6 months    Keneba           GAMBIA                         2                 0      177    1633
0-6 months    Keneba           GAMBIA                         2                 1        2    1633
0-6 months    Keneba           GAMBIA                         3+                0     1203    1633
0-6 months    Keneba           GAMBIA                         3+                1       43    1633
0-6 months    PROVIDE          BANGLADESH                     1                 0      235     638
0-6 months    PROVIDE          BANGLADESH                     1                 1        5     638
0-6 months    PROVIDE          BANGLADESH                     2                 0      224     638
0-6 months    PROVIDE          BANGLADESH                     2                 1        3     638
0-6 months    PROVIDE          BANGLADESH                     3+                0      165     638
0-6 months    PROVIDE          BANGLADESH                     3+                1        6     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681    2030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14    2030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652    2030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17    2030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646    2030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20    2030
0-6 months    ZVITAMBO         ZIMBABWE                       1                 0      248     632
0-6 months    ZVITAMBO         ZIMBABWE                       1                 1        6     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                 0      199     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                 1        5     632
0-6 months    ZVITAMBO         ZIMBABWE                       3+                0      171     632
0-6 months    ZVITAMBO         ZIMBABWE                       3+                1        3     632
6-24 months   COHORTS          GUATEMALA                      1                 0      142    1053
6-24 months   COHORTS          GUATEMALA                      1                 1        4    1053
6-24 months   COHORTS          GUATEMALA                      2                 0      144    1053
6-24 months   COHORTS          GUATEMALA                      2                 1        3    1053
6-24 months   COHORTS          GUATEMALA                      3+                0      731    1053
6-24 months   COHORTS          GUATEMALA                      3+                1       29    1053
6-24 months   COHORTS          INDIA                          1                 0      550    3595
6-24 months   COHORTS          INDIA                          1                 1       46    3595
6-24 months   COHORTS          INDIA                          2                 0      825    3595
6-24 months   COHORTS          INDIA                          2                 1       73    3595
6-24 months   COHORTS          INDIA                          3+                0     1853    3595
6-24 months   COHORTS          INDIA                          3+                1      248    3595
6-24 months   COHORTS          PHILIPPINES                    1                 0      583    2811
6-24 months   COHORTS          PHILIPPINES                    1                 1       24    2811
6-24 months   COHORTS          PHILIPPINES                    2                 0      608    2811
6-24 months   COHORTS          PHILIPPINES                    2                 1       19    2811
6-24 months   COHORTS          PHILIPPINES                    3+                0     1476    2811
6-24 months   COHORTS          PHILIPPINES                    3+                1      101    2811
6-24 months   GMS-Nepal        NEPAL                          1                 0      150     597
6-24 months   GMS-Nepal        NEPAL                          1                 1       19     597
6-24 months   GMS-Nepal        NEPAL                          2                 0      130     597
6-24 months   GMS-Nepal        NEPAL                          2                 1       25     597
6-24 months   GMS-Nepal        NEPAL                          3+                0      237     597
6-24 months   GMS-Nepal        NEPAL                          3+                1       36     597
6-24 months   JiVitA-3         BANGLADESH                     1                 0     5444   15803
6-24 months   JiVitA-3         BANGLADESH                     1                 1      365   15803
6-24 months   JiVitA-3         BANGLADESH                     2                 0     5185   15803
6-24 months   JiVitA-3         BANGLADESH                     2                 1      256   15803
6-24 months   JiVitA-3         BANGLADESH                     3+                0     4276   15803
6-24 months   JiVitA-3         BANGLADESH                     3+                1      277   15803
6-24 months   Keneba           GAMBIA                         1                 0      218    1853
6-24 months   Keneba           GAMBIA                         1                 1       11    1853
6-24 months   Keneba           GAMBIA                         2                 0      190    1853
6-24 months   Keneba           GAMBIA                         2                 1       10    1853
6-24 months   Keneba           GAMBIA                         3+                0     1342    1853
6-24 months   Keneba           GAMBIA                         3+                1       82    1853
6-24 months   PROVIDE          BANGLADESH                     1                 0      238     641
6-24 months   PROVIDE          BANGLADESH                     1                 1        4     641
6-24 months   PROVIDE          BANGLADESH                     2                 0      223     641
6-24 months   PROVIDE          BANGLADESH                     2                 1        4     641
6-24 months   PROVIDE          BANGLADESH                     3+                0      165     641
6-24 months   PROVIDE          BANGLADESH                     3+                1        7     641
6-24 months   SAS-CompFeed     INDIA                          1                 0      378    1366
6-24 months   SAS-CompFeed     INDIA                          1                 1       30    1366
6-24 months   SAS-CompFeed     INDIA                          2                 0      291    1366
6-24 months   SAS-CompFeed     INDIA                          2                 1       27    1366
6-24 months   SAS-CompFeed     INDIA                          3+                0      583    1366
6-24 months   SAS-CompFeed     INDIA                          3+                1       57    1366
6-24 months   SAS-FoodSuppl    INDIA                          1                 0        1     375
6-24 months   SAS-FoodSuppl    INDIA                          1                 1        1     375
6-24 months   SAS-FoodSuppl    INDIA                          2                 0       62     375
6-24 months   SAS-FoodSuppl    INDIA                          2                 1        7     375
6-24 months   SAS-FoodSuppl    INDIA                          3+                0      247     375
6-24 months   SAS-FoodSuppl    INDIA                          3+                1       57     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
6-24 months   ZVITAMBO         ZIMBABWE                       1                 0     3741    9526
6-24 months   ZVITAMBO         ZIMBABWE                       1                 1       63    9526
6-24 months   ZVITAMBO         ZIMBABWE                       2                 0     2873    9526
6-24 months   ZVITAMBO         ZIMBABWE                       2                 1       51    9526
6-24 months   ZVITAMBO         ZIMBABWE                       3+                0     2744    9526
6-24 months   ZVITAMBO         ZIMBABWE                       3+                1       54    9526


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/147e1d51-cdc2-413e-8ec5-feacda1e2fab/9da6d7bd-e21a-427f-b138-b74eec2b9edc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/147e1d51-cdc2-413e-8ec5-feacda1e2fab/9da6d7bd-e21a-427f-b138-b74eec2b9edc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/147e1d51-cdc2-413e-8ec5-feacda1e2fab/9da6d7bd-e21a-427f-b138-b74eec2b9edc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/147e1d51-cdc2-413e-8ec5-feacda1e2fab/9da6d7bd-e21a-427f-b138-b74eec2b9edc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          1                    NA                0.0742809   0.0473517   0.1012100
0-24 months   COHORTS          INDIA                          2                    NA                0.0732867   0.0532743   0.0932990
0-24 months   COHORTS          INDIA                          3+                   NA                0.1206843   0.1027803   0.1385882
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0401191   0.0244695   0.0557688
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.0305286   0.0169794   0.0440777
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.0646702   0.0525510   0.0767894
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.0915147   0.0204860   0.1625435
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1679219   0.0365209   0.2993228
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.0982511   0.0656521   0.1308501
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0882298   0.0708690   0.1055906
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0471861   0.0384444   0.0559278
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0589936   0.0489465   0.0690407
0-24 months   Keneba           GAMBIA                         1                    NA                0.1436291   0.0883998   0.1988584
0-24 months   Keneba           GAMBIA                         2                    NA                0.0217091   0.0082658   0.0351525
0-24 months   Keneba           GAMBIA                         3+                   NA                0.0519079   0.0396632   0.0641526
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.0875464   0.0467227   0.1283702
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1034097   0.0473879   0.1594314
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.0719805   0.0336925   0.1102684
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0248090   0.0134488   0.0361692
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0282113   0.0158726   0.0405500
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0269832   0.0148932   0.0390733
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0152803   0.0107111   0.0198495
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0176949   0.0110425   0.0243474
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0185930   0.0095453   0.0276406
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0538922   0.0196251   0.0881594
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.0695187   0.0330444   0.1059930
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0601202   0.0392514   0.0809891
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.0674970   0.0222534   0.1127405
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.1013353   0.0318330   0.1708375
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.0938887   0.0550429   0.1327346
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0156724   0.0056803   0.0256645
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0266988   0.0111403   0.0422574
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0177441   0.0094514   0.0260368
6-24 months   COHORTS          INDIA                          1                    NA                0.0748993   0.0468464   0.1029522
6-24 months   COHORTS          INDIA                          2                    NA                0.0752119   0.0544151   0.0960087
6-24 months   COHORTS          INDIA                          3+                   NA                0.1217665   0.1039384   0.1395947
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.0402514   0.0245822   0.0559206
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.0308574   0.0172072   0.0445075
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.0645049   0.0523886   0.0766212
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.0912874   0.0187174   0.1638573
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1719640   0.0215729   0.3223550
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.0963412   0.0643630   0.1283195
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0904593   0.0729133   0.1080052
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.0474382   0.0385494   0.0563271
6-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.0547195   0.0459399   0.0634991
6-24 months   Keneba           GAMBIA                         1                    NA                0.1552157   0.0984909   0.2119405
6-24 months   Keneba           GAMBIA                         2                    NA                0.0251825   0.0098985   0.0404665
6-24 months   Keneba           GAMBIA                         3+                   NA                0.0515680   0.0395898   0.0635462
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.0875464   0.0467227   0.1283702
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.1034097   0.0473879   0.1594314
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.0719805   0.0336925   0.1102684
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0248561   0.0134631   0.0362492
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0281698   0.0158082   0.0405313
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0273027   0.0151578   0.0394476
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0156171   0.0106937   0.0205405
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0183429   0.0106307   0.0260551
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0196363   0.0105339   0.0287386


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348
0-24 months   Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
6-24 months   COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348
6-24 months   Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.9866156   0.6269719   1.5525582
0-24 months   COHORTS          INDIA                          3+                   1                 1.6247021   1.0984538   2.4030659
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 0.7609474   0.4214459   1.3739390
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6119528   1.0463578   2.4832727
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 1.8349166   0.6094041   5.5249362
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0736098   0.4605621   2.5026768
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.5348090   0.4088821   0.6995187
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.6686363   0.5117922   0.8735468
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.1511471   0.0727905   0.3138520
0-24 months   Keneba           GAMBIA                         3+                   1                 0.3614024   0.2303127   0.5671061
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 1.1811979   0.5782563   2.4128201
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 0.8221979   0.3757705   1.7989955
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1371406   0.6036240   2.1422088
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0876405   0.5730653   2.0642707
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1580233   0.7162836   1.8721887
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.2167919   0.6872965   2.1542124
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 1.2899584   0.5656642   2.9416615
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 1.1155645   0.5406060   2.3020166
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 1.5013306   0.5751148   3.9192059
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 1.3910061   0.6322148   3.0605070
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.7035547   0.7176866   4.0436850
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1321882   0.5129410   2.4990207
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.0041731   0.6305723   1.5991246
6-24 months   COHORTS          INDIA                          3+                   1                 1.6257367   1.0875981   2.4301438
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 0.7666165   0.4252695   1.3819493
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6025515   1.0406204   2.4679232
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 1.8837654   0.5778250   6.1412577
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.0553621   0.4449009   2.5034544
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.5244155   0.4016214   0.6847534
6-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.6049075   0.4683665   0.7812539
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 0.1622418   0.0797529   0.3300495
6-24 months   Keneba           GAMBIA                         3+                   1                 0.3322346   0.2156178   0.5119235
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 1.1811979   0.5782563   2.4128201
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 0.8221979   0.3757705   1.7989955
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1333134   0.6008218   2.1377373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0984305   0.5799593   2.0804041
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1745404   0.6944371   1.9865660
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.2573568   0.7177783   2.2025549


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          INDIA                          1                    NA                 0.0278054    0.0016381    0.0539727
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0111082   -0.0032586    0.0254750
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0424886   -0.0266854    0.1116626
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0314051   -0.0479265   -0.0148838
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0880436   -0.1424260   -0.0336612
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0040911   -0.0466178    0.0384356
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019265   -0.0074837    0.0113366
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0023556   -0.0016484    0.0063597
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0070691   -0.0241168    0.0382550
0-6 months    GMS-Nepal        NEPAL                          1                    NA                 0.0418505   -0.0020580    0.0857589
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0094507    0.0000384    0.0188631
6-24 months   COHORTS          INDIA                          1                    NA                 0.0271869   -0.0000902    0.0544640
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0109759   -0.0034133    0.0253651
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0427160   -0.0279938    0.1134257
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0336346   -0.0502899   -0.0169794
6-24 months   Keneba           GAMBIA                         1                    NA                -0.0996302   -0.1554915   -0.0437688
6-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0040911   -0.0466178    0.0384356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0018794   -0.0075592    0.0113179
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0020188   -0.0023443    0.0063820


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          INDIA                          1                    NA                 0.2723714   -0.0326655    0.4873041
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2168408   -0.1175405    0.4511713
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.3170714   -0.4451411    0.6772693
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.5526671   -0.8716265   -0.2880642
0-24 months   Keneba           GAMBIA                         1                    NA                -1.5839297   -2.8443227   -0.7367670
0-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0490212   -0.7130352    0.3576049
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0720574   -0.3553399    0.3646778
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.1335704   -0.1245041    0.3324166
0-6 months    COHORTS          PHILIPPINES                    1                    NA                 0.1159604   -0.5753898    0.5039158
0-6 months    GMS-Nepal        NEPAL                          1                    NA                 0.3827293   -0.1608374    0.6717687
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3761761   -0.1114911    0.6498791
6-24 months   COHORTS          INDIA                          1                    NA                 0.2663134   -0.0540267    0.4892956
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.2142594   -0.1205348    0.4490235
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.3187680   -0.4691852    0.6841263
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.5919018   -0.9123738   -0.3251339
6-24 months   Keneba           GAMBIA                         1                    NA                -1.7923755   -3.0860074   -0.9083081
6-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0490212   -0.7130352    0.3576049
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0702945   -0.3585351    0.3637615
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.1144736   -0.1699762    0.3297667
