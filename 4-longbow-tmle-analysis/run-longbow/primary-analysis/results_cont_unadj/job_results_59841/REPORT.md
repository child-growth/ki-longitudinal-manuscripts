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

**Outcome Variable:** y_rate_len

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

agecat         studyid          country                        parity    n_cell       n
-------------  ---------------  -----------------------------  -------  -------  ------
0-3 months     COHORTS          GUATEMALA                      1             93     728
0-3 months     COHORTS          GUATEMALA                      2            111     728
0-3 months     COHORTS          GUATEMALA                      3+           524     728
0-3 months     COHORTS          INDIA                          1            671    4021
0-3 months     COHORTS          INDIA                          2           1015    4021
0-3 months     COHORTS          INDIA                          3+          2335    4021
0-3 months     GMS-Nepal        NEPAL                          1            137     509
0-3 months     GMS-Nepal        NEPAL                          2            129     509
0-3 months     GMS-Nepal        NEPAL                          3+           243     509
0-3 months     JiVitA-3         BANGLADESH                     1           6338   19878
0-3 months     JiVitA-3         BANGLADESH                     2           6881   19878
0-3 months     JiVitA-3         BANGLADESH                     3+          6659   19878
0-3 months     Keneba           GAMBIA                         1            130    1145
0-3 months     Keneba           GAMBIA                         2            113    1145
0-3 months     Keneba           GAMBIA                         3+           902    1145
0-3 months     PROVIDE          BANGLADESH                     1            242     640
0-3 months     PROVIDE          BANGLADESH                     2            226     640
0-3 months     PROVIDE          BANGLADESH                     3+           172     640
0-3 months     SAS-CompFeed     INDIA                          1            344    1261
0-3 months     SAS-CompFeed     INDIA                          2            298    1261
0-3 months     SAS-CompFeed     INDIA                          3+           619    1261
0-3 months     ZVITAMBO         ZIMBABWE                       1           3100    7981
0-3 months     ZVITAMBO         ZIMBABWE                       2           2478    7981
0-3 months     ZVITAMBO         ZIMBABWE                       3+          2403    7981
3-6 months     COHORTS          GUATEMALA                      1            107     805
3-6 months     COHORTS          GUATEMALA                      2            114     805
3-6 months     COHORTS          GUATEMALA                      3+           584     805
3-6 months     COHORTS          INDIA                          1            675    4069
3-6 months     COHORTS          INDIA                          2           1042    4069
3-6 months     COHORTS          INDIA                          3+          2352    4069
3-6 months     GMS-Nepal        NEPAL                          1            121     469
3-6 months     GMS-Nepal        NEPAL                          2            120     469
3-6 months     GMS-Nepal        NEPAL                          3+           228     469
3-6 months     JiVitA-3         BANGLADESH                     1           4409   12581
3-6 months     JiVitA-3         BANGLADESH                     2           4359   12581
3-6 months     JiVitA-3         BANGLADESH                     3+          3813   12581
3-6 months     Keneba           GAMBIA                         1            146    1130
3-6 months     Keneba           GAMBIA                         2            107    1130
3-6 months     Keneba           GAMBIA                         3+           877    1130
3-6 months     PROVIDE          BANGLADESH                     1            214     598
3-6 months     PROVIDE          BANGLADESH                     2            221     598
3-6 months     PROVIDE          BANGLADESH                     3+           163     598
3-6 months     SAS-CompFeed     INDIA                          1            299    1124
3-6 months     SAS-CompFeed     INDIA                          2            261    1124
3-6 months     SAS-CompFeed     INDIA                          3+           564    1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637
3-6 months     ZVITAMBO         ZIMBABWE                       1           2318    6178
3-6 months     ZVITAMBO         ZIMBABWE                       2           1952    6178
3-6 months     ZVITAMBO         ZIMBABWE                       3+          1908    6178
6-9 months     COHORTS          GUATEMALA                      1            113     822
6-9 months     COHORTS          GUATEMALA                      2            117     822
6-9 months     COHORTS          GUATEMALA                      3+           592     822
6-9 months     COHORTS          INDIA                          1            639    3756
6-9 months     COHORTS          INDIA                          2            940    3756
6-9 months     COHORTS          INDIA                          3+          2177    3756
6-9 months     GMS-Nepal        NEPAL                          1            125     481
6-9 months     GMS-Nepal        NEPAL                          2            130     481
6-9 months     GMS-Nepal        NEPAL                          3+           226     481
6-9 months     Keneba           GAMBIA                         1             90     725
6-9 months     Keneba           GAMBIA                         2             67     725
6-9 months     Keneba           GAMBIA                         3+           568     725
6-9 months     PROVIDE          BANGLADESH                     1            204     565
6-9 months     PROVIDE          BANGLADESH                     2            207     565
6-9 months     PROVIDE          BANGLADESH                     3+           154     565
6-9 months     SAS-CompFeed     INDIA                          1            307    1144
6-9 months     SAS-CompFeed     INDIA                          2            267    1144
6-9 months     SAS-CompFeed     INDIA                          3+           570    1144
6-9 months     SAS-FoodSuppl    INDIA                          1              1     314
6-9 months     SAS-FoodSuppl    INDIA                          2             56     314
6-9 months     SAS-FoodSuppl    INDIA                          3+           257     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479    1462
6-9 months     ZVITAMBO         ZIMBABWE                       1           2280    5929
6-9 months     ZVITAMBO         ZIMBABWE                       2           1838    5929
6-9 months     ZVITAMBO         ZIMBABWE                       3+          1811    5929
9-12 months    COHORTS          GUATEMALA                      1            130     929
9-12 months    COHORTS          GUATEMALA                      2            133     929
9-12 months    COHORTS          GUATEMALA                      3+           666     929
9-12 months    COHORTS          INDIA                          1            557    3269
9-12 months    COHORTS          INDIA                          2            814    3269
9-12 months    COHORTS          INDIA                          3+          1898    3269
9-12 months    GMS-Nepal        NEPAL                          1            119     469
9-12 months    GMS-Nepal        NEPAL                          2            126     469
9-12 months    GMS-Nepal        NEPAL                          3+           224     469
9-12 months    Keneba           GAMBIA                         1             75     715
9-12 months    Keneba           GAMBIA                         2             66     715
9-12 months    Keneba           GAMBIA                         3+           574     715
9-12 months    PROVIDE          BANGLADESH                     1            208     566
9-12 months    PROVIDE          BANGLADESH                     2            207     566
9-12 months    PROVIDE          BANGLADESH                     3+           151     566
9-12 months    SAS-CompFeed     INDIA                          1            321    1146
9-12 months    SAS-CompFeed     INDIA                          2            260    1146
9-12 months    SAS-CompFeed     INDIA                          3+           565    1146
9-12 months    SAS-FoodSuppl    INDIA                          1              1     311
9-12 months    SAS-FoodSuppl    INDIA                          2             56     311
9-12 months    SAS-FoodSuppl    INDIA                          3+           254     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375    1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348    1062
9-12 months    ZVITAMBO         ZIMBABWE                       1           2289    5932
9-12 months    ZVITAMBO         ZIMBABWE                       2           1822    5932
9-12 months    ZVITAMBO         ZIMBABWE                       3+          1821    5932
12-15 months   COHORTS          GUATEMALA                      1            133     880
12-15 months   COHORTS          GUATEMALA                      2            119     880
12-15 months   COHORTS          GUATEMALA                      3+           628     880
12-15 months   GMS-Nepal        NEPAL                          1            120     469
12-15 months   GMS-Nepal        NEPAL                          2            123     469
12-15 months   GMS-Nepal        NEPAL                          3+           226     469
12-15 months   Keneba           GAMBIA                         1            104    1104
12-15 months   Keneba           GAMBIA                         2            103    1104
12-15 months   Keneba           GAMBIA                         3+           897    1104
12-15 months   PROVIDE          BANGLADESH                     1            199     532
12-15 months   PROVIDE          BANGLADESH                     2            198     532
12-15 months   PROVIDE          BANGLADESH                     3+           135     532
12-15 months   SAS-CompFeed     INDIA                          1            338    1168
12-15 months   SAS-CompFeed     INDIA                          2            262    1168
12-15 months   SAS-CompFeed     INDIA                          3+           568    1168
12-15 months   SAS-FoodSuppl    INDIA                          1              0     303
12-15 months   SAS-FoodSuppl    INDIA                          2             60     303
12-15 months   SAS-FoodSuppl    INDIA                          3+           243     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253     776
12-15 months   ZVITAMBO         ZIMBABWE                       1            934    2548
12-15 months   ZVITAMBO         ZIMBABWE                       2            796    2548
12-15 months   ZVITAMBO         ZIMBABWE                       3+           818    2548
15-18 months   COHORTS          GUATEMALA                      1            116     786
15-18 months   COHORTS          GUATEMALA                      2            109     786
15-18 months   COHORTS          GUATEMALA                      3+           561     786
15-18 months   GMS-Nepal        NEPAL                          1            126     480
15-18 months   GMS-Nepal        NEPAL                          2            129     480
15-18 months   GMS-Nepal        NEPAL                          3+           225     480
15-18 months   Keneba           GAMBIA                         1            109    1122
15-18 months   Keneba           GAMBIA                         2            101    1122
15-18 months   Keneba           GAMBIA                         3+           912    1122
15-18 months   PROVIDE          BANGLADESH                     1            197     528
15-18 months   PROVIDE          BANGLADESH                     2            196     528
15-18 months   PROVIDE          BANGLADESH                     3+           135     528
15-18 months   SAS-CompFeed     INDIA                          1            342    1171
15-18 months   SAS-CompFeed     INDIA                          2            258    1171
15-18 months   SAS-CompFeed     INDIA                          3+           571    1171
15-18 months   SAS-FoodSuppl    INDIA                          1              0     291
15-18 months   SAS-FoodSuppl    INDIA                          2             53     291
15-18 months   SAS-FoodSuppl    INDIA                          3+           238     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649
15-18 months   ZVITAMBO         ZIMBABWE                       1            753    2036
15-18 months   ZVITAMBO         ZIMBABWE                       2            635    2036
15-18 months   ZVITAMBO         ZIMBABWE                       3+           648    2036
18-21 months   COHORTS          GUATEMALA                      1            111     776
18-21 months   COHORTS          GUATEMALA                      2            107     776
18-21 months   COHORTS          GUATEMALA                      3+           558     776
18-21 months   GMS-Nepal        NEPAL                          1            116     445
18-21 months   GMS-Nepal        NEPAL                          2            121     445
18-21 months   GMS-Nepal        NEPAL                          3+           208     445
18-21 months   Keneba           GAMBIA                         1            115    1125
18-21 months   Keneba           GAMBIA                         2            109    1125
18-21 months   Keneba           GAMBIA                         3+           901    1125
18-21 months   PROVIDE          BANGLADESH                     1            200     541
18-21 months   PROVIDE          BANGLADESH                     2            197     541
18-21 months   PROVIDE          BANGLADESH                     3+           144     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       9
18-21 months   ZVITAMBO         ZIMBABWE                       1            572    1595
18-21 months   ZVITAMBO         ZIMBABWE                       2            502    1595
18-21 months   ZVITAMBO         ZIMBABWE                       3+           521    1595
21-24 months   COHORTS          GUATEMALA                      1            128     858
21-24 months   COHORTS          GUATEMALA                      2            116     858
21-24 months   COHORTS          GUATEMALA                      3+           614     858
21-24 months   GMS-Nepal        NEPAL                          1             84     342
21-24 months   GMS-Nepal        NEPAL                          2             95     342
21-24 months   GMS-Nepal        NEPAL                          3+           163     342
21-24 months   Keneba           GAMBIA                         1            102    1003
21-24 months   Keneba           GAMBIA                         2             98    1003
21-24 months   Keneba           GAMBIA                         3+           803    1003
21-24 months   PROVIDE          BANGLADESH                     1            173     471
21-24 months   PROVIDE          BANGLADESH                     2            175     471
21-24 months   PROVIDE          BANGLADESH                     3+           123     471
21-24 months   ZVITAMBO         ZIMBABWE                       1            428    1169
21-24 months   ZVITAMBO         ZIMBABWE                       2            373    1169
21-24 months   ZVITAMBO         ZIMBABWE                       3+           368    1169


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/10474414-a754-4fb9-b30e-fb0e9936d18b/cfac561d-4573-4e63-8eaa-facfb75dc4b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/10474414-a754-4fb9-b30e-fb0e9936d18b/cfac561d-4573-4e63-8eaa-facfb75dc4b9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/10474414-a754-4fb9-b30e-fb0e9936d18b/cfac561d-4573-4e63-8eaa-facfb75dc4b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                2.6946634   2.5862725   2.8030543
0-3 months     COHORTS          GUATEMALA                      2                    NA                2.6237126   2.5207286   2.7266966
0-3 months     COHORTS          GUATEMALA                      3+                   NA                2.5543328   2.5020552   2.6066105
0-3 months     COHORTS          INDIA                          1                    NA                3.5950994   3.5548020   3.6353969
0-3 months     COHORTS          INDIA                          2                    NA                3.5571386   3.5234168   3.5908605
0-3 months     COHORTS          INDIA                          3+                   NA                3.4395056   3.4148932   3.4641179
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.6658963   3.5605534   3.7712392
0-3 months     GMS-Nepal        NEPAL                          2                    NA                3.6765019   3.5738050   3.7791987
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                3.5200755   3.4511479   3.5890031
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.7329144   3.7167513   3.7490775
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                3.7631321   3.7476224   3.7786418
0-3 months     JiVitA-3         BANGLADESH                     3+                   NA                3.6732366   3.6574923   3.6889809
0-3 months     Keneba           GAMBIA                         1                    NA                3.3187769   3.1709542   3.4665996
0-3 months     Keneba           GAMBIA                         2                    NA                3.1834967   3.0026807   3.3643127
0-3 months     Keneba           GAMBIA                         3+                   NA                3.0715023   3.0166170   3.1263875
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2793500   3.2169166   3.3417834
0-3 months     PROVIDE          BANGLADESH                     2                    NA                3.2765172   3.2163052   3.3367292
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                3.2024435   3.1325252   3.2723618
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.3787281   3.2585514   3.4989049
0-3 months     SAS-CompFeed     INDIA                          2                    NA                3.3966796   3.3479543   3.4454048
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                3.3147414   3.2565869   3.3728960
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                3.3410461   3.3079427   3.3741494
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                3.3880686   3.3521004   3.4240369
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                3.2791569   3.2411282   3.3171856
3-6 months     COHORTS          GUATEMALA                      1                    NA                1.9128079   1.8360698   1.9895461
3-6 months     COHORTS          GUATEMALA                      2                    NA                1.7734845   1.7001817   1.8467873
3-6 months     COHORTS          GUATEMALA                      3+                   NA                1.7317044   1.6948127   1.7685961
3-6 months     COHORTS          INDIA                          1                    NA                1.9483831   1.9128184   1.9839478
3-6 months     COHORTS          INDIA                          2                    NA                1.8659197   1.8377336   1.8941059
3-6 months     COHORTS          INDIA                          3+                   NA                1.8255586   1.8053113   1.8458060
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.8047232   1.7300698   1.8793767
3-6 months     GMS-Nepal        NEPAL                          2                    NA                1.6849322   1.6069477   1.7629168
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                1.6720362   1.6156544   1.7284180
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.9645935   1.9487682   1.9804187
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                1.9073883   1.8899357   1.9248410
3-6 months     JiVitA-3         BANGLADESH                     3+                   NA                1.8835148   1.8645975   1.9024322
3-6 months     Keneba           GAMBIA                         1                    NA                2.1017984   1.9692632   2.2343335
3-6 months     Keneba           GAMBIA                         2                    NA                2.1491645   2.0075139   2.2908152
3-6 months     Keneba           GAMBIA                         3+                   NA                1.9282051   1.8800272   1.9763829
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9768346   1.9230840   2.0305851
3-6 months     PROVIDE          BANGLADESH                     2                    NA                1.9674906   1.9113437   2.0236376
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                1.9488216   1.8805313   2.0171119
3-6 months     SAS-CompFeed     INDIA                          1                    NA                2.0650463   1.9789638   2.1511288
3-6 months     SAS-CompFeed     INDIA                          2                    NA                1.9447541   1.8958040   1.9937043
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                1.8727868   1.8115410   1.9340327
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7978869   1.7361658   1.8596080
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7899300   1.7237339   1.8561261
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.8001906   1.7410485   1.8593327
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0097001   1.9770886   2.0423116
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                1.9526962   1.9190078   1.9863846
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                1.9569123   1.9209989   1.9928258
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.2042741   1.1348777   1.2736705
6-9 months     COHORTS          GUATEMALA                      2                    NA                1.1155469   1.0396429   1.1914508
6-9 months     COHORTS          GUATEMALA                      3+                   NA                1.0866565   1.0551401   1.1181730
6-9 months     COHORTS          INDIA                          1                    NA                1.2534093   1.2200450   1.2867736
6-9 months     COHORTS          INDIA                          2                    NA                1.2012001   1.1734902   1.2289099
6-9 months     COHORTS          INDIA                          3+                   NA                1.1624573   1.1437067   1.1812078
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.3387450   1.2721615   1.4053285
6-9 months     GMS-Nepal        NEPAL                          2                    NA                1.3618951   1.2647140   1.4590763
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                1.2795796   1.2251132   1.3340459
6-9 months     Keneba           GAMBIA                         1                    NA                1.6279553   1.4929925   1.7629182
6-9 months     Keneba           GAMBIA                         2                    NA                1.4316003   1.2573497   1.6058509
6-9 months     Keneba           GAMBIA                         3+                   NA                1.3920052   1.3286396   1.4553708
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3066162   1.2673426   1.3458898
6-9 months     PROVIDE          BANGLADESH                     2                    NA                1.2957290   1.2516146   1.3398433
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                1.2324730   1.1849148   1.2800312
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2533235   1.2000205   1.3066265
6-9 months     SAS-CompFeed     INDIA                          2                    NA                1.1891383   1.1178713   1.2604052
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                1.2093589   1.1627189   1.2559989
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3713464   1.3102431   1.4324497
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.3335668   1.2630089   1.4041247
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.2608006   1.2013673   1.3202339
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.3738185   1.3425402   1.4050969
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                1.3208223   1.2872791   1.3543655
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                1.3397304   1.3053962   1.3740646
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.9856389   0.9244841   1.0467938
9-12 months    COHORTS          GUATEMALA                      2                    NA                0.9386152   0.8665892   1.0106411
9-12 months    COHORTS          GUATEMALA                      3+                   NA                0.9462956   0.9178667   0.9747244
9-12 months    COHORTS          INDIA                          1                    NA                1.0276520   0.9924363   1.0628678
9-12 months    COHORTS          INDIA                          2                    NA                0.9964658   0.9649287   1.0280028
9-12 months    COHORTS          INDIA                          3+                   NA                0.9569431   0.9372162   0.9766701
9-12 months    GMS-Nepal        NEPAL                          1                    NA                1.0404999   0.9917511   1.0892488
9-12 months    GMS-Nepal        NEPAL                          2                    NA                1.0117936   0.9371551   1.0864321
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                0.9684505   0.9219769   1.0149241
9-12 months    Keneba           GAMBIA                         1                    NA                1.0089571   0.9167627   1.1011515
9-12 months    Keneba           GAMBIA                         2                    NA                1.0658785   0.9344075   1.1973495
9-12 months    Keneba           GAMBIA                         3+                   NA                0.9510995   0.8991756   1.0030233
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0747493   1.0280488   1.1214499
9-12 months    PROVIDE          BANGLADESH                     2                    NA                1.0505002   1.0051197   1.0958807
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                1.0151287   0.9687298   1.0615276
9-12 months    SAS-CompFeed     INDIA                          1                    NA                1.0816125   1.0325145   1.1307104
9-12 months    SAS-CompFeed     INDIA                          2                    NA                0.9917587   0.9256200   1.0578974
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                0.9568823   0.9169357   0.9968289
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0682480   1.0110939   1.1254020
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1084219   1.0481582   1.1686855
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.0869694   1.0261845   1.1477543
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1026463   1.0740386   1.1312540
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                1.0605923   1.0281007   1.0930838
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                1.0749094   1.0427024   1.1071163
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.8082870   0.7366008   0.8799731
12-15 months   COHORTS          GUATEMALA                      2                    NA                0.7644949   0.6841993   0.8447905
12-15 months   COHORTS          GUATEMALA                      3+                   NA                0.7848756   0.7548187   0.8149325
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9146242   0.8653729   0.9638755
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.8715020   0.7991140   0.9438900
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                0.8656276   0.8288698   0.9023853
12-15 months   Keneba           GAMBIA                         1                    NA                0.9525618   0.8491272   1.0559964
12-15 months   Keneba           GAMBIA                         2                    NA                0.9381409   0.8215903   1.0546915
12-15 months   Keneba           GAMBIA                         3+                   NA                0.9278687   0.8917607   0.9639767
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9641997   0.9202364   1.0081630
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.9403658   0.8972780   0.9834537
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                0.9816211   0.9325899   1.0306524
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8796702   0.8213518   0.9379885
12-15 months   SAS-CompFeed     INDIA                          2                    NA                0.8482161   0.7871143   0.9093179
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                0.7991734   0.7434346   0.8549122
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9304943   0.8660966   0.9948919
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9087483   0.8457097   0.9717868
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9536618   0.8892799   1.0180438
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9286835   0.8845089   0.9728580
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.9012491   0.8535647   0.9489334
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.9301758   0.8819480   0.9784036
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.7437043   0.6635831   0.8238255
15-18 months   COHORTS          GUATEMALA                      2                    NA                0.6732822   0.5962459   0.7503185
15-18 months   COHORTS          GUATEMALA                      3+                   NA                0.7604403   0.7253506   0.7955300
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7925166   0.7375968   0.8474363
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.7160961   0.6172402   0.8149519
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                0.7561932   0.7200478   0.7923386
15-18 months   Keneba           GAMBIA                         1                    NA                0.9251460   0.7921022   1.0581899
15-18 months   Keneba           GAMBIA                         2                    NA                0.8966716   0.7714174   1.0219257
15-18 months   Keneba           GAMBIA                         3+                   NA                0.8819334   0.8450629   0.9188038
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8575439   0.8166490   0.8984388
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.8582950   0.8193997   0.8971904
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                0.8508054   0.8047349   0.8968759
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.8854528   0.8192812   0.9516245
15-18 months   SAS-CompFeed     INDIA                          2                    NA                0.9196964   0.8437086   0.9956842
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                0.9094187   0.8490760   0.9697614
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9566377   0.8845636   1.0287119
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8906601   0.8108332   0.9704870
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9690103   0.8992820   1.0387387
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.8137054   0.7689890   0.8584219
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.8057360   0.7527992   0.8586727
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.7766441   0.7178328   0.8354555
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7027199   0.6335480   0.7718918
18-21 months   COHORTS          GUATEMALA                      2                    NA                0.7443728   0.6751712   0.8135745
18-21 months   COHORTS          GUATEMALA                      3+                   NA                0.7593690   0.7246194   0.7941185
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8970459   0.8511959   0.9428959
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.9647398   0.8856526   1.0438270
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                0.8723206   0.8228614   0.9217798
18-21 months   Keneba           GAMBIA                         1                    NA                0.7132616   0.5573328   0.8691903
18-21 months   Keneba           GAMBIA                         2                    NA                0.8439701   0.7284534   0.9594868
18-21 months   Keneba           GAMBIA                         3+                   NA                0.8242991   0.7852183   0.8633799
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8662557   0.8254406   0.9070708
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.8442503   0.8048190   0.8836816
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                0.7952309   0.7514191   0.8390426
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6944078   0.6411998   0.7476159
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.6730870   0.6112893   0.7348848
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.6735441   0.6111785   0.7359096
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.7106699   0.6528725   0.7684672
21-24 months   COHORTS          GUATEMALA                      2                    NA                0.6718998   0.6152649   0.7285347
21-24 months   COHORTS          GUATEMALA                      3+                   NA                0.6719343   0.6437951   0.7000735
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.8483264   0.7615870   0.9350659
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.7068349   0.6117135   0.8019563
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.8273616   0.7655787   0.8891444
21-24 months   Keneba           GAMBIA                         1                    NA                0.6835734   0.5619101   0.8052368
21-24 months   Keneba           GAMBIA                         2                    NA                0.6256437   0.5047302   0.7465571
21-24 months   Keneba           GAMBIA                         3+                   NA                0.7460280   0.7063564   0.7856996
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.8074511   0.7650501   0.8498522
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.7241450   0.6856283   0.7626616
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.7562933   0.7039456   0.8086411
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7002676   0.6353686   0.7651666
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.6894629   0.6309833   0.7479424
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.6809581   0.6074250   0.7544912


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     COHORTS          INDIA                          NA                   NA                3.4951636   3.4771029   3.5132243
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7233830   3.7130769   3.7336890
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1106299   3.0607110   3.1605487
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370118   3.3164684   3.3575551
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7960345   1.7599951   1.8320738
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     COHORTS          INDIA                          NA                   NA                1.1876267   1.1734988   1.2017547
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4249547   1.3698531   1.4800562
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229826   1.2861186   1.3598466
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9507015   0.9262928   0.9751103
9-12 months    COHORTS          INDIA                          NA                   NA                0.9788325   0.9636749   0.9939901
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9677634   0.9232065   1.0123204
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872065   1.0529274   1.1214857
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0812148   1.0633428   1.0990869
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7856579   0.7592765   0.8120393
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9311532   0.8983800   0.9639264
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9308176   0.8938698   0.9677654
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7458835   0.7161259   0.7756412
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8874581   0.8529191   0.9219971
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9386381   0.8958056   0.9814706
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7491980   0.7206457   0.7777504
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8148545   0.7779341   0.8517749
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6777084   0.6544850   0.7009317
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7279143   0.6917604   0.7640682
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                 -0.0709508   -0.2204643    0.0785627
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.1403306   -0.2606698   -0.0199913
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                 -0.0379608   -0.0905064    0.0145849
0-3 months     COHORTS          INDIA                          3+                   1                 -0.1555938   -0.2028130   -0.1083747
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                  0.0106056   -0.1365126    0.1577238
0-3 months     GMS-Nepal        NEPAL                          3+                   1                 -0.1458208   -0.2717102   -0.0199313
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2                    1                  0.0302177    0.0096538    0.0507817
0-3 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0596778   -0.0809899   -0.0383657
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                 -0.1352802   -0.3688310    0.0982707
0-3 months     Keneba           GAMBIA                         3+                   1                 -0.2472746   -0.4049576   -0.0895916
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                 -0.0028328   -0.0895704    0.0839048
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0769065   -0.1706428    0.0168298
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                  0.0179514   -0.0800207    0.1159236
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0639867   -0.1985630    0.0705896
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                  0.0470226   -0.0018604    0.0959056
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0618892   -0.1123076   -0.0114708
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.1393234   -0.2454462   -0.0332006
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.1811035   -0.2662489   -0.0959581
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0824634   -0.1278430   -0.0370838
3-6 months     COHORTS          INDIA                          3+                   1                 -0.1228245   -0.1637488   -0.0819001
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.1197910   -0.2277481   -0.0118339
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.1326870   -0.2262394   -0.0391346
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2                    1                 -0.0572052   -0.0798887   -0.0345216
3-6 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0810787   -0.1058892   -0.0562681
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                  0.0473662   -0.1466196    0.2413519
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.1735933   -0.3146134   -0.0325732
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 -0.0093439   -0.0870717    0.0683838
3-6 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0280130   -0.1149192    0.0588932
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.1202921   -0.2073000   -0.0332843
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.1922594   -0.3082162   -0.0763027
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0079569   -0.0984633    0.0825496
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0023037   -0.0831789    0.0877864
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0570040   -0.1038913   -0.0101167
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0527878   -0.1012985   -0.0042771
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                 -0.0887272   -0.1915731    0.0141186
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.1176176   -0.1938353   -0.0413998
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0522092   -0.0955799   -0.0088386
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0909520   -0.1292242   -0.0526799
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                  0.0231501   -0.0946528    0.1409531
6-9 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0591654   -0.1451883    0.0268575
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 -0.1963550   -0.4167598    0.0240497
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.2359501   -0.3850480   -0.0868523
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                 -0.0108872   -0.0699507    0.0481762
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0741433   -0.1358214   -0.0124651
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.0641853   -0.1752717    0.0469012
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0439646   -0.1228158    0.0348865
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0377796   -0.1311179    0.0555586
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1105458   -0.1957862   -0.0253054
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0529962   -0.0988599   -0.0071325
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0340882   -0.0805335    0.0123572
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.0470238   -0.1415101    0.0474625
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.0393434   -0.1067831    0.0280964
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                 -0.0311863   -0.0784592    0.0160867
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0707089   -0.1110735   -0.0303443
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                 -0.0287063   -0.1178543    0.0604416
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0720494   -0.1394011   -0.0046978
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                  0.0569215   -0.1036539    0.2174968
9-12 months    Keneba           GAMBIA                         3+                   1                 -0.0578576   -0.1636683    0.0479531
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                 -0.0242491   -0.0893669    0.0408687
9-12 months    PROVIDE          BANGLADESH                     3+                   1                 -0.0596207   -0.1254522    0.0062109
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0898538   -0.1558904   -0.0238172
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1247302   -0.1889440   -0.0605164
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0401739   -0.0428821    0.1232299
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0187214   -0.0647136    0.1021563
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0420541   -0.0853450    0.0012368
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0277370   -0.0708147    0.0153407
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                 -0.0437921   -0.1514317    0.0638476
12-15 months   COHORTS          GUATEMALA                      3+                   1                 -0.0234114   -0.1011437    0.0543210
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0431222   -0.1306763    0.0444318
12-15 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0489966   -0.1104525    0.0124592
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 -0.0144209   -0.1702502    0.1414084
12-15 months   Keneba           GAMBIA                         3+                   1                 -0.0246931   -0.1342491    0.0848628
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0238339   -0.0853914    0.0377237
12-15 months   PROVIDE          BANGLADESH                     3+                   1                  0.0174214   -0.0484332    0.0832761
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0314541   -0.1170769    0.0541687
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0804968   -0.1539823   -0.0070112
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0217460   -0.1118621    0.0683701
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0231676   -0.0678934    0.1142285
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0274344   -0.0924358    0.0375670
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                  0.0014924   -0.0639088    0.0668935
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0704221   -0.1815706    0.0407264
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0167360   -0.0707322    0.1042043
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                 -0.0764205   -0.1895074    0.0366664
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0363234   -0.1020704    0.0294236
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 -0.0284745   -0.2112018    0.1542529
15-18 months   Keneba           GAMBIA                         3+                   1                 -0.0432127   -0.1812710    0.0948457
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                  0.0007511   -0.0556868    0.0571891
15-18 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0067384   -0.0683411    0.0548642
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                  0.0342435   -0.0697484    0.1382355
15-18 months   SAS-CompFeed     INDIA                          3+                   1                  0.0239659   -0.0933877    0.1413194
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0659776   -0.1735277    0.0415725
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0123726   -0.0879106    0.1126558
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0079695   -0.0772649    0.0613260
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0370613   -0.1109419    0.0368192
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0416529   -0.0561919    0.1394978
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0566491   -0.0207608    0.1340589
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                  0.0676939   -0.0237228    0.1591106
18-21 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0247253   -0.0921674    0.0427168
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.1307085   -0.0633478    0.3247649
18-21 months   Keneba           GAMBIA                         3+                   1                  0.1110375   -0.0497141    0.2717891
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0220054   -0.0787566    0.0347458
18-21 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0710248   -0.1309025   -0.0111471
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0213208   -0.1028687    0.0602271
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0208637   -0.1028427    0.0611153
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0387701   -0.1196901    0.0421499
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0387356   -0.1030189    0.0255478
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                 -0.1414916   -0.2702231   -0.0127600
21-24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0209649   -0.1274583    0.0855286
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 -0.0579297   -0.2294582    0.1135988
21-24 months   Keneba           GAMBIA                         3+                   1                  0.0624545   -0.0655134    0.1904225
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0833062   -0.1405895   -0.0260228
21-24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0511578   -0.1185235    0.0162079
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0108048   -0.0981646    0.0765551
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0193095   -0.1173860    0.0787669


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.1118252   -0.2148493   -0.0088012
0-3 months     COHORTS          INDIA                          1                    NA                -0.0999358   -0.1374605   -0.0624111
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0669280   -0.1548525    0.0209966
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0095315   -0.0219095    0.0028466
0-3 months     Keneba           GAMBIA                         1                    NA                -0.2081470   -0.3473645   -0.0689295
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0216689   -0.0698287    0.0264908
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0271675   -0.1142383    0.0599033
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0040343   -0.0298523    0.0217837
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.1511147   -0.2237032   -0.0785262
3-6 months     COHORTS          INDIA                          1                    NA                -0.0921135   -0.1248389   -0.0593882
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0951547   -0.1602999   -0.0300095
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0443932   -0.0575680   -0.0312183
3-6 months     Keneba           GAMBIA                         1                    NA                -0.1302417   -0.2523905   -0.0080930
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0110888   -0.0554640    0.0332864
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.1244044   -0.2022855   -0.0465233
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0018524   -0.0515920    0.0478872
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0343138   -0.0598466   -0.0087810
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0973366   -0.1623155   -0.0323578
6-9 months     COHORTS          INDIA                          1                    NA                -0.0657825   -0.0963441   -0.0352209
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0215423   -0.0830558    0.0399711
6-9 months     Keneba           GAMBIA                         1                    NA                -0.2030006   -0.3323406   -0.0736607
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0241977   -0.0568389    0.0084434
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0368858   -0.0945426    0.0207711
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0483638   -0.0980870    0.0013595
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0268411   -0.0511106   -0.0025715
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0349374   -0.0922873    0.0224125
9-12 months    COHORTS          INDIA                          1                    NA                -0.0488195   -0.0811813   -0.0164577
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0421238   -0.0893028    0.0050551
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0411936   -0.1344779    0.0520906
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0247744   -0.0608983    0.0113496
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0818801   -0.1225794   -0.0411808
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0189585   -0.0272446    0.0651617
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0214315   -0.0439307    0.0010677
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0226291   -0.0880625    0.0428043
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0349196   -0.0798733    0.0100342
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0214086   -0.1201867    0.0773694
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0044497   -0.0386721    0.0297728
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0462013   -0.0965497    0.0041471
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003234   -0.0514434    0.0520901
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0080915   -0.0433741    0.0271912
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0021793   -0.0713744    0.0757329
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0375646   -0.0889421    0.0138130
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0376879   -0.1620038    0.0866280
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0014441   -0.0331385    0.0302503
15-18 months   SAS-CompFeed     INDIA                          1                    NA                 0.0192309   -0.0538769    0.0923386
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0179997   -0.0773587    0.0413594
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0142811   -0.0519301    0.0233679
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0464782   -0.0185692    0.1115255
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0068497   -0.0396134    0.0533127
18-21 months   Keneba           GAMBIA                         1                    NA                 0.1015929   -0.0423031    0.2454890
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0269180   -0.0586931    0.0048571
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0135254   -0.0577765    0.0307257
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0329615   -0.0866565    0.0207335
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0492952   -0.1260064    0.0274160
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0443409   -0.0701078    0.1587896
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0443121   -0.0778081   -0.0108161
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0095262   -0.0602858    0.0412335
