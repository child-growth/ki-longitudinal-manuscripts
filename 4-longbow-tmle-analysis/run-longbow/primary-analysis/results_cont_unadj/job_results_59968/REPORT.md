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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        meducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High            51      92
Birth       CMC-V-BCS-2002   INDIA                          Low             16      92
Birth       CMC-V-BCS-2002   INDIA                          Medium          25      92
Birth       COHORTS          GUATEMALA                      High           178     842
Birth       COHORTS          GUATEMALA                      Low            391     842
Birth       COHORTS          GUATEMALA                      Medium         273     842
Birth       COHORTS          INDIA                          High           678    5216
Birth       COHORTS          INDIA                          Low           1756    5216
Birth       COHORTS          INDIA                          Medium        2782    5216
Birth       COHORTS          PHILIPPINES                    High          1169    3050
Birth       COHORTS          PHILIPPINES                    Low            900    3050
Birth       COHORTS          PHILIPPINES                    Medium         981    3050
Birth       EE               PAKISTAN                       High             7     239
Birth       EE               PAKISTAN                       Low            215     239
Birth       EE               PAKISTAN                       Medium          17     239
Birth       GMS-Nepal        NEPAL                          High            85     693
Birth       GMS-Nepal        NEPAL                          Low            485     693
Birth       GMS-Nepal        NEPAL                          Medium         123     693
Birth       IRC              INDIA                          High           113     388
Birth       IRC              INDIA                          Low            142     388
Birth       IRC              INDIA                          Medium         133     388
Birth       JiVitA-3         BANGLADESH                     High          6683   22427
Birth       JiVitA-3         BANGLADESH                     Low           8795   22427
Birth       JiVitA-3         BANGLADESH                     Medium        6949   22427
Birth       JiVitA-4         BANGLADESH                     High           933    2817
Birth       JiVitA-4         BANGLADESH                     Low            990    2817
Birth       JiVitA-4         BANGLADESH                     Medium         894    2817
Birth       MAL-ED           BANGLADESH                     High            67     187
Birth       MAL-ED           BANGLADESH                     Low             65     187
Birth       MAL-ED           BANGLADESH                     Medium          55     187
Birth       MAL-ED           BRAZIL                         High            18      65
Birth       MAL-ED           BRAZIL                         Low             17      65
Birth       MAL-ED           BRAZIL                         Medium          30      65
Birth       MAL-ED           INDIA                          High             8      40
Birth       MAL-ED           INDIA                          Low             18      40
Birth       MAL-ED           INDIA                          Medium          14      40
Birth       MAL-ED           NEPAL                          High             5      25
Birth       MAL-ED           NEPAL                          Low             12      25
Birth       MAL-ED           NEPAL                          Medium           8      25
Birth       MAL-ED           PERU                           High            68     233
Birth       MAL-ED           PERU                           Low             84     233
Birth       MAL-ED           PERU                           Medium          81     233
Birth       MAL-ED           SOUTH AFRICA                   High            35     123
Birth       MAL-ED           SOUTH AFRICA                   Low             62     123
Birth       MAL-ED           SOUTH AFRICA                   Medium          26     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             34     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          64     105
Birth       NIH-Birth        BANGLADESH                     High           170     608
Birth       NIH-Birth        BANGLADESH                     Low            224     608
Birth       NIH-Birth        BANGLADESH                     Medium         214     608
Birth       NIH-Crypto       BANGLADESH                     High           247     732
Birth       NIH-Crypto       BANGLADESH                     Low            232     732
Birth       NIH-Crypto       BANGLADESH                     Medium         253     732
Birth       PROBIT           BELARUS                        High          2249   13893
Birth       PROBIT           BELARUS                        Low           4965   13893
Birth       PROBIT           BELARUS                        Medium        6679   13893
Birth       PROVIDE          BANGLADESH                     High           171     539
Birth       PROVIDE          BANGLADESH                     Low            165     539
Birth       PROVIDE          BANGLADESH                     Medium         203     539
Birth       SAS-CompFeed     INDIA                          High           248    1252
Birth       SAS-CompFeed     INDIA                          Low            587    1252
Birth       SAS-CompFeed     INDIA                          Medium         417    1252
Birth       ZVITAMBO         ZIMBABWE                       High          7515   13855
Birth       ZVITAMBO         ZIMBABWE                       Low           2912   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium        3428   13855
6 months    CMC-V-BCS-2002   INDIA                          High           157     369
6 months    CMC-V-BCS-2002   INDIA                          Low            105     369
6 months    CMC-V-BCS-2002   INDIA                          Medium         107     369
6 months    COHORTS          GUATEMALA                      High           185     952
6 months    COHORTS          GUATEMALA                      Low            449     952
6 months    COHORTS          GUATEMALA                      Medium         318     952
6 months    COHORTS          INDIA                          High           736    5413
6 months    COHORTS          INDIA                          Low           1777    5413
6 months    COHORTS          INDIA                          Medium        2900    5413
6 months    COHORTS          PHILIPPINES                    High          1014    2708
6 months    COHORTS          PHILIPPINES                    Low            826    2708
6 months    COHORTS          PHILIPPINES                    Medium         868    2708
6 months    EE               PAKISTAN                       High            15     370
6 months    EE               PAKISTAN                       Low            322     370
6 months    EE               PAKISTAN                       Medium          33     370
6 months    GMS-Nepal        NEPAL                          High            68     561
6 months    GMS-Nepal        NEPAL                          Low            399     561
6 months    GMS-Nepal        NEPAL                          Medium          94     561
6 months    Guatemala BSC    GUATEMALA                      High           117     277
6 months    Guatemala BSC    GUATEMALA                      Low             73     277
6 months    Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    IRC              INDIA                          High           123     407
6 months    IRC              INDIA                          Low            146     407
6 months    IRC              INDIA                          Medium         138     407
6 months    JiVitA-3         BANGLADESH                     High          5922   16794
6 months    JiVitA-3         BANGLADESH                     Low           5622   16794
6 months    JiVitA-3         BANGLADESH                     Medium        5250   16794
6 months    JiVitA-4         BANGLADESH                     High          1718    4818
6 months    JiVitA-4         BANGLADESH                     Low           1581    4818
6 months    JiVitA-4         BANGLADESH                     Medium        1519    4818
6 months    LCNI-5           MALAWI                         High           298     813
6 months    LCNI-5           MALAWI                         Low            261     813
6 months    LCNI-5           MALAWI                         Medium         254     813
6 months    MAL-ED           BANGLADESH                     High            73     196
6 months    MAL-ED           BANGLADESH                     Low             64     196
6 months    MAL-ED           BANGLADESH                     Medium          59     196
6 months    MAL-ED           BRAZIL                         High            71     208
6 months    MAL-ED           BRAZIL                         Low             56     208
6 months    MAL-ED           BRAZIL                         Medium          81     208
6 months    MAL-ED           INDIA                          High            59     208
6 months    MAL-ED           INDIA                          Low             72     208
6 months    MAL-ED           INDIA                          Medium          77     208
6 months    MAL-ED           NEPAL                          High            53     221
6 months    MAL-ED           NEPAL                          Low             93     221
6 months    MAL-ED           NEPAL                          Medium          75     221
6 months    MAL-ED           PERU                           High            81     272
6 months    MAL-ED           PERU                           Low             94     272
6 months    MAL-ED           PERU                           Medium          97     272
6 months    MAL-ED           SOUTH AFRICA                   High            70     254
6 months    MAL-ED           SOUTH AFRICA                   Low            127     254
6 months    MAL-ED           SOUTH AFRICA                   Medium          57     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             62     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         132     203
6 months    NIH-Birth        BANGLADESH                     High           155     537
6 months    NIH-Birth        BANGLADESH                     Low            195     537
6 months    NIH-Birth        BANGLADESH                     Medium         187     537
6 months    NIH-Crypto       BANGLADESH                     High           240     715
6 months    NIH-Crypto       BANGLADESH                     Low            229     715
6 months    NIH-Crypto       BANGLADESH                     Medium         246     715
6 months    PROBIT           BELARUS                        High          2657   15760
6 months    PROBIT           BELARUS                        Low           5643   15760
6 months    PROBIT           BELARUS                        Medium        7460   15760
6 months    PROVIDE          BANGLADESH                     High           209     604
6 months    PROVIDE          BANGLADESH                     Low            187     604
6 months    PROVIDE          BANGLADESH                     Medium         208     604
6 months    SAS-CompFeed     INDIA                          High           290    1336
6 months    SAS-CompFeed     INDIA                          Low            597    1336
6 months    SAS-CompFeed     INDIA                          Medium         449    1336
6 months    SAS-FoodSuppl    INDIA                          High            35     380
6 months    SAS-FoodSuppl    INDIA                          Low            304     380
6 months    SAS-FoodSuppl    INDIA                          Medium          41     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021
6 months    ZVITAMBO         ZIMBABWE                       High          4702    8655
6 months    ZVITAMBO         ZIMBABWE                       Low           1795    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium        2158    8655
24 months   CMC-V-BCS-2002   INDIA                          High           158     371
24 months   CMC-V-BCS-2002   INDIA                          Low            105     371
24 months   CMC-V-BCS-2002   INDIA                          Medium         108     371
24 months   COHORTS          GUATEMALA                      High           209    1057
24 months   COHORTS          GUATEMALA                      Low            506    1057
24 months   COHORTS          GUATEMALA                      Medium         342    1057
24 months   COHORTS          INDIA                          High           608    4198
24 months   COHORTS          INDIA                          Low           1272    4198
24 months   COHORTS          INDIA                          Medium        2318    4198
24 months   COHORTS          PHILIPPINES                    High           914    2445
24 months   COHORTS          PHILIPPINES                    Low            744    2445
24 months   COHORTS          PHILIPPINES                    Medium         787    2445
24 months   EE               PAKISTAN                       High             6     165
24 months   EE               PAKISTAN                       Low            142     165
24 months   EE               PAKISTAN                       Medium          17     165
24 months   GMS-Nepal        NEPAL                          High            55     485
24 months   GMS-Nepal        NEPAL                          Low            344     485
24 months   GMS-Nepal        NEPAL                          Medium          86     485
24 months   IRC              INDIA                          High           124     409
24 months   IRC              INDIA                          Low            146     409
24 months   IRC              INDIA                          Medium         139     409
24 months   JiVitA-3         BANGLADESH                     High          2927    8621
24 months   JiVitA-3         BANGLADESH                     Low           3004    8621
24 months   JiVitA-3         BANGLADESH                     Medium        2690    8621
24 months   JiVitA-4         BANGLADESH                     High          1696    4741
24 months   JiVitA-4         BANGLADESH                     Low           1536    4741
24 months   JiVitA-4         BANGLADESH                     Medium        1509    4741
24 months   LCNI-5           MALAWI                         High           220     572
24 months   LCNI-5           MALAWI                         Low            177     572
24 months   LCNI-5           MALAWI                         Medium         175     572
24 months   MAL-ED           BANGLADESH                     High            64     171
24 months   MAL-ED           BANGLADESH                     Low             59     171
24 months   MAL-ED           BANGLADESH                     Medium          48     171
24 months   MAL-ED           BRAZIL                         High            62     168
24 months   MAL-ED           BRAZIL                         Low             42     168
24 months   MAL-ED           BRAZIL                         Medium          64     168
24 months   MAL-ED           INDIA                          High            55     199
24 months   MAL-ED           INDIA                          Low             69     199
24 months   MAL-ED           INDIA                          Medium          75     199
24 months   MAL-ED           NEPAL                          High            48     213
24 months   MAL-ED           NEPAL                          Low             91     213
24 months   MAL-ED           NEPAL                          Medium          74     213
24 months   MAL-ED           PERU                           High            59     200
24 months   MAL-ED           PERU                           Low             74     200
24 months   MAL-ED           PERU                           Medium          67     200
24 months   MAL-ED           SOUTH AFRICA                   High            67     238
24 months   MAL-ED           SOUTH AFRICA                   Low            120     238
24 months   MAL-ED           SOUTH AFRICA                   Medium          51     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             54     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         114     175
24 months   NIH-Birth        BANGLADESH                     High           130     429
24 months   NIH-Birth        BANGLADESH                     Low            153     429
24 months   NIH-Birth        BANGLADESH                     Medium         146     429
24 months   NIH-Crypto       BANGLADESH                     High           191     514
24 months   NIH-Crypto       BANGLADESH                     Low            146     514
24 months   NIH-Crypto       BANGLADESH                     Medium         177     514
24 months   PROBIT           BELARUS                        High           664    4035
24 months   PROBIT           BELARUS                        Low           1407    4035
24 months   PROBIT           BELARUS                        Medium        1964    4035
24 months   PROVIDE          BANGLADESH                     High           201     578
24 months   PROVIDE          BANGLADESH                     Low            174     578
24 months   PROVIDE          BANGLADESH                     Medium         203     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ZVITAMBO         ZIMBABWE                       High           862    1639
24 months   ZVITAMBO         ZIMBABWE                       Low            345    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium         432    1639


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d160cf96-972e-4301-b5fa-78e6a6331008/c8457fd6-6afb-49f3-9120-00d14e2274cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d160cf96-972e-4301-b5fa-78e6a6331008/c8457fd6-6afb-49f3-9120-00d14e2274cc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d160cf96-972e-4301-b5fa-78e6a6331008/c8457fd6-6afb-49f3-9120-00d14e2274cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.8887255   -1.1392410   -0.6382100
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9050000   -1.4061812   -0.4038188
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1450000   -1.6583068   -0.6316932
Birth       COHORTS          GUATEMALA                      High                 NA                 0.1202247   -0.0458097    0.2862591
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.0444501   -0.0868399    0.1757402
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.2554212    0.1131504    0.3976920
Birth       COHORTS          INDIA                          High                 NA                -0.3412684   -0.4251921   -0.2573448
Birth       COHORTS          INDIA                          Low                  NA                -0.8533770   -0.9081194   -0.7986345
Birth       COHORTS          INDIA                          Medium               NA                -0.6322753   -0.6747157   -0.5898350
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.1277246   -0.1894408   -0.0660083
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.4007444   -0.4725217   -0.3289672
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2544546   -0.3238279   -0.1850814
Birth       EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.9247059   -1.1556669   -0.6937449
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1134433   -1.2085962   -1.0182904
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0991057   -1.2927159   -0.9054955
Birth       IRC              INDIA                          High                 NA                -0.3259292   -0.6063276   -0.0455308
Birth       IRC              INDIA                          Low                  NA                -0.3416901   -0.5985971   -0.0847832
Birth       IRC              INDIA                          Medium               NA                -0.2569173   -0.5532520    0.0394175
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.4306374   -1.4623333   -1.3989416
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.6552791   -1.6829414   -1.6276169
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.6597064   -1.6906568   -1.6287561
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4437728   -1.5357068   -1.3518388
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.5756970   -1.6610523   -1.4903416
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5481320   -1.6262669   -1.4699971
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.9826866   -1.2124817   -0.7528914
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1964615   -1.4724514   -0.9204716
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0896364   -1.3378241   -0.8414486
Birth       MAL-ED           BRAZIL                         High                 NA                -0.6805556   -1.0180682   -0.3430429
Birth       MAL-ED           BRAZIL                         Low                  NA                -0.8547059   -1.3598154   -0.3495964
Birth       MAL-ED           BRAZIL                         Medium               NA                -0.5720000   -1.0529196   -0.0910804
Birth       MAL-ED           INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       MAL-ED           INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       MAL-ED           INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       MAL-ED           NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       MAL-ED           NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       MAL-ED           NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       MAL-ED           PERU                           High                 NA                -0.9323529   -1.1669672   -0.6977387
Birth       MAL-ED           PERU                           Low                  NA                -0.8529762   -1.0470305   -0.6589219
Birth       MAL-ED           PERU                           Medium               NA                -0.8720988   -1.0576884   -0.6865091
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.4140000   -0.7114448   -0.1165552
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.7590323   -1.0562649   -0.4617996
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.6211538   -1.0183987   -0.2239090
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770160   -0.6572697
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851562   -1.5881883   -0.9821242
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.8258235   -1.0002129   -0.6514342
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -1.0058705   -1.1453483   -0.8663928
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -0.9362383   -1.0871202   -0.7853564
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.7846154   -0.9099309   -0.6592999
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.9578879   -1.0807033   -0.8350726
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9870356   -1.1083581   -0.8657131
Birth       PROBIT           BELARUS                        High                 NA                 1.3804669    1.2099333    1.5510005
Birth       PROBIT           BELARUS                        Low                  NA                 1.2172910    1.0416200    1.3929620
Birth       PROBIT           BELARUS                        Medium               NA                 1.3581884    1.1999121    1.5164646
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.8460234   -0.9779332   -0.7141136
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.8755152   -1.0088363   -0.7421940
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.9258128   -1.0504802   -0.8011454
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.2708468   -1.3899282   -1.1517653
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.5460647   -1.6553486   -1.4367809
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.3655396   -1.4810622   -1.2500169
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4513985   -0.4795127   -0.4232844
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5692685   -0.6137891   -0.5247480
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5504172   -0.5912552   -0.5095791
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -1.2878875   -1.5029525   -1.0728224
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6829524   -1.9302690   -1.4356357
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3677103   -1.6415563   -1.0938642
6 months    COHORTS          GUATEMALA                      High                 NA                -1.7964324   -1.9442457   -1.6486191
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.9168597   -2.0172041   -1.8165153
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.6680189   -1.7859449   -1.5500929
6 months    COHORTS          INDIA                          High                 NA                -0.4097690   -0.4889730   -0.3305650
6 months    COHORTS          INDIA                          Low                  NA                -1.4041362   -1.4579796   -1.3502928
6 months    COHORTS          INDIA                          Medium               NA                -0.9363310   -0.9768751   -0.8957869
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.9334714   -0.9986654   -0.8682774
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.3342978   -1.4114769   -1.2571188
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1981567   -1.2724369   -1.1238765
6 months    EE               PAKISTAN                       High                 NA                -1.7698889   -2.2232494   -1.3165283
6 months    EE               PAKISTAN                       Low                  NA                -2.1342288   -2.2646920   -2.0037655
6 months    EE               PAKISTAN                       Medium               NA                -1.6718687   -2.0146546   -1.3290828
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.0524755   -1.2798085   -0.8251425
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4366416   -1.5307718   -1.3425115
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.2026064   -1.3704921   -1.0347206
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -1.5273504   -1.7009586   -1.3537423
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                -1.6358676   -1.8651158   -1.4066193
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -1.5480077   -1.7587640   -1.3372514
6 months    IRC              INDIA                          High                 NA                -1.1490379   -1.3694761   -0.9285998
6 months    IRC              INDIA                          Low                  NA                -1.2421918   -1.4726932   -1.0116903
6 months    IRC              INDIA                          Medium               NA                -1.3022585   -1.5300836   -1.0744333
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.1039851   -1.1385121   -1.0694582
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.4573497   -1.4902648   -1.4244346
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3946190   -1.4275217   -1.3617164
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.1562398   -1.2160369   -1.0964427
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4835009   -1.5471745   -1.4198274
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.4140915   -1.4715073   -1.3566758
6 months    LCNI-5           MALAWI                         High                 NA                -1.4590268   -1.5711834   -1.3468703
6 months    LCNI-5           MALAWI                         Low                  NA                -1.8125287   -1.9405990   -1.6844584
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6851181   -1.8019552   -1.5682811
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.9744977   -1.1631996   -0.7857958
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.3396875   -1.6219339   -1.0574411
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.3051412   -1.4945839   -1.1156986
6 months    MAL-ED           BRAZIL                         High                 NA                 0.0641549   -0.1739237    0.3022336
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.0491071   -0.2478446    0.3460588
6 months    MAL-ED           BRAZIL                         Medium               NA                 0.0368519   -0.1914229    0.2651267
6 months    MAL-ED           INDIA                          High                 NA                -1.1345480   -1.3446232   -0.9244729
6 months    MAL-ED           INDIA                          Low                  NA                -1.1938426   -1.4072607   -0.9804244
6 months    MAL-ED           INDIA                          Medium               NA                -1.1493290   -1.3544613   -0.9441967
6 months    MAL-ED           NEPAL                          High                 NA                -0.3681761   -0.6018387   -0.1345135
6 months    MAL-ED           NEPAL                          Low                  NA                -0.6391039   -0.8135478   -0.4646601
6 months    MAL-ED           NEPAL                          Medium               NA                -0.5625778   -0.7514636   -0.3736919
6 months    MAL-ED           PERU                           High                 NA                -1.3610185   -1.5530471   -1.1689899
6 months    MAL-ED           PERU                           Low                  NA                -1.3362057   -1.5252099   -1.1472014
6 months    MAL-ED           PERU                           Medium               NA                -1.2917698   -1.4721953   -1.1113442
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.9665952   -1.2031001   -0.7300904
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -1.1362205   -1.3272044   -0.9452365
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0196784   -1.2566617   -0.7826950
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    NIH-Birth        BANGLADESH                     High                 NA                -1.0869892   -1.2446645   -0.9293140
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -1.6171197   -1.7696045   -1.4646348
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -1.4542380   -1.5947473   -1.3137286
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.0076250   -1.1288996   -0.8863504
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2677074   -1.3908272   -1.1445876
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.3208130   -1.4436575   -1.1979685
6 months    PROBIT           BELARUS                        High                 NA                 0.2486752    0.1532447    0.3441057
6 months    PROBIT           BELARUS                        Low                  NA                -0.0617074   -0.1596153    0.0362004
6 months    PROBIT           BELARUS                        Medium               NA                 0.1651584    0.0684453    0.2618715
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.9708453   -1.0915614   -0.8501292
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.1942513   -1.3251564   -1.0633462
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.1209135   -1.2538911   -0.9879358
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.9744310   -1.1014005   -0.8474615
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.6395896   -1.7210595   -1.5581197
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3618263   -1.4941008   -1.2295517
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.6200000   -1.9747587   -1.2652413
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9402303   -2.0697014   -1.8107592
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.8285366   -2.1108251   -1.5462481
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4549447   -0.5582953   -0.3515940
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5767342   -0.8388699   -0.3145986
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5741016   -0.6307415   -0.5174617
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8009422   -0.8356082   -0.7662761
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9544819   -1.0100940   -0.8988698
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9456070   -0.9969996   -0.8942145
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -2.4653692   -2.6295111   -2.3012273
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7430952   -2.9168043   -2.5693862
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5165432   -2.6867108   -2.3463756
24 months   COHORTS          GUATEMALA                      High                 NA                -3.0489474   -3.1957114   -2.9021833
24 months   COHORTS          GUATEMALA                      Low                  NA                -3.1047826   -3.1987343   -3.0108309
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.7795322   -2.8878594   -2.6712049
24 months   COHORTS          INDIA                          High                 NA                -1.2721711   -1.3533729   -1.1909692
24 months   COHORTS          INDIA                          Low                  NA                -2.7937343   -2.8579948   -2.7294738
24 months   COHORTS          INDIA                          Medium               NA                -2.0707679   -2.1156776   -2.0258582
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.0180635   -2.0908332   -1.9452937
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.7543414   -2.8297145   -2.6789683
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.5524396   -2.6284622   -2.4764171
24 months   EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.4455455   -1.7248501   -1.1662408
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.9559884   -2.0545553   -1.8574215
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.9033140   -2.1057575   -1.7008704
24 months   IRC              INDIA                          High                 NA                -1.6430108   -1.8178780   -1.4681435
24 months   IRC              INDIA                          Low                  NA                -1.8690183   -2.0279543   -1.7100823
24 months   IRC              INDIA                          Medium               NA                -1.8639568   -2.0149864   -1.7129272
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.7505193   -1.7932139   -1.7078247
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.2135153   -2.2547778   -2.1722528
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -2.0760855   -2.1171572   -2.0350138
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.5754894   -1.6298006   -1.5211781
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.9570508   -2.0125534   -1.9015481
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8342810   -1.8941786   -1.7743833
24 months   LCNI-5           MALAWI                         High                 NA                -1.7653636   -1.8892486   -1.6414787
24 months   LCNI-5           MALAWI                         Low                  NA                -1.9440395   -2.0909537   -1.7971254
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9577429   -2.1135239   -1.8019618
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.7949219   -2.0415785   -1.5482652
24 months   MAL-ED           BANGLADESH                     Low                  NA                -2.0387288   -2.2490499   -1.8284077
24 months   MAL-ED           BANGLADESH                     Medium               NA                -1.9038542   -2.1286848   -1.6790236
24 months   MAL-ED           BRAZIL                         High                 NA                 0.2048925   -0.0572507    0.4670357
24 months   MAL-ED           BRAZIL                         Low                  NA                -0.2823413   -0.6375041    0.0728215
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.0081771   -0.2637019    0.2800560
24 months   MAL-ED           INDIA                          High                 NA                -1.6146364   -1.8375535   -1.3917192
24 months   MAL-ED           INDIA                          Low                  NA                -1.8982609   -2.1181717   -1.6783500
24 months   MAL-ED           INDIA                          Medium               NA                -1.9183333   -2.1332722   -1.7033945
24 months   MAL-ED           NEPAL                          High                 NA                -1.0770833   -1.3578023   -0.7963643
24 months   MAL-ED           NEPAL                          Low                  NA                -1.3879670   -1.5727762   -1.2031579
24 months   MAL-ED           NEPAL                          Medium               NA                -1.2466216   -1.4373319   -1.0559114
24 months   MAL-ED           PERU                           High                 NA                -1.4963277   -1.7430019   -1.2496535
24 months   MAL-ED           PERU                           Low                  NA                -1.8714189   -2.0654242   -1.6774136
24 months   MAL-ED           PERU                           Medium               NA                -1.8527363   -2.0373880   -1.6680847
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4378358   -1.6831521   -1.1925196
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.7249931   -1.9176108   -1.5323753
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.7292157   -2.0115621   -1.4468693
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   NIH-Birth        BANGLADESH                     High                 NA                -1.7537436   -1.9430059   -1.5644813
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -2.5125654   -2.6722052   -2.3529255
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -2.3257991   -2.4897840   -2.1618142
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.1326178   -1.2646333   -1.0006023
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.6108219   -1.7626733   -1.4589705
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.6344633   -1.7739756   -1.4949510
24 months   PROBIT           BELARUS                        High                 NA                 0.0583936   -0.1570490    0.2738361
24 months   PROBIT           BELARUS                        Low                  NA                -0.2944776   -0.8643073    0.2753521
24 months   PROBIT           BELARUS                        Medium               NA                -0.1052189   -0.3974726    0.1870347
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.2917164   -1.4264977   -1.1569351
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.8544253   -1.9975989   -1.7112516
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6940640   -1.8369198   -1.5512082
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.4538747   -1.5331605   -1.3745889
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.8134928   -1.9361692   -1.6908163
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7435185   -1.8497386   -1.6372984


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1288717    0.0445170    0.2132265
Birth       COHORTS          INDIA                          NA                   NA                -0.6688842   -0.7003528   -0.6374156
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       NA                   NA                -1.8545188   -2.0422173   -1.6668203
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0877489   -1.1679913   -1.0075066
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5897102   -1.6089975   -1.5704229
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232552   -1.5724840   -1.4740265
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0884492   -1.2349987   -0.9418997
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          NA                   NA                -1.2372500   -1.5471753   -0.9273247
Birth       MAL-ED           NEPAL                          NA                   NA                -0.9120000   -1.2873301   -0.5366699
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1398095   -1.3671021   -0.9125169
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5006712   -0.5212382   -0.4801043
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8103361   -1.8786415   -1.7420307
6 months    COHORTS          INDIA                          NA                   NA                -1.0183078   -1.0495042   -0.9871113
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    EE               PAKISTAN                       NA                   NA                -2.0782207   -2.1981595   -1.9582820
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508616   -1.4293975   -1.2723256
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3131339   -1.3362896   -1.2899781
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3449232   -1.3822755   -1.3075709
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6431488   -1.7125598   -1.5737379
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.1932738   -1.3246079   -1.0619397
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0494712   -0.0951008    0.1940431
6 months    MAL-ED           INDIA                          NA                   NA                -1.1605449   -1.2821450   -1.0389448
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5481599   -0.6614541   -0.4348656
6 months    MAL-ED           PERU                           NA                   NA                -1.3277482   -1.4358597   -1.2196367
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2937438   -1.4246923   -1.1627954
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440108   -0.5930025   -0.4950192
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8688556   -0.8944357   -0.8432754
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9885052   -3.0530889   -2.9239215
24 months   COHORTS          INDIA                          NA                   NA                -2.1741663   -2.2109368   -2.1373958
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   EE               PAKISTAN                       NA                   NA                -2.6563232   -2.8000905   -2.5125560
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8887629   -1.9746814   -1.8028444
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0134370   -2.0411067   -1.9857672
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7814786   -1.8170130   -1.7459442
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8795105   -1.9611410   -1.7978800
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9096199   -2.0438307   -1.7754091
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0081448   -0.1615145    0.1778041
24 months   MAL-ED           INDIA                          NA                   NA                -1.8274372   -1.9559249   -1.6989495
24 months   MAL-ED           NEPAL                          NA                   NA                -1.2688028   -1.3908231   -1.1467825
24 months   MAL-ED           PERU                           NA                   NA                -1.7545083   -1.8762212   -1.6327955
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5654000   -2.7089193   -2.4218807
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059152   -1.6629321   -1.5488983


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.0162745   -0.5765786    0.5440295
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.2562745   -0.8274504    0.3149014
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0757746   -0.2874453    0.1358961
Birth       COHORTS          GUATEMALA                      Medium               High               0.1351965   -0.0834548    0.3538479
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.5121086   -0.6123079   -0.4119092
Birth       COHORTS          INDIA                          Medium               High              -0.2910069   -0.3850514   -0.1969624
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.2730199   -0.3676817   -0.1783580
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.1267301   -0.2195823   -0.0338778
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              -0.1887374   -0.4385315    0.0610566
Birth       GMS-Nepal        NEPAL                          Medium               High              -0.1743998   -0.4757765    0.1269769
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High              -0.0157609   -0.3960561    0.3645342
Birth       IRC              INDIA                          Medium               High               0.0690119   -0.3389557    0.4769795
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.2246417   -0.2636274   -0.1856560
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.2290690   -0.2719839   -0.1861541
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.1319242   -0.2569895   -0.0068589
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.1043592   -0.2267229    0.0180045
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.2137750   -0.5729076    0.1453577
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.1069498   -0.4451849    0.2312853
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High              -0.1741503   -0.7816455    0.4333448
Birth       MAL-ED           BRAZIL                         Medium               High               0.1085556   -0.4789803    0.6960914
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       MAL-ED           INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       MAL-ED           NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.0793768   -0.2250915    0.3838450
Birth       MAL-ED           PERU                           Medium               High               0.0602542   -0.2388902    0.3593985
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3450323   -0.7655327    0.0754682
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.2071538   -0.7034167    0.2891090
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.1800470   -0.4033533    0.0432593
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.1104148   -0.3410162    0.1201866
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.1732725   -0.3487365    0.0021914
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.2024202   -0.3768425   -0.0279979
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.1631758   -0.2683142   -0.0580375
Birth       PROBIT           BELARUS                        Medium               High              -0.0222785   -0.1007761    0.0562190
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0294918   -0.2170410    0.1580575
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0797894   -0.2612892    0.1017103
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.2752180   -0.4479475   -0.1024884
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0946928   -0.2552949    0.0659093
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.1178700   -0.1705244   -0.0652156
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0990186   -0.1485984   -0.0494389
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.3950649   -0.7228125   -0.0673173
6 months    CMC-V-BCS-2002   INDIA                          Medium               High              -0.0798228   -0.4280248    0.2683792
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.1204273   -0.2990827    0.0582282
6 months    COHORTS          GUATEMALA                      Medium               High               0.1284136   -0.0606772    0.3175043
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.9943672   -1.0901397   -0.8985946
6 months    COHORTS          INDIA                          Medium               High              -0.5265620   -0.6155401   -0.4375839
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.4008264   -0.5018554   -0.2997974
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.2646853   -0.3635175   -0.1658531
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.3643399   -0.8360988    0.1074190
6 months    EE               PAKISTAN                       Medium               High               0.0980202   -0.4703441    0.6663845
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.3841661   -0.6302165   -0.1381157
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.1501309   -0.4327365    0.1324747
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.1085172   -0.3960837    0.1790494
6 months    Guatemala BSC    GUATEMALA                      Medium               High              -0.0206572   -0.2937104    0.2523959
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.0931538   -0.4120956    0.2257880
6 months    IRC              INDIA                          Medium               High              -0.1532205   -0.4702336    0.1637925
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.3533646   -0.3971014   -0.3096277
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.2906339   -0.3341447   -0.2471231
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.3272611   -0.4093937   -0.2451286
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.2578517   -0.3398576   -0.1758458
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.3535019   -0.5237402   -0.1832636
6 months    LCNI-5           MALAWI                         Medium               High              -0.2260913   -0.3880480   -0.0641346
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.3651898   -0.7047062   -0.0256733
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.3306435   -0.5980326   -0.0632544
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.0150478   -0.3956549    0.3655593
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0273031   -0.3571376    0.3025315
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High              -0.0592946   -0.3587589    0.2401698
6 months    MAL-ED           INDIA                          Medium               High              -0.0147810   -0.3083978    0.2788359
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.2709278   -0.5625249    0.0206692
6 months    MAL-ED           NEPAL                          Medium               High              -0.1944017   -0.4948615    0.1060581
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.0248128   -0.2446265    0.2942522
6 months    MAL-ED           PERU                           Medium               High               0.0692488   -0.1942438    0.3327414
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.1696252   -0.4736144    0.1343639
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0530831   -0.3878900    0.2817238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.5301304   -0.7494774   -0.3107834
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.3672487   -0.5784462   -0.1560513
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.2600824   -0.4329003   -0.0872646
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.3131880   -0.4858098   -0.1405662
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.3103826   -0.3982122   -0.2225531
6 months    PROBIT           BELARUS                        Medium               High              -0.0835168   -0.1625895   -0.0044441
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.2234060   -0.4014749   -0.0453372
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.1500682   -0.3296662    0.0295298
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.6651586   -0.8416547   -0.4886625
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.3873952   -0.4781198   -0.2966706
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.3202303   -0.6978763    0.0574158
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2085366   -0.6619024    0.2448292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1217896   -0.4035633    0.1599842
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1191570   -0.2370104   -0.0013035
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1535397   -0.2190717   -0.0880077
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.1446649   -0.2066562   -0.0826736
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.2777260   -0.5167185   -0.0387335
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0511740   -0.2876049    0.1852569
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.0558352   -0.2300954    0.1184249
24 months   COHORTS          GUATEMALA                      Medium               High               0.2694152    0.0870022    0.4518282
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -1.5215632   -1.6251159   -1.4180106
24 months   COHORTS          INDIA                          Medium               High              -0.7985969   -0.8913903   -0.7058034
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.7362779   -0.8410469   -0.6315090
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.5343762   -0.6396134   -0.4291390
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.5104429   -0.8066295   -0.2142563
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.4577685   -0.8027243   -0.1128127
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.2260075   -0.4623107    0.0102957
24 months   IRC              INDIA                          Medium               High              -0.2209461   -0.4520056    0.0101134
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.4629960   -0.5197831   -0.4062089
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.3255662   -0.3821712   -0.2689612
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.3815614   -0.4557588   -0.3073640
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.2587916   -0.3372196   -0.1803635
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.1786759   -0.3708510    0.0134991
24 months   LCNI-5           MALAWI                         Medium               High              -0.1923792   -0.3914150    0.0066565
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.2438069   -0.5679589    0.0803450
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1089323   -0.4426812    0.2248166
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4872337   -0.9286629   -0.0458046
24 months   MAL-ED           BRAZIL                         Medium               High              -0.1967154   -0.5743888    0.1809580
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.2836245   -0.5967584    0.0295094
24 months   MAL-ED           INDIA                          Medium               High              -0.3036970   -0.6133593    0.0059654
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3108837   -0.6469753    0.0252079
24 months   MAL-ED           NEPAL                          Medium               High              -0.1695383   -0.5089106    0.1698340
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.3750912   -0.6889164   -0.0612661
24 months   MAL-ED           PERU                           Medium               High              -0.3564086   -0.6645391   -0.0482781
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2871572   -0.5990573    0.0247428
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.2913799   -0.6654114    0.0826516
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.7588218   -1.0064204   -0.5112231
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.5720555   -0.8224777   -0.3216333
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.4782041   -0.6794178   -0.2769905
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.5018455   -0.6939178   -0.3097732
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.3528712   -0.9232922    0.2175498
24 months   PROBIT           BELARUS                        Medium               High              -0.1636125   -0.3371776    0.0099526
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.5627089   -0.7593423   -0.3660755
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.4023476   -0.5987497   -0.2059455
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.3596180   -0.5056857   -0.2135504
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.2896438   -0.4221918   -0.1570959


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.0724702   -0.2725980    0.1276577
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0086470   -0.1431013    0.1603954
Birth       COHORTS          INDIA                          High                 NA                -0.3276158   -0.4063714   -0.2488602
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.1213246   -0.1704250   -0.0722243
Birth       EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.1630430   -0.3791362    0.0530501
Birth       IRC              INDIA                          High                 NA                 0.0178880   -0.2243276    0.2601036
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.1590727   -0.1841918   -0.1339537
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0794825   -0.1528469   -0.0061181
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.1057626   -0.2966634    0.0851381
Birth       MAL-ED           BRAZIL                         High                 NA                 0.0045556   -0.3519272    0.3610383
Birth       MAL-ED           INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       MAL-ED           NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       MAL-ED           PERU                           High                 NA                 0.0495632   -0.1419526    0.2410791
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.2177073   -0.4924209    0.0570063
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.1051962   -0.2510601    0.0406677
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.1248792   -0.2259235   -0.0238348
Birth       PROBIT           BELARUS                        High                 NA                -0.0690251   -0.1390664    0.0010161
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0390786   -0.1485743    0.0704170
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.1605750   -0.2887673   -0.0323826
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0492727   -0.0681398   -0.0304056
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.1355633   -0.2993206    0.0281940
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0139037   -0.1481526    0.1203452
6 months    COHORTS          INDIA                          High                 NA                -0.6085388   -0.6829736   -0.5341039
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.2071010   -0.2602500   -0.1539520
6 months    EE               PAKISTAN                       High                 NA                -0.3083318   -0.7591711    0.1425074
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.2983861   -0.5112702   -0.0855020
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0350864   -0.1696804    0.0995076
6 months    IRC              INDIA                          High                 NA                -0.0853683   -0.2764190    0.1056824
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.2091487   -0.2336782   -0.1846193
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.1886834   -0.2338326   -0.1435341
6 months    LCNI-5           MALAWI                         High                 NA                -0.1841220   -0.2745399   -0.0937041
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2187761   -0.3810488   -0.0565034
6 months    MAL-ED           BRAZIL                         High                 NA                -0.0146838   -0.2118804    0.1825129
6 months    MAL-ED           INDIA                          High                 NA                -0.0259968   -0.2100674    0.1580737
6 months    MAL-ED           NEPAL                          High                 NA                -0.1799838   -0.3830759    0.0231084
6 months    MAL-ED           PERU                           High                 NA                 0.0332704   -0.1298271    0.1963678
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0967250   -0.3001597    0.1067097
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.3203928   -0.4559404   -0.1848452
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.1910533   -0.2907232   -0.0913834
6 months    PROBIT           BELARUS                        High                 NA                -0.1506678   -0.2118530   -0.0894826
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1208462   -0.2209799   -0.0207125
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.4274253   -0.5207349   -0.3341156
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2786842   -0.6185159    0.0611474
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0890661   -0.1766419   -0.0014904
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0679134   -0.0913729   -0.0444539
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0934987   -0.2113776    0.0243802
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0604422   -0.0706787    0.1915630
24 months   COHORTS          INDIA                          High                 NA                -0.9019952   -0.9796860   -0.8243045
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.3960511   -0.4540025   -0.3380997
24 months   EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.4432174   -0.7034093   -0.1830255
24 months   IRC              INDIA                          High                 NA                -0.1557668   -0.2999908   -0.0115427
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.2629177   -0.2959519   -0.2298834
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.2059892   -0.2477746   -0.1642038
24 months   LCNI-5           MALAWI                         High                 NA                -0.1141469   -0.2151680   -0.0131257
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1146980   -0.2972120    0.0678160
24 months   MAL-ED           BRAZIL                         High                 NA                -0.1967476   -0.4130394    0.0195441
24 months   MAL-ED           INDIA                          High                 NA                -0.2128008   -0.4096083   -0.0159933
24 months   MAL-ED           NEPAL                          High                 NA                -0.1917195   -0.4329148    0.0494759
24 months   MAL-ED           PERU                           High                 NA                -0.2581806   -0.4575842   -0.0587771
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.2072237   -0.4180120    0.0035645
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.4653143   -0.6223360   -0.3082926
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.3086468   -0.4157598   -0.2015338
24 months   PROBIT           BELARUS                        High                 NA                -0.2026827   -0.4111140    0.0057486
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.3107057   -0.4223915   -0.1990199
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1520405   -0.2061229   -0.0979580
