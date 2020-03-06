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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        parity    n_cell      n
-------------  ---------------  -----------------------------  -------  -------  -----
0-3 months     COHORTS          GUATEMALA                      1             93    728
0-3 months     COHORTS          GUATEMALA                      2            111    728
0-3 months     COHORTS          GUATEMALA                      3+           524    728
0-3 months     COHORTS          INDIA                          1            671   4021
0-3 months     COHORTS          INDIA                          2           1015   4021
0-3 months     COHORTS          INDIA                          3+          2335   4021
0-3 months     GMS-Nepal        NEPAL                          1            137    509
0-3 months     GMS-Nepal        NEPAL                          2            129    509
0-3 months     GMS-Nepal        NEPAL                          3+           243    509
0-3 months     Keneba           GAMBIA                         1            130   1145
0-3 months     Keneba           GAMBIA                         2            113   1145
0-3 months     Keneba           GAMBIA                         3+           902   1145
0-3 months     PROVIDE          BANGLADESH                     1            242    640
0-3 months     PROVIDE          BANGLADESH                     2            226    640
0-3 months     PROVIDE          BANGLADESH                     3+           172    640
0-3 months     SAS-CompFeed     INDIA                          1            344   1261
0-3 months     SAS-CompFeed     INDIA                          2            298   1261
0-3 months     SAS-CompFeed     INDIA                          3+           619   1261
0-3 months     ZVITAMBO         ZIMBABWE                       1           3100   7981
0-3 months     ZVITAMBO         ZIMBABWE                       2           2478   7981
0-3 months     ZVITAMBO         ZIMBABWE                       3+          2403   7981
3-6 months     COHORTS          GUATEMALA                      1            107    805
3-6 months     COHORTS          GUATEMALA                      2            114    805
3-6 months     COHORTS          GUATEMALA                      3+           584    805
3-6 months     COHORTS          INDIA                          1            675   4069
3-6 months     COHORTS          INDIA                          2           1042   4069
3-6 months     COHORTS          INDIA                          3+          2352   4069
3-6 months     GMS-Nepal        NEPAL                          1            121    469
3-6 months     GMS-Nepal        NEPAL                          2            120    469
3-6 months     GMS-Nepal        NEPAL                          3+           228    469
3-6 months     Keneba           GAMBIA                         1            146   1130
3-6 months     Keneba           GAMBIA                         2            107   1130
3-6 months     Keneba           GAMBIA                         3+           877   1130
3-6 months     PROVIDE          BANGLADESH                     1            214    598
3-6 months     PROVIDE          BANGLADESH                     2            221    598
3-6 months     PROVIDE          BANGLADESH                     3+           163    598
3-6 months     SAS-CompFeed     INDIA                          1            299   1124
3-6 months     SAS-CompFeed     INDIA                          2            261   1124
3-6 months     SAS-CompFeed     INDIA                          3+           564   1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566   1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536   1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535   1637
3-6 months     ZVITAMBO         ZIMBABWE                       1           2318   6178
3-6 months     ZVITAMBO         ZIMBABWE                       2           1952   6178
3-6 months     ZVITAMBO         ZIMBABWE                       3+          1908   6178
6-9 months     COHORTS          GUATEMALA                      1            113    822
6-9 months     COHORTS          GUATEMALA                      2            117    822
6-9 months     COHORTS          GUATEMALA                      3+           592    822
6-9 months     COHORTS          INDIA                          1            639   3756
6-9 months     COHORTS          INDIA                          2            940   3756
6-9 months     COHORTS          INDIA                          3+          2177   3756
6-9 months     GMS-Nepal        NEPAL                          1            125    481
6-9 months     GMS-Nepal        NEPAL                          2            130    481
6-9 months     GMS-Nepal        NEPAL                          3+           226    481
6-9 months     Keneba           GAMBIA                         1             90    725
6-9 months     Keneba           GAMBIA                         2             67    725
6-9 months     Keneba           GAMBIA                         3+           568    725
6-9 months     PROVIDE          BANGLADESH                     1            204    565
6-9 months     PROVIDE          BANGLADESH                     2            207    565
6-9 months     PROVIDE          BANGLADESH                     3+           154    565
6-9 months     SAS-CompFeed     INDIA                          1            307   1144
6-9 months     SAS-CompFeed     INDIA                          2            267   1144
6-9 months     SAS-CompFeed     INDIA                          3+           570   1144
6-9 months     SAS-FoodSuppl    INDIA                          1              1    314
6-9 months     SAS-FoodSuppl    INDIA                          2             56    314
6-9 months     SAS-FoodSuppl    INDIA                          3+           257    314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513   1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470   1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479   1462
6-9 months     ZVITAMBO         ZIMBABWE                       1           2280   5929
6-9 months     ZVITAMBO         ZIMBABWE                       2           1838   5929
6-9 months     ZVITAMBO         ZIMBABWE                       3+          1811   5929
9-12 months    COHORTS          GUATEMALA                      1            130    929
9-12 months    COHORTS          GUATEMALA                      2            133    929
9-12 months    COHORTS          GUATEMALA                      3+           666    929
9-12 months    COHORTS          INDIA                          1            557   3269
9-12 months    COHORTS          INDIA                          2            814   3269
9-12 months    COHORTS          INDIA                          3+          1898   3269
9-12 months    GMS-Nepal        NEPAL                          1            119    469
9-12 months    GMS-Nepal        NEPAL                          2            126    469
9-12 months    GMS-Nepal        NEPAL                          3+           224    469
9-12 months    Keneba           GAMBIA                         1             75    715
9-12 months    Keneba           GAMBIA                         2             66    715
9-12 months    Keneba           GAMBIA                         3+           574    715
9-12 months    PROVIDE          BANGLADESH                     1            208    566
9-12 months    PROVIDE          BANGLADESH                     2            207    566
9-12 months    PROVIDE          BANGLADESH                     3+           151    566
9-12 months    SAS-CompFeed     INDIA                          1            321   1146
9-12 months    SAS-CompFeed     INDIA                          2            260   1146
9-12 months    SAS-CompFeed     INDIA                          3+           565   1146
9-12 months    SAS-FoodSuppl    INDIA                          1              1    311
9-12 months    SAS-FoodSuppl    INDIA                          2             56    311
9-12 months    SAS-FoodSuppl    INDIA                          3+           254    311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375   1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339   1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348   1062
9-12 months    ZVITAMBO         ZIMBABWE                       1           2289   5932
9-12 months    ZVITAMBO         ZIMBABWE                       2           1822   5932
9-12 months    ZVITAMBO         ZIMBABWE                       3+          1821   5932
12-15 months   COHORTS          GUATEMALA                      1            133    880
12-15 months   COHORTS          GUATEMALA                      2            119    880
12-15 months   COHORTS          GUATEMALA                      3+           628    880
12-15 months   GMS-Nepal        NEPAL                          1            120    469
12-15 months   GMS-Nepal        NEPAL                          2            123    469
12-15 months   GMS-Nepal        NEPAL                          3+           226    469
12-15 months   Keneba           GAMBIA                         1            104   1104
12-15 months   Keneba           GAMBIA                         2            103   1104
12-15 months   Keneba           GAMBIA                         3+           897   1104
12-15 months   PROVIDE          BANGLADESH                     1            199    532
12-15 months   PROVIDE          BANGLADESH                     2            198    532
12-15 months   PROVIDE          BANGLADESH                     3+           135    532
12-15 months   SAS-CompFeed     INDIA                          1            338   1168
12-15 months   SAS-CompFeed     INDIA                          2            262   1168
12-15 months   SAS-CompFeed     INDIA                          3+           568   1168
12-15 months   SAS-FoodSuppl    INDIA                          1              0    303
12-15 months   SAS-FoodSuppl    INDIA                          2             60    303
12-15 months   SAS-FoodSuppl    INDIA                          3+           243    303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265    776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258    776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253    776
12-15 months   ZVITAMBO         ZIMBABWE                       1            934   2548
12-15 months   ZVITAMBO         ZIMBABWE                       2            796   2548
12-15 months   ZVITAMBO         ZIMBABWE                       3+           818   2548
15-18 months   COHORTS          GUATEMALA                      1            116    786
15-18 months   COHORTS          GUATEMALA                      2            109    786
15-18 months   COHORTS          GUATEMALA                      3+           561    786
15-18 months   GMS-Nepal        NEPAL                          1            126    480
15-18 months   GMS-Nepal        NEPAL                          2            129    480
15-18 months   GMS-Nepal        NEPAL                          3+           225    480
15-18 months   Keneba           GAMBIA                         1            109   1122
15-18 months   Keneba           GAMBIA                         2            101   1122
15-18 months   Keneba           GAMBIA                         3+           912   1122
15-18 months   PROVIDE          BANGLADESH                     1            197    528
15-18 months   PROVIDE          BANGLADESH                     2            196    528
15-18 months   PROVIDE          BANGLADESH                     3+           135    528
15-18 months   SAS-CompFeed     INDIA                          1            342   1171
15-18 months   SAS-CompFeed     INDIA                          2            258   1171
15-18 months   SAS-CompFeed     INDIA                          3+           571   1171
15-18 months   SAS-FoodSuppl    INDIA                          1              0    291
15-18 months   SAS-FoodSuppl    INDIA                          2             53    291
15-18 months   SAS-FoodSuppl    INDIA                          3+           238    291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219    649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217    649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213    649
15-18 months   ZVITAMBO         ZIMBABWE                       1            753   2036
15-18 months   ZVITAMBO         ZIMBABWE                       2            635   2036
15-18 months   ZVITAMBO         ZIMBABWE                       3+           648   2036
18-21 months   COHORTS          GUATEMALA                      1            111    776
18-21 months   COHORTS          GUATEMALA                      2            107    776
18-21 months   COHORTS          GUATEMALA                      3+           558    776
18-21 months   GMS-Nepal        NEPAL                          1            116    445
18-21 months   GMS-Nepal        NEPAL                          2            121    445
18-21 months   GMS-Nepal        NEPAL                          3+           208    445
18-21 months   Keneba           GAMBIA                         1            115   1125
18-21 months   Keneba           GAMBIA                         2            109   1125
18-21 months   Keneba           GAMBIA                         3+           901   1125
18-21 months   PROVIDE          BANGLADESH                     1            200    541
18-21 months   PROVIDE          BANGLADESH                     2            197    541
18-21 months   PROVIDE          BANGLADESH                     3+           144    541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3      9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2      9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4      9
18-21 months   ZVITAMBO         ZIMBABWE                       1            572   1595
18-21 months   ZVITAMBO         ZIMBABWE                       2            502   1595
18-21 months   ZVITAMBO         ZIMBABWE                       3+           521   1595
21-24 months   COHORTS          GUATEMALA                      1            128    858
21-24 months   COHORTS          GUATEMALA                      2            116    858
21-24 months   COHORTS          GUATEMALA                      3+           614    858
21-24 months   GMS-Nepal        NEPAL                          1             84    342
21-24 months   GMS-Nepal        NEPAL                          2             95    342
21-24 months   GMS-Nepal        NEPAL                          3+           163    342
21-24 months   Keneba           GAMBIA                         1            102   1003
21-24 months   Keneba           GAMBIA                         2             98   1003
21-24 months   Keneba           GAMBIA                         3+           803   1003
21-24 months   PROVIDE          BANGLADESH                     1            173    471
21-24 months   PROVIDE          BANGLADESH                     2            175    471
21-24 months   PROVIDE          BANGLADESH                     3+           123    471
21-24 months   ZVITAMBO         ZIMBABWE                       1            428   1169
21-24 months   ZVITAMBO         ZIMBABWE                       2            373   1169
21-24 months   ZVITAMBO         ZIMBABWE                       3+           368   1169


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/474a9d7a-a6ee-4389-8af4-29f33508c12b/bfaf12e8-3060-481e-9ee1-78d5ab56744c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/474a9d7a-a6ee-4389-8af4-29f33508c12b/bfaf12e8-3060-481e-9ee1-78d5ab56744c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/474a9d7a-a6ee-4389-8af4-29f33508c12b/bfaf12e8-3060-481e-9ee1-78d5ab56744c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.4708187   -0.5271043   -0.4145331
0-3 months     COHORTS          GUATEMALA                      2                    NA                -0.5148867   -0.5657468   -0.4640266
0-3 months     COHORTS          GUATEMALA                      3+                   NA                -0.5536971   -0.5799525   -0.5274417
0-3 months     COHORTS          INDIA                          1                    NA                -0.0187050   -0.0384547    0.0010446
0-3 months     COHORTS          INDIA                          2                    NA                -0.0416906   -0.0579024   -0.0254789
0-3 months     COHORTS          INDIA                          3+                   NA                -0.0931318   -0.1052278   -0.0810358
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.0129675   -0.0380334    0.0639683
0-3 months     GMS-Nepal        NEPAL                          2                    NA                -0.0063699   -0.0577080    0.0449682
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                -0.0704722   -0.1046181   -0.0363263
0-3 months     Keneba           GAMBIA                         1                    NA                -0.1645456   -0.2349040   -0.0941872
0-3 months     Keneba           GAMBIA                         2                    NA                -0.2476390   -0.3395852   -0.1556929
0-3 months     Keneba           GAMBIA                         3+                   NA                -0.3033631   -0.3312523   -0.2754739
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1793779   -0.2082979   -0.1504580
0-3 months     PROVIDE          BANGLADESH                     2                    NA                -0.1739360   -0.2027779   -0.1450941
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                -0.2187601   -0.2512693   -0.1862508
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.1105817   -0.1765335   -0.0446299
0-3 months     SAS-CompFeed     INDIA                          2                    NA                -0.1004472   -0.1301613   -0.0707330
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                -0.1496339   -0.1820546   -0.1172131
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.1360342   -0.1525538   -0.1195146
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.1179753   -0.1358640   -0.1000867
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1687210   -0.1876347   -0.1498072
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0249886   -0.0606237    0.0106465
3-6 months     COHORTS          GUATEMALA                      2                    NA                -0.0944722   -0.1296888   -0.0592555
3-6 months     COHORTS          GUATEMALA                      3+                   NA                -0.1097751   -0.1273667   -0.0921836
3-6 months     COHORTS          INDIA                          1                    NA                -0.0231333   -0.0397339   -0.0065328
3-6 months     COHORTS          INDIA                          2                    NA                -0.0628806   -0.0758717   -0.0498894
3-6 months     COHORTS          INDIA                          3+                   NA                -0.0751407   -0.0844771   -0.0658043
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1136660   -0.1494149   -0.0779171
3-6 months     GMS-Nepal        NEPAL                          2                    NA                -0.1811021   -0.2189064   -0.1432977
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                -0.1763583   -0.2024882   -0.1502284
3-6 months     Keneba           GAMBIA                         1                    NA                 0.0350696   -0.0279193    0.0980585
3-6 months     Keneba           GAMBIA                         2                    NA                 0.0522598   -0.0135655    0.1180852
3-6 months     Keneba           GAMBIA                         3+                   NA                -0.0481172   -0.0706539   -0.0255806
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0238369   -0.0495540    0.0018803
3-6 months     PROVIDE          BANGLADESH                     2                    NA                -0.0250580   -0.0515248    0.0014088
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                -0.0336482   -0.0648519   -0.0024445
3-6 months     SAS-CompFeed     INDIA                          1                    NA                 0.0426044    0.0051106    0.0800982
3-6 months     SAS-CompFeed     INDIA                          2                    NA                -0.0164802   -0.0374816    0.0045212
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                -0.0481116   -0.0736767   -0.0225465
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0838414   -0.1124551   -0.0552276
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0866859   -0.1174072   -0.0559646
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0819315   -0.1093331   -0.0545300
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0158073    0.0005703    0.0310443
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.0135836   -0.0293517    0.0021846
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0094918   -0.0263221    0.0073384
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0776992   -0.1085556   -0.0468428
6-9 months     COHORTS          GUATEMALA                      2                    NA                -0.1193575   -0.1527264   -0.0859887
6-9 months     COHORTS          GUATEMALA                      3+                   NA                -0.1292490   -0.1430917   -0.1154063
6-9 months     COHORTS          INDIA                          1                    NA                -0.0722272   -0.0870029   -0.0574515
6-9 months     COHORTS          INDIA                          2                    NA                -0.0957909   -0.1079815   -0.0836003
6-9 months     COHORTS          INDIA                          3+                   NA                -0.1075187   -0.1157888   -0.0992486
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0351495   -0.0648591   -0.0054400
6-9 months     GMS-Nepal        NEPAL                          2                    NA                -0.0249857   -0.0660737    0.0161023
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                -0.0596052   -0.0830879   -0.0361225
6-9 months     Keneba           GAMBIA                         1                    NA                 0.0825407    0.0222535    0.1428280
6-9 months     Keneba           GAMBIA                         2                    NA                -0.0060956   -0.0835766    0.0713854
6-9 months     Keneba           GAMBIA                         3+                   NA                -0.0182007   -0.0458577    0.0094564
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0502681   -0.0672003   -0.0333359
6-9 months     PROVIDE          BANGLADESH                     2                    NA                -0.0570111   -0.0759743   -0.0380479
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                -0.0821424   -0.1024922   -0.0617926
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0699437   -0.0947129   -0.0451746
6-9 months     SAS-CompFeed     INDIA                          2                    NA                -0.0942610   -0.1259473   -0.0625748
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                -0.0834490   -0.1031822   -0.0637158
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0329119   -0.0598342   -0.0059896
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0476221   -0.0786452   -0.0165989
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0783517   -0.1043451   -0.0523583
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0197810   -0.0335298   -0.0060321
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.0437002   -0.0584717   -0.0289287
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0340835   -0.0491815   -0.0189855
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0742854   -0.0991045   -0.0494664
9-12 months    COHORTS          GUATEMALA                      2                    NA                -0.0956632   -0.1248397   -0.0664867
9-12 months    COHORTS          GUATEMALA                      3+                   NA                -0.0901431   -0.1018000   -0.0784862
9-12 months    COHORTS          INDIA                          1                    NA                -0.0776995   -0.0921062   -0.0632928
9-12 months    COHORTS          INDIA                          2                    NA                -0.0898860   -0.1028425   -0.0769295
9-12 months    COHORTS          INDIA                          3+                   NA                -0.0993485   -0.1074104   -0.0912866
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0640440   -0.0843806   -0.0437074
9-12 months    GMS-Nepal        NEPAL                          2                    NA                -0.0760563   -0.1078099   -0.0443028
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                -0.0903262   -0.1095678   -0.0710847
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0922385   -0.1322995   -0.0521775
9-12 months    Keneba           GAMBIA                         2                    NA                -0.0709957   -0.1263932   -0.0155982
9-12 months    Keneba           GAMBIA                         3+                   NA                -0.1120093   -0.1338065   -0.0902121
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0530313   -0.0719624   -0.0341003
9-12 months    PROVIDE          BANGLADESH                     2                    NA                -0.0634582   -0.0820409   -0.0448755
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                -0.0762797   -0.0951014   -0.0574580
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0505387   -0.0691666   -0.0319107
9-12 months    SAS-CompFeed     INDIA                          2                    NA                -0.0847498   -0.1135594   -0.0559402
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                -0.0969790   -0.1152560   -0.0787021
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0747477   -0.0986318   -0.0508636
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0559196   -0.0814415   -0.0303977
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0641472   -0.0893652   -0.0389293
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0510016   -0.0628964   -0.0391067
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.0676178   -0.0811481   -0.0540874
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0606787   -0.0741938   -0.0471637
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0812476   -0.1094101   -0.0530851
12-15 months   COHORTS          GUATEMALA                      2                    NA                -0.0988227   -0.1304739   -0.0671714
12-15 months   COHORTS          GUATEMALA                      3+                   NA                -0.0867067   -0.0981870   -0.0752264
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0531614   -0.0716529   -0.0346698
12-15 months   GMS-Nepal        NEPAL                          2                    NA                -0.0731779   -0.1003106   -0.0460451
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                -0.0704148   -0.0842384   -0.0565912
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0537320   -0.0952724   -0.0121917
12-15 months   Keneba           GAMBIA                         2                    NA                -0.0594698   -0.1042993   -0.0146404
12-15 months   Keneba           GAMBIA                         3+                   NA                -0.0551668   -0.0694611   -0.0408725
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0389346   -0.0558183   -0.0220509
12-15 months   PROVIDE          BANGLADESH                     2                    NA                -0.0496876   -0.0662786   -0.0330966
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0309509   -0.0500487   -0.0118531
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0714878   -0.0957269   -0.0472487
12-15 months   SAS-CompFeed     INDIA                          2                    NA                -0.0817768   -0.1038388   -0.0597147
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                -0.0939908   -0.1143260   -0.0736556
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0659297   -0.0906783   -0.0411811
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0747676   -0.0997230   -0.0498122
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0537912   -0.0795027   -0.0280796
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0603281   -0.0776409   -0.0430154
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0703362   -0.0890969   -0.0515755
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0566529   -0.0755104   -0.0377955
15-18 months   COHORTS          GUATEMALA                      1                    NA                -0.0590842   -0.0886260   -0.0295425
15-18 months   COHORTS          GUATEMALA                      2                    NA                -0.0844923   -0.1124601   -0.0565245
15-18 months   COHORTS          GUATEMALA                      3+                   NA                -0.0478059   -0.0607210   -0.0348909
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0573993   -0.0774479   -0.0373507
15-18 months   GMS-Nepal        NEPAL                          2                    NA                -0.0837086   -0.1194953   -0.0479219
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                -0.0669730   -0.0799603   -0.0539857
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0210764   -0.0703192    0.0281664
15-18 months   Keneba           GAMBIA                         2                    NA                -0.0297833   -0.0764833    0.0169166
15-18 months   Keneba           GAMBIA                         3+                   NA                -0.0297449   -0.0432147   -0.0162750
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0369713   -0.0518196   -0.0221229
15-18 months   PROVIDE          BANGLADESH                     2                    NA                -0.0377536   -0.0516140   -0.0238932
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0384655   -0.0556474   -0.0212836
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0233510   -0.0481661    0.0014642
15-18 months   SAS-CompFeed     INDIA                          2                    NA                -0.0086893   -0.0366143    0.0192357
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                -0.0061140   -0.0284435    0.0162155
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0140365   -0.0400166    0.0119435
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0363765   -0.0656226   -0.0071304
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0062448   -0.0316283    0.0191386
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0575153   -0.0736552   -0.0413754
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0604735   -0.0800515   -0.0408956
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0698010   -0.0914060   -0.0481959
18-21 months   COHORTS          GUATEMALA                      1                    NA                -0.0392742   -0.0636465   -0.0149019
18-21 months   COHORTS          GUATEMALA                      2                    NA                -0.0211042   -0.0452152    0.0030068
18-21 months   COHORTS          GUATEMALA                      3+                   NA                -0.0152351   -0.0271893   -0.0032808
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0114961   -0.0039685    0.0269608
18-21 months   GMS-Nepal        NEPAL                          2                    NA                 0.0361543    0.0084747    0.0638339
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                 0.0059158   -0.0111353    0.0229670
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0612813   -0.1167099   -0.0058526
18-21 months   Keneba           GAMBIA                         2                    NA                -0.0176790   -0.0584885    0.0231304
18-21 months   Keneba           GAMBIA                         3+                   NA                -0.0176025   -0.0310857   -0.0041193
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0015582   -0.0155115    0.0123951
18-21 months   PROVIDE          BANGLADESH                     2                    NA                -0.0104240   -0.0238692    0.0030213
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0246758   -0.0394156   -0.0099361
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0649732   -0.0832179   -0.0467284
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0712854   -0.0927597   -0.0498111
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0709418   -0.0926232   -0.0492605
21-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0019448   -0.0178777    0.0217674
21-24 months   COHORTS          GUATEMALA                      2                    NA                -0.0055685   -0.0256718    0.0145348
21-24 months   COHORTS          GUATEMALA                      3+                   NA                -0.0074709   -0.0169059    0.0019640
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0682992    0.0385152    0.0980832
21-24 months   GMS-Nepal        NEPAL                          2                    NA                 0.0202222   -0.0105420    0.0509864
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                 0.0539949    0.0318934    0.0760963
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0051470   -0.0365856    0.0468796
21-24 months   Keneba           GAMBIA                         2                    NA                -0.0153690   -0.0565859    0.0258478
21-24 months   Keneba           GAMBIA                         3+                   NA                 0.0254763    0.0122470    0.0387057
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0605367    0.0461459    0.0749275
21-24 months   PROVIDE          BANGLADESH                     2                    NA                 0.0341806    0.0207111    0.0476501
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                 0.0432671    0.0258404    0.0606939
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0206458   -0.0010044    0.0422960
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                 0.0152067   -0.0038644    0.0342779
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                 0.0153015   -0.0084473    0.0390503


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0677269   -0.0765502   -0.0589035
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2821028   -0.3073160   -0.2568895
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402688   -0.1504985   -0.1300391
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0841486   -0.1008599   -0.0674373
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0985796   -0.1048064   -0.0923527
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0045762   -0.0287122    0.0195598
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525285   -0.0687206   -0.0363364
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0887143   -0.0986894   -0.0787393
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0933036   -0.0995020   -0.0871051
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1061496   -0.1248815   -0.0874176
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652640   -0.0796167   -0.0509113
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590759   -0.0665312   -0.0516205
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0875200   -0.0977014   -0.0773386
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0554331   -0.0683830   -0.0424832
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0649105   -0.0794330   -0.0503881
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0545580   -0.0655035   -0.0436124
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0289062   -0.0415733   -0.0162391
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189489   -0.0345324   -0.0033654
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0194829   -0.0293542   -0.0096117
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0220748   -0.0349179   -0.0092317
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0058090   -0.0136683    0.0020502
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0194181    0.0072915    0.0315446
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                 -0.0440680   -0.1199285    0.0317925
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.0828784   -0.1449865   -0.0207703
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                 -0.0229856   -0.0485369    0.0025657
0-3 months     COHORTS          INDIA                          3+                   1                 -0.0744268   -0.0975862   -0.0512673
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                 -0.0193374   -0.0917023    0.0530276
0-3 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0834397   -0.1448157   -0.0220636
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                 -0.0830934   -0.1988708    0.0326839
0-3 months     Keneba           GAMBIA                         3+                   1                 -0.1388175   -0.2145018   -0.0631332
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                  0.0054419   -0.0354019    0.0462858
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0393821   -0.0828932    0.0041290
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                  0.0101345   -0.0400569    0.0603259
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0390522   -0.1192904    0.0411859
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                  0.0180588   -0.0062907    0.0424084
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0326868   -0.0577991   -0.0075745
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.0694835   -0.1195841   -0.0193829
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.0847865   -0.1245272   -0.0450458
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0397472   -0.0608268   -0.0186676
3-6 months     COHORTS          INDIA                          3+                   1                 -0.0520074   -0.0710533   -0.0329614
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.0674361   -0.1194664   -0.0154057
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0626923   -0.1069727   -0.0184119
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                  0.0171902   -0.0739172    0.1082977
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.0831868   -0.1500860   -0.0162876
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 -0.0012212   -0.0381246    0.0356823
3-6 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0098113   -0.0502470    0.0306243
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.0590846   -0.0967848   -0.0213844
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0907160   -0.1398338   -0.0415982
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0028445   -0.0448272    0.0391381
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0019098   -0.0377083    0.0415279
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0293909   -0.0513181   -0.0074637
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0252991   -0.0480021   -0.0025962
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                 -0.0416583   -0.0871072    0.0037905
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.0515498   -0.0853690   -0.0177306
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0235637   -0.0427192   -0.0044083
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0352915   -0.0522242   -0.0183589
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                  0.0101638   -0.0405401    0.0608677
6-9 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0244557   -0.0623251    0.0134138
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 -0.0886364   -0.1868089    0.0095362
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.1007414   -0.1670698   -0.0344130
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                 -0.0067430   -0.0321654    0.0186795
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0318743   -0.0583472   -0.0054014
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.0243173   -0.0735909    0.0249562
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0135053   -0.0499032    0.0228926
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0147102   -0.0557863    0.0263660
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0454398   -0.0828626   -0.0080170
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0239192   -0.0440991   -0.0037393
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0143025   -0.0347226    0.0061176
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.0213778   -0.0596825    0.0169269
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.0158577   -0.0432779    0.0115625
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                 -0.0121865   -0.0315624    0.0071894
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0216490   -0.0381580   -0.0051400
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                 -0.0120124   -0.0497200    0.0256953
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0262823   -0.0542790    0.0017144
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                  0.0212428   -0.0471221    0.0896078
9-12 months    Keneba           GAMBIA                         3+                   1                 -0.0197708   -0.0653778    0.0258363
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                 -0.0104269   -0.0369543    0.0161005
9-12 months    PROVIDE          BANGLADESH                     3+                   1                 -0.0232483   -0.0499437    0.0034470
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0342111   -0.0627773   -0.0056450
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.0464404   -0.0743567   -0.0185241
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0188282   -0.0161264    0.0537827
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0106005   -0.0241327    0.0453337
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0166162   -0.0346317    0.0013993
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0096771   -0.0276811    0.0083269
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                 -0.0175751   -0.0599417    0.0247916
12-15 months   COHORTS          GUATEMALA                      3+                   1                 -0.0054591   -0.0358717    0.0249534
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0200165   -0.0528513    0.0128183
12-15 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0172534   -0.0403409    0.0058340
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 -0.0057378   -0.0668548    0.0553792
12-15 months   Keneba           GAMBIA                         3+                   1                 -0.0014348   -0.0453658    0.0424962
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0107530   -0.0344240    0.0129181
12-15 months   PROVIDE          BANGLADESH                     3+                   1                  0.0079837   -0.0175072    0.0334746
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0102890   -0.0446723    0.0240943
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0225030   -0.0506576    0.0056516
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0088379   -0.0439843    0.0263084
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0121385   -0.0235486    0.0478257
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0100081   -0.0355364    0.0155202
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                  0.0036752   -0.0219243    0.0292747
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0254081   -0.0660887    0.0152725
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0112783   -0.0209631    0.0435198
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                 -0.0263093   -0.0673293    0.0147106
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0095737   -0.0334613    0.0143139
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 -0.0087069   -0.0765725    0.0591587
15-18 months   Keneba           GAMBIA                         3+                   1                 -0.0086685   -0.0597203    0.0423834
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                 -0.0007823   -0.0210945    0.0195298
15-18 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0014942   -0.0242030    0.0212147
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                  0.0146617   -0.0247753    0.0540986
15-18 months   SAS-CompFeed     INDIA                          3+                   1                  0.0172370   -0.0252474    0.0597214
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0223400   -0.0614590    0.0167790
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0077917   -0.0285302    0.0441136
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0029582   -0.0283313    0.0224149
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0122857   -0.0392537    0.0146824
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0181700   -0.0161134    0.0524534
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0240392   -0.0031070    0.0511853
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                  0.0246582   -0.0070486    0.0563649
18-21 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0055803   -0.0285998    0.0174392
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.0436022   -0.0252291    0.1124335
18-21 months   Keneba           GAMBIA                         3+                   1                  0.0436788   -0.0133663    0.1007238
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0088658   -0.0282428    0.0105112
18-21 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0231177   -0.0434143   -0.0028210
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0063122   -0.0344905    0.0218660
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0059687   -0.0343051    0.0223677
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0075133   -0.0357458    0.0207192
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0094158   -0.0313691    0.0125376
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                 -0.0480770   -0.0908966   -0.0052573
21-24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0143043   -0.0513929    0.0227842
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 -0.0205160   -0.0791713    0.0381392
21-24 months   Keneba           GAMBIA                         3+                   1                  0.0203293   -0.0234499    0.0641086
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0263561   -0.0460670   -0.0066452
21-24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0172696   -0.0398701    0.0053310
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0054390   -0.0342911    0.0234130
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0053443   -0.0374805    0.0267919


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.0663734   -0.1195902   -0.0131566
0-3 months     COHORTS          INDIA                          1                    NA                -0.0490219   -0.0673991   -0.0306446
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0447355   -0.0875732   -0.0018978
0-3 months     Keneba           GAMBIA                         1                    NA                -0.1175572   -0.1843548   -0.0507595
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0086623   -0.0311484    0.0138239
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0167750   -0.0667428    0.0331928
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0042346   -0.0171011    0.0086318
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0713496   -0.1052070   -0.0374923
3-6 months     COHORTS          INDIA                          1                    NA                -0.0402403   -0.0554802   -0.0250005
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0477317   -0.0787974   -0.0166660
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0629341   -0.1208845   -0.0049837
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0031256   -0.0241217    0.0178704
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0592392   -0.0928229   -0.0256555
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003072   -0.0233690    0.0227545
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0170997   -0.0290404   -0.0051589
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0430554   -0.0718950   -0.0142158
6-9 months     COHORTS          INDIA                          1                    NA                -0.0263524   -0.0398731   -0.0128317
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0087436   -0.0357699    0.0182827
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0871169   -0.1446906   -0.0295432
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0111583   -0.0252021    0.0028855
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0124045   -0.0386750    0.0138660
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0196166   -0.0414875    0.0022544
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0117837   -0.0224562   -0.0011111
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0144289   -0.0377332    0.0088754
9-12 months    COHORTS          INDIA                          1                    NA                -0.0156041   -0.0288421   -0.0023660
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0157799   -0.0354914    0.0039315
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0139110   -0.0541488    0.0263267
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0100157   -0.0246904    0.0046591
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0306577   -0.0484681   -0.0128473
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0094837   -0.0098448    0.0288122
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0080743   -0.0174486    0.0013000
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0062724   -0.0319054    0.0193605
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0135636   -0.0304420    0.0033149
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0017011   -0.0413015    0.0378993
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0019761   -0.0151557    0.0112034
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0132512   -0.0329219    0.0064195
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010192   -0.0191071    0.0211454
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0019467   -0.0157783    0.0118849
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0045263   -0.0225832    0.0316357
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0115583   -0.0302384    0.0071218
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0078298   -0.0538099    0.0381503
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0006724   -0.0121798    0.0108349
15-18 months   SAS-CompFeed     INDIA                          1                    NA                 0.0116354   -0.0152832    0.0385540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0049124   -0.0264133    0.0165885
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0048328   -0.0185464    0.0088808
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0197913   -0.0030454    0.0426280
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0040965   -0.0117875    0.0199805
18-21 months   Keneba           GAMBIA                         1                    NA                 0.0392064   -0.0118735    0.0902864
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0093817   -0.0202124    0.0014490
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0039363   -0.0191937    0.0113211
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0077539   -0.0261240    0.0106163
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0201723   -0.0464891    0.0061445
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0142711   -0.0249008    0.0534430
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0143025   -0.0256925   -0.0029125
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0034178   -0.0201892    0.0133535
