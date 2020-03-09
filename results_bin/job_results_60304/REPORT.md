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

agecat      studyid          country                        parity    wasted   n_cell       n
----------  ---------------  -----------------------------  -------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      1              0       66     756
Birth       COHORTS          GUATEMALA                      1              1       28     756
Birth       COHORTS          GUATEMALA                      2              0       87     756
Birth       COHORTS          GUATEMALA                      2              1       31     756
Birth       COHORTS          GUATEMALA                      3+             0      411     756
Birth       COHORTS          GUATEMALA                      3+             1      133     756
Birth       COHORTS          INDIA                          1              0      505    3855
Birth       COHORTS          INDIA                          1              1      136    3855
Birth       COHORTS          INDIA                          2              0      823    3855
Birth       COHORTS          INDIA                          2              1      159    3855
Birth       COHORTS          INDIA                          3+             0     1876    3855
Birth       COHORTS          INDIA                          3+             1      356    3855
Birth       COHORTS          PHILIPPINES                    1              0      497    2899
Birth       COHORTS          PHILIPPINES                    1              1      143    2899
Birth       COHORTS          PHILIPPINES                    2              0      552    2899
Birth       COHORTS          PHILIPPINES                    2              1      105    2899
Birth       COHORTS          PHILIPPINES                    3+             0     1399    2899
Birth       COHORTS          PHILIPPINES                    3+             1      203    2899
Birth       GMS-Nepal        NEPAL                          1              0      137     641
Birth       GMS-Nepal        NEPAL                          1              1       48     641
Birth       GMS-Nepal        NEPAL                          2              0      132     641
Birth       GMS-Nepal        NEPAL                          2              1       37     641
Birth       GMS-Nepal        NEPAL                          3+             0      240     641
Birth       GMS-Nepal        NEPAL                          3+             1       47     641
Birth       JiVitA-3         BANGLADESH                     1              0     4770   18014
Birth       JiVitA-3         BANGLADESH                     1              1      750   18014
Birth       JiVitA-3         BANGLADESH                     2              0     5688   18014
Birth       JiVitA-3         BANGLADESH                     2              1      615   18014
Birth       JiVitA-3         BANGLADESH                     3+             0     5583   18014
Birth       JiVitA-3         BANGLADESH                     3+             1      608   18014
Birth       Keneba           GAMBIA                         1              0       99    1338
Birth       Keneba           GAMBIA                         1              1       47    1338
Birth       Keneba           GAMBIA                         2              0      110    1338
Birth       Keneba           GAMBIA                         2              1       32    1338
Birth       Keneba           GAMBIA                         3+             0      805    1338
Birth       Keneba           GAMBIA                         3+             1      245    1338
Birth       PROVIDE          BANGLADESH                     1              0      152     532
Birth       PROVIDE          BANGLADESH                     1              1       50     532
Birth       PROVIDE          BANGLADESH                     2              0      144     532
Birth       PROVIDE          BANGLADESH                     2              1       38     532
Birth       PROVIDE          BANGLADESH                     3+             0      119     532
Birth       PROVIDE          BANGLADESH                     3+             1       29     532
Birth       SAS-CompFeed     INDIA                          1              0      259    1103
Birth       SAS-CompFeed     INDIA                          1              1       45    1103
Birth       SAS-CompFeed     INDIA                          2              0      232    1103
Birth       SAS-CompFeed     INDIA                          2              1       26    1103
Birth       SAS-CompFeed     INDIA                          3+             0      494    1103
Birth       SAS-CompFeed     INDIA                          3+             1       47    1103
Birth       ZVITAMBO         ZIMBABWE                       1              0     4497   12916
Birth       ZVITAMBO         ZIMBABWE                       1              1     1064   12916
Birth       ZVITAMBO         ZIMBABWE                       2              0     3358   12916
Birth       ZVITAMBO         ZIMBABWE                       2              1      524   12916
Birth       ZVITAMBO         ZIMBABWE                       3+             0     3000   12916
Birth       ZVITAMBO         ZIMBABWE                       3+             1      473   12916
6 months    COHORTS          GUATEMALA                      1              0      128     963
6 months    COHORTS          GUATEMALA                      1              1        4     963
6 months    COHORTS          GUATEMALA                      2              0      136     963
6 months    COHORTS          GUATEMALA                      2              1        3     963
6 months    COHORTS          GUATEMALA                      3+             0      667     963
6 months    COHORTS          GUATEMALA                      3+             1       25     963
6 months    COHORTS          INDIA                          1              0      669    4285
6 months    COHORTS          INDIA                          1              1       72    4285
6 months    COHORTS          INDIA                          2              0      970    4285
6 months    COHORTS          INDIA                          2              1      123    4285
6 months    COHORTS          INDIA                          3+             0     2084    4285
6 months    COHORTS          INDIA                          3+             1      367    4285
6 months    COHORTS          PHILIPPINES                    1              0      548    2706
6 months    COHORTS          PHILIPPINES                    1              1       26    2706
6 months    COHORTS          PHILIPPINES                    2              0      580    2706
6 months    COHORTS          PHILIPPINES                    2              1       27    2706
6 months    COHORTS          PHILIPPINES                    3+             0     1417    2706
6 months    COHORTS          PHILIPPINES                    3+             1      108    2706
6 months    GMS-Nepal        NEPAL                          1              0      145     564
6 months    GMS-Nepal        NEPAL                          1              1        8     564
6 months    GMS-Nepal        NEPAL                          2              0      133     564
6 months    GMS-Nepal        NEPAL                          2              1       16     564
6 months    GMS-Nepal        NEPAL                          3+             0      235     564
6 months    GMS-Nepal        NEPAL                          3+             1       27     564
6 months    JiVitA-3         BANGLADESH                     1              0     5857   16784
6 months    JiVitA-3         BANGLADESH                     1              1      541   16784
6 months    JiVitA-3         BANGLADESH                     2              0     5246   16784
6 months    JiVitA-3         BANGLADESH                     2              1      439   16784
6 months    JiVitA-3         BANGLADESH                     3+             0     4260   16784
6 months    JiVitA-3         BANGLADESH                     3+             1      441   16784
6 months    Keneba           GAMBIA                         1              0      187    1623
6 months    Keneba           GAMBIA                         1              1        8    1623
6 months    Keneba           GAMBIA                         2              0      155    1623
6 months    Keneba           GAMBIA                         2              1        9    1623
6 months    Keneba           GAMBIA                         3+             0     1185    1623
6 months    Keneba           GAMBIA                         3+             1       79    1623
6 months    PROVIDE          BANGLADESH                     1              0      209     603
6 months    PROVIDE          BANGLADESH                     1              1        9     603
6 months    PROVIDE          BANGLADESH                     2              0      214     603
6 months    PROVIDE          BANGLADESH                     2              1        8     603
6 months    PROVIDE          BANGLADESH                     3+             0      155     603
6 months    PROVIDE          BANGLADESH                     3+             1        8     603
6 months    SAS-CompFeed     INDIA                          1              0      352    1334
6 months    SAS-CompFeed     INDIA                          1              1       40    1334
6 months    SAS-CompFeed     INDIA                          2              0      262    1334
6 months    SAS-CompFeed     INDIA                          2              1       40    1334
6 months    SAS-CompFeed     INDIA                          3+             0      554    1334
6 months    SAS-CompFeed     INDIA                          3+             1       86    1334
6 months    SAS-FoodSuppl    INDIA                          1              0        4     380
6 months    SAS-FoodSuppl    INDIA                          1              1        3     380
6 months    SAS-FoodSuppl    INDIA                          2              0       67     380
6 months    SAS-FoodSuppl    INDIA                          2              1        5     380
6 months    SAS-FoodSuppl    INDIA                          3+             0      240     380
6 months    SAS-FoodSuppl    INDIA                          3+             1       61     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      652    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       27    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      627    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       30    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0      630    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       28    1994
6 months    ZVITAMBO         ZIMBABWE                       1              0     3311    8504
6 months    ZVITAMBO         ZIMBABWE                       1              1       81    8504
6 months    ZVITAMBO         ZIMBABWE                       2              0     2498    8504
6 months    ZVITAMBO         ZIMBABWE                       2              1       89    8504
6 months    ZVITAMBO         ZIMBABWE                       3+             0     2430    8504
6 months    ZVITAMBO         ZIMBABWE                       3+             1       95    8504
24 months   COHORTS          GUATEMALA                      1              0      157    1076
24 months   COHORTS          GUATEMALA                      1              1       10    1076
24 months   COHORTS          GUATEMALA                      2              0      145    1076
24 months   COHORTS          GUATEMALA                      2              1        6    1076
24 months   COHORTS          GUATEMALA                      3+             0      724    1076
24 months   COHORTS          GUATEMALA                      3+             1       34    1076
24 months   COHORTS          INDIA                          1              0      529    3354
24 months   COHORTS          INDIA                          1              1       32    3354
24 months   COHORTS          INDIA                          2              0      779    3354
24 months   COHORTS          INDIA                          2              1       58    3354
24 months   COHORTS          INDIA                          3+             0     1729    3354
24 months   COHORTS          INDIA                          3+             1      227    3354
24 months   COHORTS          PHILIPPINES                    1              0      491    2449
24 months   COHORTS          PHILIPPINES                    1              1       32    2449
24 months   COHORTS          PHILIPPINES                    2              0      512    2449
24 months   COHORTS          PHILIPPINES                    2              1       32    2449
24 months   COHORTS          PHILIPPINES                    3+             0     1279    2449
24 months   COHORTS          PHILIPPINES                    3+             1      103    2449
24 months   GMS-Nepal        NEPAL                          1              0      104     487
24 months   GMS-Nepal        NEPAL                          1              1       26     487
24 months   GMS-Nepal        NEPAL                          2              0      106     487
24 months   GMS-Nepal        NEPAL                          2              1       24     487
24 months   GMS-Nepal        NEPAL                          3+             0      186     487
24 months   GMS-Nepal        NEPAL                          3+             1       41     487
24 months   JiVitA-3         BANGLADESH                     1              0     2478    8603
24 months   JiVitA-3         BANGLADESH                     1              1      688    8603
24 months   JiVitA-3         BANGLADESH                     2              0     2267    8603
24 months   JiVitA-3         BANGLADESH                     2              1      642    8603
24 months   JiVitA-3         BANGLADESH                     3+             0     1980    8603
24 months   JiVitA-3         BANGLADESH                     3+             1      548    8603
24 months   Keneba           GAMBIA                         1              0      125    1376
24 months   Keneba           GAMBIA                         1              1       12    1376
24 months   Keneba           GAMBIA                         2              0      127    1376
24 months   Keneba           GAMBIA                         2              1       12    1376
24 months   Keneba           GAMBIA                         3+             0      987    1376
24 months   Keneba           GAMBIA                         3+             1      113    1376
24 months   PROVIDE          BANGLADESH                     1              0      184     579
24 months   PROVIDE          BANGLADESH                     1              1       27     579
24 months   PROVIDE          BANGLADESH                     2              0      198     579
24 months   PROVIDE          BANGLADESH                     2              1       15     579
24 months   PROVIDE          BANGLADESH                     3+             0      135     579
24 months   PROVIDE          BANGLADESH                     3+             1       20     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       1              0      135     432
24 months   ZVITAMBO         ZIMBABWE                       1              1       26     432
24 months   ZVITAMBO         ZIMBABWE                       2              0      102     432
24 months   ZVITAMBO         ZIMBABWE                       2              1       21     432
24 months   ZVITAMBO         ZIMBABWE                       3+             0      116     432
24 months   ZVITAMBO         ZIMBABWE                       3+             1       32     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/810a2e21-0ddc-4957-9dbe-8bc8cda3d919/b6a28a98-4498-4ed5-ab53-fee42acf817b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/810a2e21-0ddc-4957-9dbe-8bc8cda3d919/b6a28a98-4498-4ed5-ab53-fee42acf817b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/810a2e21-0ddc-4957-9dbe-8bc8cda3d919/b6a28a98-4498-4ed5-ab53-fee42acf817b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/810a2e21-0ddc-4957-9dbe-8bc8cda3d919/b6a28a98-4498-4ed5-ab53-fee42acf817b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    NA                0.5227657   0.4157625   0.6297688
Birth       COHORTS          GUATEMALA                      2                    NA                0.2764171   0.1212352   0.4315989
Birth       COHORTS          GUATEMALA                      3+                   NA                0.2539701   0.2096843   0.2982560
Birth       COHORTS          INDIA                          1                    NA                0.2320598   0.1861029   0.2780167
Birth       COHORTS          INDIA                          2                    NA                0.1686239   0.1351532   0.2020945
Birth       COHORTS          INDIA                          3+                   NA                0.1533968   0.1363390   0.1704546
Birth       COHORTS          PHILIPPINES                    1                    NA                0.2054260   0.1596238   0.2512281
Birth       COHORTS          PHILIPPINES                    2                    NA                0.1628590   0.1169206   0.2087974
Birth       COHORTS          PHILIPPINES                    3+                   NA                0.1260218   0.1047061   0.1473375
Birth       GMS-Nepal        NEPAL                          1                    NA                0.2390512   0.1412787   0.3368237
Birth       GMS-Nepal        NEPAL                          2                    NA                0.2431034   0.1182967   0.3679102
Birth       GMS-Nepal        NEPAL                          3+                   NA                0.2109254   0.1504608   0.2713901
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1763301   0.1571506   0.1955096
Birth       JiVitA-3         BANGLADESH                     2                    NA                0.0979824   0.0838675   0.1120974
Birth       JiVitA-3         BANGLADESH                     3+                   NA                0.0868724   0.0750407   0.0987041
Birth       Keneba           GAMBIA                         1                    NA                0.5211163   0.4261337   0.6160989
Birth       Keneba           GAMBIA                         2                    NA                0.2114585   0.1332691   0.2896479
Birth       Keneba           GAMBIA                         3+                   NA                0.2350612   0.1986656   0.2714569
Birth       PROVIDE          BANGLADESH                     1                    NA                0.2209306   0.1515877   0.2902736
Birth       PROVIDE          BANGLADESH                     2                    NA                0.1983709   0.1232749   0.2734669
Birth       PROVIDE          BANGLADESH                     3+                   NA                0.1951762   0.1104585   0.2798940
Birth       SAS-CompFeed     INDIA                          1                    NA                0.1873398   0.1132187   0.2614610
Birth       SAS-CompFeed     INDIA                          2                    NA                0.0999430   0.0595513   0.1403347
Birth       SAS-CompFeed     INDIA                          3+                   NA                0.1005863   0.0634188   0.1377537
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1908643   0.1738471   0.2078815
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                0.1421979   0.1250093   0.1593864
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                0.1115309   0.0966108   0.1264510
6 months    COHORTS          INDIA                          1                    NA                0.0982024   0.0693443   0.1270605
6 months    COHORTS          INDIA                          2                    NA                0.1140375   0.0892628   0.1388122
6 months    COHORTS          INDIA                          3+                   NA                0.1512317   0.1340101   0.1684533
6 months    COHORTS          PHILIPPINES                    1                    NA                0.0375557   0.0200944   0.0550169
6 months    COHORTS          PHILIPPINES                    2                    NA                0.0384431   0.0214131   0.0554732
6 months    COHORTS          PHILIPPINES                    3+                   NA                0.0733329   0.0549701   0.0916958
6 months    GMS-Nepal        NEPAL                          1                    NA                0.0522876   0.0169835   0.0875917
6 months    GMS-Nepal        NEPAL                          2                    NA                0.1073826   0.0576272   0.1571379
6 months    GMS-Nepal        NEPAL                          3+                   NA                0.1030534   0.0662068   0.1399000
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0919226   0.0770450   0.1068003
6 months    JiVitA-3         BANGLADESH                     2                    NA                0.0748065   0.0641935   0.0854195
6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.0792840   0.0694023   0.0891657
6 months    Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    PROVIDE          BANGLADESH                     1                    NA                0.0412844   0.0148531   0.0677157
6 months    PROVIDE          BANGLADESH                     2                    NA                0.0360360   0.0114985   0.0605736
6 months    PROVIDE          BANGLADESH                     3+                   NA                0.0490798   0.0158874   0.0822721
6 months    SAS-CompFeed     INDIA                          1                    NA                0.0902045   0.0621227   0.1182863
6 months    SAS-CompFeed     INDIA                          2                    NA                0.1406838   0.0791079   0.2022596
6 months    SAS-CompFeed     INDIA                          3+                   NA                0.1166966   0.0831877   0.1502055
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0446193   0.0222020   0.0670367
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0492244   0.0263865   0.0720623
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0335229   0.0186174   0.0484285
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0213366   0.0151289   0.0275443
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0371635   0.0261855   0.0481414
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.0395300   0.0266878   0.0523722
24 months   COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   COHORTS          INDIA                          1                    NA                0.0677797   0.0448046   0.0907548
24 months   COHORTS          INDIA                          2                    NA                0.0862617   0.0654410   0.1070824
24 months   COHORTS          INDIA                          3+                   NA                0.1069405   0.0932400   0.1206411
24 months   COHORTS          PHILIPPINES                    1                    NA                0.0631554   0.0358443   0.0904665
24 months   COHORTS          PHILIPPINES                    2                    NA                0.0674711   0.0293658   0.1055765
24 months   COHORTS          PHILIPPINES                    3+                   NA                0.1147829   0.0920649   0.1375009
24 months   GMS-Nepal        NEPAL                          1                    NA                0.2115596   0.0628501   0.3602690
24 months   GMS-Nepal        NEPAL                          2                    NA                0.1938823   0.0453862   0.3423785
24 months   GMS-Nepal        NEPAL                          3+                   NA                0.2081021   0.1179570   0.2982472
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1974022   0.1689994   0.2258049
24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2153975   0.1886807   0.2421142
24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.2107374   0.1821127   0.2393620
24 months   Keneba           GAMBIA                         1                    NA                0.1385191   0.0763558   0.2006823
24 months   Keneba           GAMBIA                         2                    NA                0.0728897   0.0267612   0.1190181
24 months   Keneba           GAMBIA                         3+                   NA                0.0935387   0.0759795   0.1110979
24 months   PROVIDE          BANGLADESH                     1                    NA                0.1305933   0.0841136   0.1770730
24 months   PROVIDE          BANGLADESH                     2                    NA                0.0757952   0.0392649   0.1123254
24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1231218   0.0703021   0.1759415
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1698160   0.1025994   0.2370326
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1704835   0.1003605   0.2406064
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1939999   0.1291936   0.2588062


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       COHORTS          INDIA                          NA                   NA                0.1688716   0.1570438   0.1806994
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1095259   0.1044047   0.1146471
Birth       Keneba           GAMBIA                         NA                   NA                0.2421525   0.2191900   0.2651149
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595695   0.1532538   0.1658853
6 months    COHORTS          INDIA                          NA                   NA                0.1311552   0.1210467   0.1412637
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    Keneba           GAMBIA                         NA                   NA                0.0591497   0.0476693   0.0706302
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426279   0.0337587   0.0514970
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0311618   0.0274686   0.0348550
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   COHORTS          INDIA                          NA                   NA                0.0945140   0.0846121   0.1044160
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2182959   0.2084450   0.2281469
24 months   Keneba           GAMBIA                         NA                   NA                0.0995640   0.0837378   0.1153901
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1828704   0.1463759   0.2193648


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      2                    1                 0.5287590   0.2910754   0.9605279
Birth       COHORTS          GUATEMALA                      3+                   1                 0.4858202   0.3713392   0.6355948
Birth       COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          2                    1                 0.7266397   0.5489680   0.9618143
Birth       COHORTS          INDIA                          3+                   1                 0.6610226   0.5267325   0.8295498
Birth       COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                 0.7927867   0.5533436   1.1358419
Birth       COHORTS          PHILIPPINES                    3+                   1                 0.6134658   0.4637210   0.8115662
Birth       GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                 1.0169513   0.5275927   1.9602054
Birth       GMS-Nepal        NEPAL                          3+                   1                 0.8823441   0.5355750   1.4536363
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                 0.5556761   0.4671475   0.6609817
Birth       JiVitA-3         BANGLADESH                     3+                   1                 0.4926692   0.4131172   0.5875401
Birth       Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         2                    1                 0.4057798   0.2687363   0.6127094
Birth       Keneba           GAMBIA                         3+                   1                 0.4510725   0.3550484   0.5730666
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                 0.8978878   0.5490547   1.4683466
Birth       PROVIDE          BANGLADESH                     3+                   1                 0.8834276   0.5181600   1.5061841
Birth       SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                 0.5334851   0.3129944   0.9093016
Birth       SAS-CompFeed     INDIA                          3+                   1                 0.5369188   0.2829363   1.0188928
Birth       ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 0.7450206   0.6411234   0.8657549
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 0.5843464   0.4975610   0.6862691
6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          2                    1                 1.1612495   0.8057971   1.6734985
6 months    COHORTS          INDIA                          3+                   1                 1.5400000   1.1237219   2.1104866
6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 1.0236310   0.5387785   1.9448075
6 months    COHORTS          PHILIPPINES                    3+                   1                 1.9526465   1.1515166   3.3111363
6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 2.0536913   0.9055194   4.6577114
6 months    GMS-Nepal        NEPAL                          3+                   1                 1.9708969   0.9180260   4.2312905
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                 0.8137987   0.6553890   1.0104965
6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.8625079   0.7082899   1.0503042
6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         2                    1                 1.3376524   0.5279119   3.3894182
6 months    Keneba           GAMBIA                         3+                   1                 1.5234375   0.7477881   3.1036355
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 0.8728729   0.3428041   2.2225725
6 months    PROVIDE          BANGLADESH                     3+                   1                 1.1888207   0.4684591   3.0169011
6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 1.5596089   1.0521271   2.3118689
6 months    SAS-CompFeed     INDIA                          3+                   1                 1.2936894   0.9802265   1.7073933
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1032078   0.5569201   2.1853537
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7513097   0.3841025   1.4695717
6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 1.7417696   1.1506784   2.6364981
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.8526843   1.1978041   2.8656098
24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743   1.7829113
24 months   COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276   1.4862905
24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          2                    1                 1.2726776   0.8402291   1.9276984
24 months   COHORTS          INDIA                          3+                   1                 1.5777664   1.0987585   2.2655997
24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 1.0683348   0.5246838   2.1752899
24 months   COHORTS          PHILIPPINES                    3+                   1                 1.8174677   1.1296510   2.9240792
24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 0.9164433   0.3237067   2.5945346
24 months   GMS-Nepal        NEPAL                          3+                   1                 0.9836571   0.4307542   2.2462490
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 1.0911607   0.9032728   1.3181308
24 months   JiVitA-3         BANGLADESH                     3+                   1                 1.0675535   0.8751465   1.3022625
24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         2                    1                 0.5262065   0.2421829   1.1433232
24 months   Keneba           GAMBIA                         3+                   1                 0.6752765   0.4153264   1.0979277
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 0.5803910   0.3184426   1.0578161
24 months   PROVIDE          BANGLADESH                     3+                   1                 0.9427878   0.5398773   1.6463905
24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.0039305   0.5675779   1.7757502
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.1424123   0.6811465   1.9160428


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.2687974   -0.3725250   -0.1650699
Birth       COHORTS          INDIA                          1                    NA                -0.0631882   -0.1069749   -0.0194015
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.0498551   -0.0929523   -0.0067579
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.0331230   -0.1246058    0.0583599
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0668042   -0.0850743   -0.0485340
Birth       Keneba           GAMBIA                         1                    NA                -0.2789638   -0.3725843   -0.1853433
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0010058   -0.0604657    0.0584540
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.0803588   -0.1599846   -0.0007331
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0312948   -0.0468693   -0.0157203
6 months    COHORTS          INDIA                          1                    NA                 0.0329528    0.0049859    0.0609196
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0219417    0.0051327    0.0387508
6 months    GMS-Nepal        NEPAL                          1                    NA                 0.0381380    0.0045024    0.0717735
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0072587   -0.0211856    0.0066682
6 months    Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0001750   -0.0209691    0.0213190
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0342333    0.0167809    0.0516856
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0019915   -0.0224112    0.0184283
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0098252    0.0040428    0.0156076
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   COHORTS          INDIA                          1                    NA                 0.0267343    0.0047312    0.0487374
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0050357   -0.0208511    0.0309225
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0247012   -0.1686121    0.1192096
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0208938   -0.0059781    0.0477657
24 months   Keneba           GAMBIA                         1                    NA                -0.0389551   -0.1006169    0.0227066
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0235121   -0.0592735    0.0122492
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0130544   -0.0445233    0.0706321


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -1.0583899   -1.5410960   -0.6673786
Birth       COHORTS          INDIA                          1                    NA                -0.3741791   -0.6594681   -0.1379357
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.3204654   -0.6283835   -0.0707728
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.1608471   -0.7017448    0.2081269
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.6099395   -0.7870754   -0.4503613
Birth       Keneba           GAMBIA                         1                    NA                -1.1520173   -1.6016360   -0.7801023
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0045735   -0.3148098    0.2324610
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.7511509   -1.8421002   -0.0789660
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.1961201   -0.2978460   -0.1023675
6 months    COHORTS          INDIA                          1                    NA                 0.2512503    0.0057317    0.4361420
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.3687849    0.0205172    0.5932216
6 months    GMS-Nepal        NEPAL                          1                    NA                 0.4217609   -0.0723843    0.6882083
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0857352   -0.2632470    0.0668326
6 months    Keneba           GAMBIA                         1                    NA                 0.3064103   -0.3277240    0.6376757
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0042202   -0.6618377    0.4033247
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.2751035    0.1184801    0.4038990
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0467172   -0.6540374    0.3376106
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3152962    0.1070586    0.4749719
24 months   COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   COHORTS          INDIA                          1                    NA                 0.2828608    0.0103371    0.4803395
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0738469   -0.3948686    0.3850606
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1321924   -1.2351256    0.4264933
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0957131   -0.0361281    0.2107782
24 months   Keneba           GAMBIA                         1                    NA                -0.3912575   -1.1855524    0.1143670
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.2195729   -0.5997113    0.0702335
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0713859   -0.3032662    0.3383361
