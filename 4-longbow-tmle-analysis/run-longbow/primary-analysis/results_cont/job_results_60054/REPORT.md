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

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a5721b90-0e2f-4dba-ba1c-c363b84fd191/14c3648d-ea81-4812-b8e7-2804535145c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a5721b90-0e2f-4dba-ba1c-c363b84fd191/14c3648d-ea81-4812-b8e7-2804535145c0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a5721b90-0e2f-4dba-ba1c-c363b84fd191/14c3648d-ea81-4812-b8e7-2804535145c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.8800467   -1.1380315   -0.6220619
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.8969578   -1.4543171   -0.3395985
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1310582   -1.6656875   -0.5964290
Birth       COHORTS          GUATEMALA                      High                 NA                 0.1674200   -0.0784000    0.4132400
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1726401    0.0481620    0.2971181
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1924120    0.0221703    0.3626536
Birth       COHORTS          INDIA                          High                 NA                -0.5399037   -0.6379360   -0.4418713
Birth       COHORTS          INDIA                          Low                  NA                -0.6948242   -0.7620997   -0.6275487
Birth       COHORTS          INDIA                          Medium               NA                -0.6642711   -0.7132902   -0.6152519
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2202435   -0.2934818   -0.1470052
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.2979315   -0.3779695   -0.2178934
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2672628   -0.3521190   -0.1824066
Birth       EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.1052338   -1.3386040   -0.8718637
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1106066   -1.2117915   -1.0094216
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0424722   -1.2589462   -0.8259982
Birth       IRC              INDIA                          High                 NA                -0.3513349   -0.6061064   -0.0965634
Birth       IRC              INDIA                          Low                  NA                -0.3318089   -0.5701155   -0.0935022
Birth       IRC              INDIA                          Medium               NA                -0.2557649   -0.5231845    0.0116546
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5864387   -1.6248963   -1.5479810
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.6380819   -1.6712914   -1.6048724
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.6120568   -1.6508160   -1.5732975
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4818425   -1.5872532   -1.3764318
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.5018066   -1.6227699   -1.3808433
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5257378   -1.6353314   -1.4161443
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.0128892   -1.2468549   -0.7789236
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1375153   -1.4103557   -0.8646750
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0871134   -1.3806014   -0.7936254
Birth       MAL-ED           BRAZIL                         High                 NA                -0.9324688   -1.3171303   -0.5478073
Birth       MAL-ED           BRAZIL                         Low                  NA                -1.1193042   -1.6222370   -0.6163714
Birth       MAL-ED           BRAZIL                         Medium               NA                -0.8025228   -1.3150427   -0.2900029
Birth       MAL-ED           INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       MAL-ED           INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       MAL-ED           INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       MAL-ED           NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       MAL-ED           NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       MAL-ED           NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       MAL-ED           PERU                           High                 NA                -0.9219189   -1.1099184   -0.7339193
Birth       MAL-ED           PERU                           Low                  NA                -0.8686632   -1.0445829   -0.6927434
Birth       MAL-ED           PERU                           Medium               NA                -0.8695249   -1.0415385   -0.6975113
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.3289691   -0.6239580   -0.0339803
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.7545881   -1.0538779   -0.4552983
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.4260215   -0.8448825   -0.0071606
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770160   -0.6572697
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851562   -1.5881883   -0.9821242
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.8928421   -1.0422339   -0.7434503
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -0.9704632   -1.0935033   -0.8474230
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -0.9417656   -1.0775117   -0.8060195
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8711217   -1.0074659   -0.7347774
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.9263540   -1.0848066   -0.7679014
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9336284   -1.0632166   -0.8040401
Birth       PROBIT           BELARUS                        High                 NA                 1.3426217    1.1567927    1.5284507
Birth       PROBIT           BELARUS                        Low                  NA                 1.3113022    1.1290493    1.4935552
Birth       PROBIT           BELARUS                        Medium               NA                 1.3255403    1.1590060    1.4920747
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9235128   -1.0377337   -0.8092919
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.8886582   -1.0124878   -0.7648285
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.9135375   -1.0306086   -0.7964663
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4271753   -1.5439499   -1.3104006
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.5082778   -1.6199626   -1.3965930
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4048813   -1.5364924   -1.2732701
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4868765   -0.5189837   -0.4547692
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5271180   -0.5797949   -0.4744411
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4942300   -0.5379314   -0.4505287
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -1.3167248   -1.5309667   -1.1024829
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6331478   -1.8805858   -1.3857098
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3790698   -1.6588595   -1.0992801
6 months    COHORTS          GUATEMALA                      High                 NA                -1.8330256   -1.9939651   -1.6720861
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.8722483   -1.9755415   -1.7689551
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.6854209   -1.8191748   -1.5516670
6 months    COHORTS          INDIA                          High                 NA                -0.6198680   -0.7406833   -0.4990526
6 months    COHORTS          INDIA                          Low                  NA                -1.3272634   -1.4204703   -1.2340565
6 months    COHORTS          INDIA                          Medium               NA                -0.9761826   -1.0231434   -0.9292217
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0405765   -1.1160192   -0.9651338
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.2617549   -1.3558288   -1.1676810
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1816872   -1.2772397   -1.0861347
6 months    EE               PAKISTAN                       High                 NA                -1.9767402   -2.5355365   -1.4179439
6 months    EE               PAKISTAN                       Low                  NA                -2.1322886   -2.2624761   -2.0021011
6 months    EE               PAKISTAN                       Medium               NA                -1.7175489   -2.0859812   -1.3491167
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2746279   -1.4994632   -1.0497925
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4290317   -1.5249685   -1.3330950
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.2144073   -1.4979381   -0.9308766
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -1.5352241   -1.7098262   -1.3606220
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                -1.6426244   -1.8707249   -1.4145240
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -1.5340226   -1.7475407   -1.3205046
6 months    IRC              INDIA                          High                 NA                -1.1453237   -1.3638917   -0.9267557
6 months    IRC              INDIA                          Low                  NA                -1.2456645   -1.4692618   -1.0220672
6 months    IRC              INDIA                          Medium               NA                -1.2926037   -1.5141058   -1.0711017
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.2836395   -1.3271221   -1.2401570
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.4061637   -1.4544624   -1.3578651
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3519823   -1.4021063   -1.3018584
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2552569   -1.3237858   -1.1867280
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4084314   -1.4977249   -1.3191380
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3919102   -1.4594895   -1.3243309
6 months    LCNI-5           MALAWI                         High                 NA                -1.4973310   -1.6099398   -1.3847222
6 months    LCNI-5           MALAWI                         Low                  NA                -1.7447664   -1.8769327   -1.6126002
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6980598   -1.8204990   -1.5756205
6 months    MAL-ED           BANGLADESH                     High                 NA                -1.0088201   -1.2274394   -0.7902008
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.2672901   -1.5360320   -0.9985482
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.3176700   -1.5319466   -1.1033933
6 months    MAL-ED           BRAZIL                         High                 NA                 0.0745855   -0.1674424    0.3166133
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.0601063   -0.2383681    0.3585807
6 months    MAL-ED           BRAZIL                         Medium               NA                 0.0445351   -0.1818739    0.2709442
6 months    MAL-ED           INDIA                          High                 NA                -1.1567757   -1.3765095   -0.9370419
6 months    MAL-ED           INDIA                          Low                  NA                -1.1847304   -1.3984861   -0.9709746
6 months    MAL-ED           INDIA                          Medium               NA                -1.1485614   -1.3504644   -0.9466585
6 months    MAL-ED           NEPAL                          High                 NA                -0.3409830   -0.5844552   -0.0975107
6 months    MAL-ED           NEPAL                          Low                  NA                -0.6100858   -0.7829037   -0.4372678
6 months    MAL-ED           NEPAL                          Medium               NA                -0.5079829   -0.6903053   -0.3256606
6 months    MAL-ED           PERU                           High                 NA                -1.3526631   -1.5457323   -1.1595938
6 months    MAL-ED           PERU                           Low                  NA                -1.3472740   -1.5347448   -1.1598031
6 months    MAL-ED           PERU                           Medium               NA                -1.2880543   -1.4701384   -1.1059702
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.9636895   -1.2047360   -0.7226430
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -1.1359323   -1.3291923   -0.9426722
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0066884   -1.2520598   -0.7613170
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    NIH-Birth        BANGLADESH                     High                 NA                -1.1706647   -1.3177516   -1.0235777
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -1.6103281   -1.7604349   -1.4602212
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -1.4625923   -1.6131504   -1.3120343
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1163338   -1.2530796   -0.9795880
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2735819   -1.4093349   -1.1378290
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.2828946   -1.4281955   -1.1375937
6 months    PROBIT           BELARUS                        High                 NA                 0.1789263    0.0887726    0.2690800
6 months    PROBIT           BELARUS                        Low                  NA                 0.0211970   -0.0755640    0.1179579
6 months    PROBIT           BELARUS                        Medium               NA                 0.1480048    0.0470889    0.2489207
6 months    PROVIDE          BANGLADESH                     High                 NA                -1.0738916   -1.1944341   -0.9533490
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.1040206   -1.2711666   -0.9368746
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.1061736   -1.2782558   -0.9340914
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.0896274   -1.2029206   -0.9763341
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.5677508   -1.6785950   -1.4569066
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3945734   -1.5297406   -1.2594062
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.6929906   -2.1484328   -1.2375485
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9418021   -2.0732334   -1.8103708
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.8708532   -2.1249217   -1.6167847
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4882324   -0.5960129   -0.3804519
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5093143   -0.7672922   -0.2513364
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5559291   -0.6123067   -0.4995515
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8378378   -0.8744365   -0.8012390
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8822588   -0.9449998   -0.8195178
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9196330   -0.9733857   -0.8658803
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -2.4880969   -2.6501337   -2.3260600
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -2.6975371   -2.8764680   -2.5186063
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -2.4994257   -2.6742396   -2.3246118
24 months   COHORTS          GUATEMALA                      High                 NA                -3.0919816   -3.2631509   -2.9208124
24 months   COHORTS          GUATEMALA                      Low                  NA                -3.0729955   -3.1718918   -2.9740992
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.8247255   -2.9508442   -2.6986068
24 months   COHORTS          INDIA                          High                 NA                -1.4533989   -1.5956261   -1.3111716
24 months   COHORTS          INDIA                          Low                  NA                -2.6907058   -2.7957522   -2.5856594
24 months   COHORTS          INDIA                          Medium               NA                -2.1094537   -2.1640493   -2.0548581
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.2309215   -2.3307056   -2.1311374
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.5815855   -2.6882088   -2.4749622
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.5264026   -2.6202559   -2.4325493
24 months   EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.6823104   -1.9346917   -1.4299290
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.9435123   -2.0480446   -1.8389800
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.8540942   -2.1414476   -1.5667408
24 months   IRC              INDIA                          High                 NA                -1.6735271   -1.8481852   -1.4988690
24 months   IRC              INDIA                          Low                  NA                -1.9102982   -2.0677375   -1.7528589
24 months   IRC              INDIA                          Medium               NA                -1.8966152   -2.0477876   -1.7454429
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9414159   -1.9957311   -1.8871007
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.1830217   -2.2355218   -2.1305215
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -2.0227244   -2.0811717   -1.9642772
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.7218764   -1.7885090   -1.6552437
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8558134   -1.9324801   -1.7791466
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.7953723   -1.8674665   -1.7232782
24 months   LCNI-5           MALAWI                         High                 NA                -1.8075493   -1.9370761   -1.6780224
24 months   LCNI-5           MALAWI                         Low                  NA                -1.9366285   -2.0890075   -1.7842495
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9555508   -2.1188140   -1.7922877
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.8096171   -2.0687967   -1.5504376
24 months   MAL-ED           BANGLADESH                     Low                  NA                -2.0044753   -2.2046996   -1.8042510
24 months   MAL-ED           BANGLADESH                     Medium               NA                -1.9275186   -2.1864235   -1.6686137
24 months   MAL-ED           BRAZIL                         High                 NA                 0.2370515   -0.0269858    0.5010889
24 months   MAL-ED           BRAZIL                         Low                  NA                -0.2074261   -0.5724830    0.1576309
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.0537858   -0.2236665    0.3312381
24 months   MAL-ED           INDIA                          High                 NA                -1.6516729   -1.8737663   -1.4295794
24 months   MAL-ED           INDIA                          Low                  NA                -1.9141304   -2.1333462   -1.6949145
24 months   MAL-ED           INDIA                          Medium               NA                -1.9263173   -2.1432439   -1.7093907
24 months   MAL-ED           NEPAL                          High                 NA                -1.0151782   -1.2714151   -0.7589414
24 months   MAL-ED           NEPAL                          Low                  NA                -1.3991992   -1.5848873   -1.2135112
24 months   MAL-ED           NEPAL                          Medium               NA                -1.2344980   -1.4282058   -1.0407901
24 months   MAL-ED           PERU                           High                 NA                -1.5333529   -1.7829329   -1.2837729
24 months   MAL-ED           PERU                           Low                  NA                -1.8570939   -2.0469635   -1.6672244
24 months   MAL-ED           PERU                           Medium               NA                -1.8370940   -2.0266385   -1.6475495
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4206110   -1.6715109   -1.1697110
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.7138412   -1.9064747   -1.5212076
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.7516455   -2.0379789   -1.4653121
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   NIH-Birth        BANGLADESH                     High                 NA                -1.8475754   -2.0244956   -1.6706552
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -2.5344061   -2.6908076   -2.3780047
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -2.2904520   -2.4638898   -2.1170143
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.2166978   -1.3594290   -1.0739666
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.5574219   -1.7298018   -1.3850420
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.6464217   -1.7990729   -1.4937706
24 months   PROBIT           BELARUS                        High                 NA                -0.0100859   -0.2122904    0.1921187
24 months   PROBIT           BELARUS                        Low                  NA                -0.2457762   -0.6230390    0.1314865
24 months   PROBIT           BELARUS                        Medium               NA                -0.0983242   -0.3840937    0.1874453
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.4494426   -1.5855381   -1.3133471
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.7581928   -1.9096583   -1.6067273
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6461320   -1.8230499   -1.4692140
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.4542566   -1.5319817   -1.3765315
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7394456   -1.8590631   -1.6198281
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7261788   -1.8467648   -1.6055927


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
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.0169112   -0.6319764    0.5981540
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.2510116   -0.8465602    0.3445371
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.0052201   -0.2709632    0.2814033
Birth       COHORTS          GUATEMALA                      Medium               High               0.0249919   -0.2743451    0.3243290
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1549205   -0.2725113   -0.0373297
Birth       COHORTS          INDIA                          Medium               High              -0.1243674   -0.2325369   -0.0161979
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.0776880   -0.1842835    0.0289076
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0470193   -0.1568777    0.0628391
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              -0.0053727   -0.2579782    0.2472327
Birth       GMS-Nepal        NEPAL                          Medium               High               0.0627617   -0.2540722    0.3795956
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High               0.0195260   -0.3110411    0.3500932
Birth       IRC              INDIA                          Medium               High               0.0955699   -0.2550131    0.4461530
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0516432   -0.0974736   -0.0058128
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0256181   -0.0765141    0.0252779
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0199641   -0.1803998    0.1404715
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0438953   -0.1995801    0.1117895
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.1246261   -0.4851637    0.2359115
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.0742242   -0.4516712    0.3032228
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High              -0.1868354   -0.8340907    0.4604200
Birth       MAL-ED           BRAZIL                         Medium               High               0.1299460   -0.5168583    0.7767504
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       MAL-ED           INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       MAL-ED           NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.0532557   -0.1820045    0.2885158
Birth       MAL-ED           PERU                           Medium               High               0.0523940   -0.1806338    0.2854217
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.4256190   -0.8478996   -0.0033383
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.0970524   -0.6142622    0.4201574
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0776210   -0.2553453    0.1001032
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.0489234   -0.2341934    0.1363465
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0552323   -0.2605325    0.1500679
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.0625067   -0.2468817    0.1218683
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0313195   -0.1525166    0.0898777
Birth       PROBIT           BELARUS                        Medium               High              -0.0170814   -0.1006023    0.0664396
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.0348546   -0.1234459    0.1931552
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0099753   -0.1422121    0.1621627
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0811025   -0.2249849    0.0627798
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0222940   -0.1416910    0.1862790
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0402415   -0.1010547    0.0205716
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0073535   -0.0605255    0.0458184
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.3164230   -0.6380009    0.0051549
6 months    CMC-V-BCS-2002   INDIA                          Medium               High              -0.0623450   -0.4096467    0.2849567
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0392227   -0.2305182    0.1520727
6 months    COHORTS          GUATEMALA                      Medium               High               0.1476047   -0.0616855    0.3568949
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.7073954   -0.8608323   -0.5539585
6 months    COHORTS          INDIA                          Medium               High              -0.3563146   -0.4863874   -0.2262418
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.2211784   -0.3420770   -0.1002797
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.1411107   -0.2630046   -0.0192168
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.1555484   -0.7288991    0.4178023
6 months    EE               PAKISTAN                       Medium               High               0.2591913   -0.4110071    0.9293897
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.1544039   -0.3993822    0.0905745
6 months    GMS-Nepal        NEPAL                          Medium               High               0.0602205   -0.3016347    0.4220757
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.1074003   -0.3949031    0.1801025
6 months    Guatemala BSC    GUATEMALA                      Medium               High               0.0012015   -0.2749463    0.2773492
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.1003408   -0.4086774    0.2079958
6 months    IRC              INDIA                          Medium               High              -0.1472800   -0.4543233    0.1597632
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.1225242   -0.1849093   -0.0601391
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0683428   -0.1310702   -0.0056154
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1531745   -0.2614884   -0.0448607
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1366533   -0.2327258   -0.0405807
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.2474354   -0.4201524   -0.0747184
6 months    LCNI-5           MALAWI                         Medium               High              -0.2007287   -0.3656955   -0.0357620
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2584700   -0.6061824    0.0892425
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.3088499   -0.6154968   -0.0022029
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.0144792   -0.3980523    0.3690939
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0300504   -0.3605847    0.3004840
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High              -0.0279547   -0.3358903    0.2799809
6 months    MAL-ED           INDIA                          Medium               High               0.0082143   -0.2905387    0.3069673
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.2691028   -0.5671636    0.0289580
6 months    MAL-ED           NEPAL                          Medium               High              -0.1670000   -0.4729406    0.1389407
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.0053891   -0.2642898    0.2750680
6 months    MAL-ED           PERU                           Medium               High               0.0646088   -0.2011860    0.3304036
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.1722428   -0.4817095    0.1372240
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0429989   -0.3875830    0.3015852
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.4396634   -0.6479209   -0.2314060
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.2919277   -0.4989444   -0.0849109
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1572482   -0.3502878    0.0357914
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1665608   -0.3667160    0.0335944
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1577294   -0.2425437   -0.0729151
6 months    PROBIT           BELARUS                        Medium               High              -0.0309216   -0.1045550    0.0427119
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.0301290   -0.2362832    0.1760253
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0322820   -0.2424517    0.1778876
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.4781235   -0.6588034   -0.2974435
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.3049461   -0.4141748   -0.1957173
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2488115   -0.7232199    0.2255970
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1778626   -0.6982857    0.3425606
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0210819   -0.2992383    0.2570746
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0676967   -0.1864207    0.0510272
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0444211   -0.1153164    0.0264743
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0817952   -0.1449685   -0.0186220
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.2094403   -0.4514381    0.0325576
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0113288   -0.2487755    0.2261179
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.0189861   -0.1781687    0.2161409
24 months   COHORTS          GUATEMALA                      Medium               High               0.2672561    0.0550424    0.4794699
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -1.2373069   -1.4155494   -1.0590645
24 months   COHORTS          INDIA                          Medium               High              -0.6560549   -0.8093389   -0.5027708
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.3506640   -0.4973860   -0.2039419
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.2954811   -0.4326343   -0.1583279
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2612020   -0.5333865    0.0109825
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.1717838   -0.5527171    0.2091494
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.2367711   -0.4737711    0.0002288
24 months   IRC              INDIA                          Medium               High              -0.2230882   -0.4518486    0.0056723
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.2416058   -0.3129529   -0.1702587
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0813085   -0.1548219   -0.0077951
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.1339370   -0.2306117   -0.0372623
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0734960   -0.1691798    0.0221879
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.1290793   -0.3291282    0.0709697
24 months   LCNI-5           MALAWI                         Medium               High              -0.1480016   -0.3564037    0.0604006
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.1948582   -0.5188911    0.1291748
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1179015   -0.4830156    0.2472126
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4444776   -0.8993813    0.0104261
24 months   MAL-ED           BRAZIL                         Medium               High              -0.1832657   -0.5683543    0.2018229
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.2624575   -0.5734800    0.0485650
24 months   MAL-ED           INDIA                          Medium               High              -0.2746444   -0.5832997    0.0340108
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3840210   -0.7004196   -0.0676224
24 months   MAL-ED           NEPAL                          Medium               High              -0.2193197   -0.5418705    0.1032310
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.3237410   -0.6350519   -0.0124301
24 months   MAL-ED           PERU                           Medium               High              -0.3037411   -0.6144601    0.0069779
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2932302   -0.6097448    0.0232843
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.3310346   -0.7113416    0.0492724
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.6868307   -0.9211451   -0.4525163
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.4428766   -0.6881371   -0.1976160
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3407241   -0.5643072   -0.1171410
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.4297240   -0.6383269   -0.2211211
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2356903   -0.5604938    0.0891131
24 months   PROBIT           BELARUS                        Medium               High              -0.0882383   -0.3081842    0.1317075
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.3087502   -0.5120046   -0.1054958
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.1966894   -0.4190080    0.0256293
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2851889   -0.4273048   -0.1430731
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.2719221   -0.4148274   -0.1290168


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.0811490   -0.2864347    0.1241368
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0385483   -0.2713489    0.1942523
Birth       COHORTS          INDIA                          High                 NA                -0.1289805   -0.2240735   -0.0338876
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0288057   -0.0915978    0.0339864
Birth       EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.0174849   -0.2065976    0.2415675
Birth       IRC              INDIA                          High                 NA                 0.0432936   -0.1671698    0.2537571
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0032715   -0.0371028    0.0305598
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0414127   -0.1344373    0.0516118
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.0755600   -0.2735365    0.1224165
Birth       MAL-ED           BRAZIL                         High                 NA                 0.2564688   -0.1474072    0.6603449
Birth       MAL-ED           INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       MAL-ED           NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       MAL-ED           PERU                           High                 NA                 0.0391292   -0.1070526    0.1853109
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.3027382   -0.5804215   -0.0250549
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0381776   -0.1545940    0.0782388
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0383729   -0.1521096    0.0753639
Birth       PROBIT           BELARUS                        High                 NA                -0.0311800   -0.1136576    0.0512977
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0384107   -0.0536469    0.1304684
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0042465   -0.1286424    0.1201495
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0137948   -0.0384979    0.0109083
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.1067260   -0.2685679    0.0551160
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0226895   -0.1276952    0.1730741
6 months    COHORTS          INDIA                          High                 NA                -0.3984398   -0.5175712   -0.2793084
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0999959   -0.1670243   -0.0329675
6 months    EE               PAKISTAN                       High                 NA                -0.1014805   -0.6547803    0.4518193
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0762337   -0.2935985    0.1411311
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0272127   -0.1628736    0.1084482
6 months    IRC              INDIA                          High                 NA                -0.0890825   -0.2756280    0.0974630
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0294943   -0.0666359    0.0076472
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0896663   -0.1489901   -0.0303425
6 months    LCNI-5           MALAWI                         High                 NA                -0.1458178   -0.2370337   -0.0546019
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.1844537   -0.3738713    0.0049639
6 months    MAL-ED           BRAZIL                         High                 NA                -0.0251143   -0.2248678    0.1746392
6 months    MAL-ED           INDIA                          High                 NA                -0.0037692   -0.1974024    0.1898641
6 months    MAL-ED           NEPAL                          High                 NA                -0.2071769   -0.4252735    0.0109196
6 months    MAL-ED           PERU                           High                 NA                 0.0249149   -0.1397646    0.1895944
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0996307   -0.3072227    0.1079612
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.2367174   -0.3635271   -0.1099077
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0823446   -0.2003512    0.0356621
6 months    PROBIT           BELARUS                        High                 NA                -0.0809189   -0.1398763   -0.0219616
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0177999   -0.1236726    0.0880728
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.3122289   -0.4009204   -0.2235375
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2056936   -0.6436382    0.2322510
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0557784   -0.1481196    0.0365628
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0310178   -0.0575864   -0.0044493
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0707711   -0.1882418    0.0466997
24 months   COHORTS          GUATEMALA                      High                 NA                 0.1034764   -0.0539860    0.2609388
24 months   COHORTS          INDIA                          High                 NA                -0.7207674   -0.8627387   -0.5787961
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.1831930   -0.2723074   -0.0940786
24 months   EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.2064525   -0.4472981    0.0343930
24 months   IRC              INDIA                          High                 NA                -0.1252504   -0.2694600    0.0189592
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0720211   -0.1194787   -0.0245634
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0596022   -0.1175326   -0.0016719
24 months   LCNI-5           MALAWI                         High                 NA                -0.0719612   -0.1788723    0.0349499
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1000028   -0.2968100    0.0968044
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2289067   -0.4491852   -0.0086282
24 months   MAL-ED           INDIA                          High                 NA                -0.1757643   -0.3705888    0.0190602
24 months   MAL-ED           NEPAL                          High                 NA                -0.2536246   -0.4758126   -0.0314366
24 months   MAL-ED           PERU                           High                 NA                -0.2211554   -0.4225915   -0.0197194
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.2244486   -0.4408637   -0.0080335
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.3714824   -0.5187938   -0.2241711
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.2245668   -0.3436643   -0.1054693
24 months   PROBIT           BELARUS                        High                 NA                -0.1342033   -0.3384315    0.0700250
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.1529795   -0.2709322   -0.0350269
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1516586   -0.2070083   -0.0963088
