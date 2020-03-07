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

**Outcome Variable:** ever_wasted

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
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        parity    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -------  ------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      1                   0      162    1341
0-24 months   COHORTS          GUATEMALA                      1                   1       46    1341
0-24 months   COHORTS          GUATEMALA                      2                   0      132    1341
0-24 months   COHORTS          GUATEMALA                      2                   1       55    1341
0-24 months   COHORTS          GUATEMALA                      3+                  0      705    1341
0-24 months   COHORTS          GUATEMALA                      3+                  1      241    1341
0-24 months   COHORTS          INDIA                          1                   0      560    4624
0-24 months   COHORTS          INDIA                          1                   1      250    4624
0-24 months   COHORTS          INDIA                          2                   0      821    4624
0-24 months   COHORTS          INDIA                          2                   1      363    4624
0-24 months   COHORTS          INDIA                          3+                  0     1681    4624
0-24 months   COHORTS          INDIA                          3+                  1      949    4624
0-24 months   COHORTS          PHILIPPINES                    1                   0      394    3045
0-24 months   COHORTS          PHILIPPINES                    1                   1      283    3045
0-24 months   COHORTS          PHILIPPINES                    2                   0      424    3045
0-24 months   COHORTS          PHILIPPINES                    2                   1      258    3045
0-24 months   COHORTS          PHILIPPINES                    3+                  0      998    3045
0-24 months   COHORTS          PHILIPPINES                    3+                  1      688    3045
0-24 months   GMS-Nepal        NEPAL                          1                   0       89     686
0-24 months   GMS-Nepal        NEPAL                          1                   1      114     686
0-24 months   GMS-Nepal        NEPAL                          2                   0       78     686
0-24 months   GMS-Nepal        NEPAL                          2                   1      102     686
0-24 months   GMS-Nepal        NEPAL                          3+                  0      114     686
0-24 months   GMS-Nepal        NEPAL                          3+                  1      189     686
0-24 months   JiVitA-3         BANGLADESH                     1                   0     7422   26956
0-24 months   JiVitA-3         BANGLADESH                     1                   1     2704   26956
0-24 months   JiVitA-3         BANGLADESH                     2                   0     6779   26956
0-24 months   JiVitA-3         BANGLADESH                     2                   1     2155   26956
0-24 months   JiVitA-3         BANGLADESH                     3+                  0     5800   26956
0-24 months   JiVitA-3         BANGLADESH                     3+                  1     2096   26956
0-24 months   Keneba           GAMBIA                         1                   0      131    1990
0-24 months   Keneba           GAMBIA                         1                   1      109    1990
0-24 months   Keneba           GAMBIA                         2                   0      118    1990
0-24 months   Keneba           GAMBIA                         2                   1       96    1990
0-24 months   Keneba           GAMBIA                         3+                  0      771    1990
0-24 months   Keneba           GAMBIA                         3+                  1      765    1990
0-24 months   PROVIDE          BANGLADESH                     1                   0      163     700
0-24 months   PROVIDE          BANGLADESH                     1                   1      108     700
0-24 months   PROVIDE          BANGLADESH                     2                   0      170     700
0-24 months   PROVIDE          BANGLADESH                     2                   1       74     700
0-24 months   PROVIDE          BANGLADESH                     3+                  0      121     700
0-24 months   PROVIDE          BANGLADESH                     3+                  1       64     700
0-24 months   SAS-CompFeed     INDIA                          1                   0      273    1513
0-24 months   SAS-CompFeed     INDIA                          1                   1      175    1513
0-24 months   SAS-CompFeed     INDIA                          2                   0      219    1513
0-24 months   SAS-CompFeed     INDIA                          2                   1      135    1513
0-24 months   SAS-CompFeed     INDIA                          3+                  0      393    1513
0-24 months   SAS-CompFeed     INDIA                          3+                  1      318    1513
0-24 months   SAS-FoodSuppl    INDIA                          1                   0       12     418
0-24 months   SAS-FoodSuppl    INDIA                          1                   1        9     418
0-24 months   SAS-FoodSuppl    INDIA                          2                   0       51     418
0-24 months   SAS-FoodSuppl    INDIA                          2                   1       26     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                  0      158     418
0-24 months   SAS-FoodSuppl    INDIA                          3+                  1      162     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      624    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      197    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      583    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      188    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      592    2357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      173    2357
0-24 months   ZVITAMBO         ZIMBABWE                       1                   0     4509   13945
0-24 months   ZVITAMBO         ZIMBABWE                       1                   1     1497   13945
0-24 months   ZVITAMBO         ZIMBABWE                       2                   0     3250   13945
0-24 months   ZVITAMBO         ZIMBABWE                       2                   1      928   13945
0-24 months   ZVITAMBO         ZIMBABWE                       3+                  0     2885   13945
0-24 months   ZVITAMBO         ZIMBABWE                       3+                  1      876   13945
0-6 months    COHORTS          GUATEMALA                      1                   0      122    1063
0-6 months    COHORTS          GUATEMALA                      1                   1       30    1063
0-6 months    COHORTS          GUATEMALA                      2                   0      115    1063
0-6 months    COHORTS          GUATEMALA                      2                   1       34    1063
0-6 months    COHORTS          GUATEMALA                      3+                  0      613    1063
0-6 months    COHORTS          GUATEMALA                      3+                  1      149    1063
0-6 months    COHORTS          INDIA                          1                   0      562    4444
0-6 months    COHORTS          INDIA                          1                   1      197    4444
0-6 months    COHORTS          INDIA                          2                   0      878    4444
0-6 months    COHORTS          INDIA                          2                   1      259    4444
0-6 months    COHORTS          INDIA                          3+                  0     1922    4444
0-6 months    COHORTS          INDIA                          3+                  1      626    4444
0-6 months    COHORTS          PHILIPPINES                    1                   0      477    3044
0-6 months    COHORTS          PHILIPPINES                    1                   1      199    3044
0-6 months    COHORTS          PHILIPPINES                    2                   0      527    3044
0-6 months    COHORTS          PHILIPPINES                    2                   1      155    3044
0-6 months    COHORTS          PHILIPPINES                    3+                  0     1323    3044
0-6 months    COHORTS          PHILIPPINES                    3+                  1      363    3044
0-6 months    GMS-Nepal        NEPAL                          1                   0      124     686
0-6 months    GMS-Nepal        NEPAL                          1                   1       79     686
0-6 months    GMS-Nepal        NEPAL                          2                   0      111     686
0-6 months    GMS-Nepal        NEPAL                          2                   1       69     686
0-6 months    GMS-Nepal        NEPAL                          3+                  0      193     686
0-6 months    GMS-Nepal        NEPAL                          3+                  1      110     686
0-6 months    JiVitA-3         BANGLADESH                     1                   0     8185   26859
0-6 months    JiVitA-3         BANGLADESH                     1                   1     1878   26859
0-6 months    JiVitA-3         BANGLADESH                     2                   0     7474   26859
0-6 months    JiVitA-3         BANGLADESH                     2                   1     1440   26859
0-6 months    JiVitA-3         BANGLADESH                     3+                  0     6468   26859
0-6 months    JiVitA-3         BANGLADESH                     3+                  1     1414   26859
0-6 months    Keneba           GAMBIA                         1                   0      155    1851
0-6 months    Keneba           GAMBIA                         1                   1       79    1851
0-6 months    Keneba           GAMBIA                         2                   0      153    1851
0-6 months    Keneba           GAMBIA                         2                   1       52    1851
0-6 months    Keneba           GAMBIA                         3+                  0      992    1851
0-6 months    Keneba           GAMBIA                         3+                  1      420    1851
0-6 months    PROVIDE          BANGLADESH                     1                   0      192     700
0-6 months    PROVIDE          BANGLADESH                     1                   1       79     700
0-6 months    PROVIDE          BANGLADESH                     2                   0      187     700
0-6 months    PROVIDE          BANGLADESH                     2                   1       57     700
0-6 months    PROVIDE          BANGLADESH                     3+                  0      140     700
0-6 months    PROVIDE          BANGLADESH                     3+                  1       45     700
0-6 months    SAS-CompFeed     INDIA                          1                   0      349    1505
0-6 months    SAS-CompFeed     INDIA                          1                   1       96    1505
0-6 months    SAS-CompFeed     INDIA                          2                   0      275    1505
0-6 months    SAS-CompFeed     INDIA                          2                   1       77    1505
0-6 months    SAS-CompFeed     INDIA                          3+                  0      550    1505
0-6 months    SAS-CompFeed     INDIA                          3+                  1      158    1505
0-6 months    SAS-FoodSuppl    INDIA                          1                   0       14     418
0-6 months    SAS-FoodSuppl    INDIA                          1                   1        7     418
0-6 months    SAS-FoodSuppl    INDIA                          2                   0       65     418
0-6 months    SAS-FoodSuppl    INDIA                          2                   1       12     418
0-6 months    SAS-FoodSuppl    INDIA                          3+                  0      261     418
0-6 months    SAS-FoodSuppl    INDIA                          3+                  1       59     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      700    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      121    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      663    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      108    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      665    2357
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      100    2357
0-6 months    ZVITAMBO         ZIMBABWE                       1                   0     4732   13852
0-6 months    ZVITAMBO         ZIMBABWE                       1                   1     1229   13852
0-6 months    ZVITAMBO         ZIMBABWE                       2                   0     3496   13852
0-6 months    ZVITAMBO         ZIMBABWE                       2                   1      659   13852
0-6 months    ZVITAMBO         ZIMBABWE                       3+                  0     3115   13852
0-6 months    ZVITAMBO         ZIMBABWE                       3+                  1      621   13852
6-24 months   COHORTS          GUATEMALA                      1                   0      163    1213
6-24 months   COHORTS          GUATEMALA                      1                   1       19    1213
6-24 months   COHORTS          GUATEMALA                      2                   0      147    1213
6-24 months   COHORTS          GUATEMALA                      2                   1       24    1213
6-24 months   COHORTS          GUATEMALA                      3+                  0      749    1213
6-24 months   COHORTS          GUATEMALA                      3+                  1      111    1213
6-24 months   COHORTS          INDIA                          1                   0      680    4339
6-24 months   COHORTS          INDIA                          1                   1       73    4339
6-24 months   COHORTS          INDIA                          2                   0      972    4339
6-24 months   COHORTS          INDIA                          2                   1      133    4339
6-24 months   COHORTS          INDIA                          3+                  0     2071    4339
6-24 months   COHORTS          INDIA                          3+                  1      410    4339
6-24 months   COHORTS          PHILIPPINES                    1                   0      469    2809
6-24 months   COHORTS          PHILIPPINES                    1                   1      139    2809
6-24 months   COHORTS          PHILIPPINES                    2                   0      468    2809
6-24 months   COHORTS          PHILIPPINES                    2                   1      157    2809
6-24 months   COHORTS          PHILIPPINES                    3+                  0     1123    2809
6-24 months   COHORTS          PHILIPPINES                    3+                  1      453    2809
6-24 months   GMS-Nepal        NEPAL                          1                   0       90     590
6-24 months   GMS-Nepal        NEPAL                          1                   1       77     590
6-24 months   GMS-Nepal        NEPAL                          2                   0       90     590
6-24 months   GMS-Nepal        NEPAL                          2                   1       62     590
6-24 months   GMS-Nepal        NEPAL                          3+                  0      131     590
6-24 months   GMS-Nepal        NEPAL                          3+                  1      140     590
6-24 months   JiVitA-3         BANGLADESH                     1                   0     5546   17298
6-24 months   JiVitA-3         BANGLADESH                     1                   1     1080   17298
6-24 months   JiVitA-3         BANGLADESH                     2                   0     4943   17298
6-24 months   JiVitA-3         BANGLADESH                     2                   1      900   17298
6-24 months   JiVitA-3         BANGLADESH                     3+                  0     3972   17298
6-24 months   JiVitA-3         BANGLADESH                     3+                  1      857   17298
6-24 months   Keneba           GAMBIA                         1                   0      169    1924
6-24 months   Keneba           GAMBIA                         1                   1       58    1924
6-24 months   Keneba           GAMBIA                         2                   0      140    1924
6-24 months   Keneba           GAMBIA                         2                   1       58    1924
6-24 months   Keneba           GAMBIA                         3+                  0      973    1924
6-24 months   Keneba           GAMBIA                         3+                  1      526    1924
6-24 months   PROVIDE          BANGLADESH                     1                   0      189     615
6-24 months   PROVIDE          BANGLADESH                     1                   1       38     615
6-24 months   PROVIDE          BANGLADESH                     2                   0      189     615
6-24 months   PROVIDE          BANGLADESH                     2                   1       35     615
6-24 months   PROVIDE          BANGLADESH                     3+                  0      138     615
6-24 months   PROVIDE          BANGLADESH                     3+                  1       26     615
6-24 months   SAS-CompFeed     INDIA                          1                   0      303    1389
6-24 months   SAS-CompFeed     INDIA                          1                   1      114    1389
6-24 months   SAS-CompFeed     INDIA                          2                   0      237    1389
6-24 months   SAS-CompFeed     INDIA                          2                   1       84    1389
6-24 months   SAS-CompFeed     INDIA                          3+                  0      424    1389
6-24 months   SAS-CompFeed     INDIA                          3+                  1      227    1389
6-24 months   SAS-FoodSuppl    INDIA                          1                   0        3     402
6-24 months   SAS-FoodSuppl    INDIA                          1                   1        4     402
6-24 months   SAS-FoodSuppl    INDIA                          2                   0       59     402
6-24 months   SAS-FoodSuppl    INDIA                          2                   1       18     402
6-24 months   SAS-FoodSuppl    INDIA                          3+                  0      197     402
6-24 months   SAS-FoodSuppl    INDIA                          3+                  1      121     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      567    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      106    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      541    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      111    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      561    1987
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      101    1987
6-24 months   ZVITAMBO         ZIMBABWE                       1                   0     4104   10814
6-24 months   ZVITAMBO         ZIMBABWE                       1                   1      366   10814
6-24 months   ZVITAMBO         ZIMBABWE                       2                   0     2934   10814
6-24 months   ZVITAMBO         ZIMBABWE                       2                   1      354   10814
6-24 months   ZVITAMBO         ZIMBABWE                       3+                  0     2739   10814
6-24 months   ZVITAMBO         ZIMBABWE                       3+                  1      317   10814


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
![](/tmp/a1068eee-238a-4e02-a438-cc7e34e76b47/9d072314-6c8d-426a-8609-4c0e09bc25ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1068eee-238a-4e02-a438-cc7e34e76b47/9d072314-6c8d-426a-8609-4c0e09bc25ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1068eee-238a-4e02-a438-cc7e34e76b47/9d072314-6c8d-426a-8609-4c0e09bc25ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1068eee-238a-4e02-a438-cc7e34e76b47/9d072314-6c8d-426a-8609-4c0e09bc25ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.3402842   0.2415591   0.4390092
0-24 months   COHORTS          GUATEMALA                      2                    NA                0.2868525   0.1804435   0.3932616
0-24 months   COHORTS          GUATEMALA                      3+                   NA                0.2343865   0.2022621   0.2665109
0-24 months   COHORTS          INDIA                          1                    NA                0.3277439   0.2798732   0.3756147
0-24 months   COHORTS          INDIA                          2                    NA                0.3244185   0.2871178   0.3617191
0-24 months   COHORTS          INDIA                          3+                   NA                0.3418457   0.3206803   0.3630110
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.3882182   0.3332934   0.4431430
0-24 months   COHORTS          PHILIPPINES                    2                    NA                0.3827506   0.3240907   0.4414105
0-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.4164264   0.3846100   0.4482428
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4922871   0.3807695   0.6038046
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5551531   0.4257395   0.6845667
0-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.6361977   0.5778752   0.6945202
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2793362   0.2627668   0.2959057
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2420887   0.2257929   0.2583845
0-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.2326747   0.2173814   0.2479679
0-24 months   Keneba           GAMBIA                         1                    NA                0.4694314   0.3925204   0.5463424
0-24 months   Keneba           GAMBIA                         2                    NA                0.4817270   0.3852341   0.5782199
0-24 months   Keneba           GAMBIA                         3+                   NA                0.4648408   0.4329847   0.4966970
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.3787174   0.3036469   0.4537879
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.2811455   0.2061183   0.3561727
0-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.3361996   0.2427227   0.4296765
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.4052898   0.3090166   0.5015631
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.3810998   0.2855915   0.4766081
0-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.4381844   0.3829149   0.4934539
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.4285714   0.2166616   0.6404813
0-24 months   SAS-FoodSuppl    INDIA                          2                    NA                0.3376623   0.2319066   0.4434181
0-24 months   SAS-FoodSuppl    INDIA                          3+                   NA                0.5062500   0.4514060   0.5610940
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2666521   0.2254788   0.3078253
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2435118   0.2038267   0.2831970
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2465759   0.2066401   0.2865118
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2566611   0.2384234   0.2748987
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.2251247   0.2057283   0.2445212
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.2200554   0.2003013   0.2398095
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.2186463   0.1342314   0.3030613
0-6 months    COHORTS          GUATEMALA                      2                    NA                0.1889627   0.0882138   0.2897116
0-6 months    COHORTS          GUATEMALA                      3+                   NA                0.2039347   0.1676238   0.2402455
0-6 months    COHORTS          INDIA                          1                    NA                0.2668919   0.2235232   0.3102605
0-6 months    COHORTS          INDIA                          2                    NA                0.2299531   0.1962631   0.2636431
0-6 months    COHORTS          INDIA                          3+                   NA                0.2391161   0.2188329   0.2593992
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.2735406   0.2271890   0.3198922
0-6 months    COHORTS          PHILIPPINES                    2                    NA                0.2344372   0.1792824   0.2895920
0-6 months    COHORTS          PHILIPPINES                    3+                   NA                0.2249004   0.1962834   0.2535174
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.3891296   0.2835587   0.4947006
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.3954211   0.2658796   0.5249627
0-6 months    GMS-Nepal        NEPAL                          3+                   NA                0.3769646   0.3108371   0.4430920
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2110952   0.1961702   0.2260202
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.1577306   0.1433789   0.1720822
0-6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.1498886   0.1376078   0.1621693
0-6 months    Keneba           GAMBIA                         1                    NA                0.4957086   0.4201820   0.5712351
0-6 months    Keneba           GAMBIA                         2                    NA                0.2664049   0.1738972   0.3589125
0-6 months    Keneba           GAMBIA                         3+                   NA                0.2833092   0.2543330   0.3122853
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.3124585   0.2409510   0.3839660
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.2136664   0.1441235   0.2832093
0-6 months    PROVIDE          BANGLADESH                     3+                   NA                0.1924758   0.1173315   0.2676200
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.2178574   0.1492242   0.2864906
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.2176043   0.1516430   0.2835656
0-6 months    SAS-CompFeed     INDIA                          3+                   NA                0.2127018   0.1758838   0.2495199
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.3333333   0.1314724   0.5351943
0-6 months    SAS-FoodSuppl    INDIA                          2                    NA                0.1558442   0.0747332   0.2369551
0-6 months    SAS-FoodSuppl    INDIA                          3+                   NA                0.1843750   0.1418358   0.2269142
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1618314   0.1270514   0.1966113
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1480396   0.1137797   0.1822994
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1321846   0.1038069   0.1605624
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2086934   0.1913856   0.2260013
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1631558   0.1447490   0.1815626
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1373598   0.1214495   0.1532701
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.1026881   0.0581389   0.1472372
6-24 months   COHORTS          GUATEMALA                      2                    NA                0.1404299   0.0879507   0.1929091
6-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1290578   0.1066342   0.1514814
6-24 months   COHORTS          INDIA                          1                    NA                0.0885053   0.0590443   0.1179662
6-24 months   COHORTS          INDIA                          2                    NA                0.1282646   0.1008586   0.1556705
6-24 months   COHORTS          INDIA                          3+                   NA                0.1553068   0.1382077   0.1724059
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1862171   0.1408788   0.2315553
6-24 months   COHORTS          PHILIPPINES                    2                    NA                0.2505954   0.1978626   0.3033282
6-24 months   COHORTS          PHILIPPINES                    3+                   NA                0.2984341   0.2683414   0.3285267
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.3993921   0.2828240   0.5159601
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.3675447   0.2389205   0.4961689
6-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.4741810   0.4038988   0.5444632
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1577983   0.1426732   0.1729233
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.1563971   0.1425307   0.1702634
6-24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.1503972   0.1358552   0.1649391
6-24 months   Keneba           GAMBIA                         1                    NA                0.1962193   0.1352934   0.2571453
6-24 months   Keneba           GAMBIA                         2                    NA                0.2754678   0.1843300   0.3666055
6-24 months   Keneba           GAMBIA                         3+                   NA                0.3227218   0.2945161   0.3509275
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1622233   0.1146056   0.2098411
6-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1610407   0.1119215   0.2101599
6-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1573277   0.1010840   0.2135714
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3039451   0.2431183   0.3647719
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2823508   0.2015534   0.3631482
6-24 months   SAS-CompFeed     INDIA                          3+                   NA                0.3567901   0.3176225   0.3959577
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1841474   0.1426923   0.2256025
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1725455   0.1339615   0.2111295
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1728656   0.1355035   0.2102278
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0874043   0.0733542   0.1014544
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1071863   0.0896972   0.1246754
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1311724   0.1113124   0.1510324


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   COHORTS          INDIA                          NA                   NA                0.3378028   0.3241691   0.3514364
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580131   0.2515484   0.2644777
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4874372   0.4654705   0.5094038
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367416   0.2195770   0.2539062
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2367157   0.2296604   0.2437709
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    COHORTS          INDIA                          NA                   NA                0.2434743   0.2308547   0.2560940
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1761793   0.1705546   0.1818041
0-6 months    Keneba           GAMBIA                         NA                   NA                0.2976769   0.2768415   0.3185124
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395842   0.1255905   0.1535779
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1811291   0.1747154   0.1875428
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   COHORTS          INDIA                          NA                   NA                0.1419682   0.1315821   0.1523542
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3336798   0.3126050   0.3547547
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600403   0.1439152   0.1761654
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958942   0.0903444   0.1014441


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      2                    1                 0.8429794   0.5262830   1.3502511
0-24 months   COHORTS          GUATEMALA                      3+                   1                 0.6887964   0.4997719   0.9493140
0-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          2                    1                 0.9898534   0.8219916   1.1919949
0-24 months   COHORTS          INDIA                          3+                   1                 1.0430267   0.8901165   1.2222047
0-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    2                    1                 0.9859161   0.8003709   1.2144751
0-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.0726608   0.9133380   1.2597758
0-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          2                    1                 1.1277020   0.8143979   1.5615360
0-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.2923308   1.0121049   1.6501439
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.8666569   0.7959339   0.9436641
0-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.8329555   0.7625799   0.9098257
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 1.0261926   0.7921951   1.3293080
0-24 months   Keneba           GAMBIA                         3+                   1                 0.9902210   0.8291350   1.1826032
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.7423623   0.5330469   1.0338709
0-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.8877321   0.6315647   1.2478030
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9403143   0.7378563   1.1983241
0-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.0811629   0.8516036   1.3726025
0-24 months   SAS-FoodSuppl    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          2                    1                 0.7878788   0.4387984   1.4146657
0-24 months   SAS-FoodSuppl    INDIA                          3+                   1                 1.1812500   0.7120467   1.9596350
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9132194   0.7297474   1.1428196
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9247104   0.7391661   1.1568297
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.8771284   0.7844979   0.9806964
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 0.8573773   0.7646660   0.9613293
0-6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      2                    1                 0.8642391   0.4475985   1.6687037
0-6 months    COHORTS          GUATEMALA                      3+                   1                 0.9327148   0.6099733   1.4262212
0-6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          2                    1                 0.8615965   0.6922752   1.0723316
0-6 months    COHORTS          INDIA                          3+                   1                 0.8959286   0.7458822   1.0761591
0-6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    2                    1                 0.8570472   0.6413518   1.1452840
0-6 months    COHORTS          PHILIPPINES                    3+                   1                 0.8221829   0.6651817   1.0162406
0-6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          2                    1                 1.0161681   0.6640597   1.5549773
0-6 months    GMS-Nepal        NEPAL                          3+                   1                 0.9687377   0.7012387   1.3382786
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.7472012   0.6695256   0.8338884
0-6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.7100521   0.6360668   0.7926431
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.5374223   0.3678461   0.7851729
0-6 months    Keneba           GAMBIA                         3+                   1                 0.5715236   0.4758095   0.6864917
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 0.6838233   0.4597208   1.0171702
0-6 months    PROVIDE          BANGLADESH                     3+                   1                 0.6160043   0.3919216   0.9682073
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.9988383   0.6958046   1.4338479
0-6 months    SAS-CompFeed     INDIA                          3+                   1                 0.9763352   0.7678063   1.2414984
0-6 months    SAS-FoodSuppl    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          2                    1                 0.4675325   0.2103901   1.0389588
0-6 months    SAS-FoodSuppl    INDIA                          3+                   1                 0.5531250   0.2893215   1.0574646
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9147766   0.6672173   1.2541884
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8168048   0.6028576   1.1066794
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.7817966   0.6796690   0.8992700
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 0.6581895   0.5708021   0.7589555
6-24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      2                    1                 1.3675388   0.7715182   2.4240028
6-24 months   COHORTS          GUATEMALA                      3+                   1                 1.2567945   0.7875714   2.0055736
6-24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          2                    1                 1.4492308   0.9762129   2.1514467
6-24 months   COHORTS          INDIA                          3+                   1                 1.7547750   1.2362535   2.4907800
6-24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    2                    1                 1.3457165   0.9760150   1.8554560
6-24 months   COHORTS          PHILIPPINES                    3+                   1                 1.6026138   1.2319354   2.0848261
6-24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          2                    1                 0.9202604   0.5838434   1.4505245
6-24 months   GMS-Nepal        NEPAL                          3+                   1                 1.1872569   0.8555969   1.6474803
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9911202   0.8726362   1.1256916
6-24 months   JiVitA-3         BANGLADESH                     3+                   1                 0.9530977   0.8311389   1.0929523
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 1.4038767   0.8917857   2.2100262
6-24 months   Keneba           GAMBIA                         3+                   1                 1.6446991   1.1910231   2.2711861
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2                    1                 0.9927096   0.6497899   1.5166016
6-24 months   PROVIDE          BANGLADESH                     3+                   1                 0.9698216   0.6103355   1.5410439
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9289532   0.7741654   1.1146896
6-24 months   SAS-CompFeed     INDIA                          3+                   1                 1.1738635   0.9623023   1.4319363
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9369967   0.6821026   1.2871419
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9387349   0.6867717   1.2831387
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.2263269   0.9754480   1.5417303
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.5007542   1.2034594   1.8714909


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0852506   -0.1813594    0.0108582
0-24 months   COHORTS          INDIA                          1                    NA                 0.0100588   -0.0360124    0.0561301
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0153943   -0.0370853    0.0678738
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0980919   -0.0069398    0.2031237
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0213232   -0.0365517   -0.0060947
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0180058   -0.0581310    0.0941426
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0272888   -0.0938155    0.0392379
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0097795   -0.0584239    0.0779830
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.0427204   -0.1638931    0.2493340
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0299105   -0.0670243    0.0072034
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0199454   -0.0367647   -0.0031261
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0182700   -0.0998821    0.0633420
0-6 months    COHORTS          INDIA                          1                    NA                -0.0234175   -0.0648734    0.0180384
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.0379953   -0.0816601    0.0056696
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0130364   -0.1124119    0.0863392
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0349159   -0.0487356   -0.0210961
0-6 months    Keneba           GAMBIA                         1                    NA                -0.1980316   -0.2724406   -0.1236227
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0538871   -0.1164282    0.0086540
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0020762   -0.0452771    0.0494294
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.1467305   -0.3417992    0.0483382
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0222472   -0.0535066    0.0090123
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0275643   -0.0434755   -0.0116532
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0242699   -0.0174653    0.0660051
6-24 months   COHORTS          INDIA                          1                    NA                 0.0534629    0.0244612    0.0824647
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0804259    0.0366017    0.1242500
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0734893   -0.0370191    0.1839977
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0062091   -0.0078068    0.0202250
6-24 months   Keneba           GAMBIA                         1                    NA                 0.1374605    0.0763191    0.1986018
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0012477   -0.0388487    0.0363533
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0020304   -0.0398719    0.0439327
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0241071   -0.0617242    0.0135099
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0084899   -0.0046736    0.0216533


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      1                    NA                -0.3342721   -0.7716822   -0.0048540
0-24 months   COHORTS          INDIA                          1                    NA                 0.0297773   -0.1166467    0.1570009
0-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0381413   -0.1010511    0.1597372
0-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1661508   -0.0326117    0.3266544
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0826438   -0.1433335   -0.0251757
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0369397   -0.1324361    0.1809824
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0776511   -0.2848765    0.0961530
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0235612   -0.1561051    0.1753063
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.0906454   -0.4727690    0.4385231
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1263422   -0.2946618    0.0200941
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0842590   -0.1577395   -0.0154422
0-6 months    COHORTS          GUATEMALA                      1                    NA                -0.0911786   -0.5855725    0.2490594
0-6 months    COHORTS          INDIA                          1                    NA                -0.0961807   -0.2804532    0.0615728
0-6 months    COHORTS          PHILIPPINES                    1                    NA                -0.1613077   -0.3625044    0.0101790
0-6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0346626   -0.3357535    0.1985597
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.1981837   -0.2795160   -0.1220212
0-6 months    Keneba           GAMBIA                         1                    NA                -0.6652569   -0.9445156   -0.4261035
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2084030   -0.4767403    0.0111749
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0094400   -0.2313389    0.2031364
0-6 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.7863248   -2.2032501    0.0038379
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1593816   -0.4062987    0.0441819
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.1521807   -0.2434889   -0.0675771
6-24 months   COHORTS          GUATEMALA                      1                    NA                 0.1911648   -0.2132994    0.4607973
6-24 months   COHORTS          INDIA                          1                    NA                 0.3765839    0.1374260    0.5494327
6-24 months   COHORTS          PHILIPPINES                    1                    NA                 0.3016238    0.1171659    0.4475414
6-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1554075   -0.1138202    0.3595586
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0378587   -0.0514779    0.1196051
6-24 months   Keneba           GAMBIA                         1                    NA                 0.4119533    0.2009464    0.5672393
6-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0077510   -0.2706202    0.2007352
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0066358   -0.1402526    0.1346020
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1506318   -0.4113424    0.0619190
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0885339   -0.0594516    0.2158486
