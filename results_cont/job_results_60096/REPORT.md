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

**Outcome Variable:** whz

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
Birth       CMC-V-BCS-2002   INDIA                          High            49      86
Birth       CMC-V-BCS-2002   INDIA                          Low             15      86
Birth       CMC-V-BCS-2002   INDIA                          Medium          22      86
Birth       COHORTS          GUATEMALA                      High           157     748
Birth       COHORTS          GUATEMALA                      Low            344     748
Birth       COHORTS          GUATEMALA                      Medium         247     748
Birth       COHORTS          INDIA                          High           656    4879
Birth       COHORTS          INDIA                          Low           1602    4879
Birth       COHORTS          INDIA                          Medium        2621    4879
Birth       COHORTS          PHILIPPINES                    High          1128    2899
Birth       COHORTS          PHILIPPINES                    Low            838    2899
Birth       COHORTS          PHILIPPINES                    Medium         933    2899
Birth       EE               PAKISTAN                       High             5     177
Birth       EE               PAKISTAN                       Low            156     177
Birth       EE               PAKISTAN                       Medium          16     177
Birth       GMS-Nepal        NEPAL                          High            81     639
Birth       GMS-Nepal        NEPAL                          Low            444     639
Birth       GMS-Nepal        NEPAL                          Medium         114     639
Birth       IRC              INDIA                          High           101     343
Birth       IRC              INDIA                          Low            126     343
Birth       IRC              INDIA                          Medium         116     343
Birth       JiVitA-3         BANGLADESH                     High          5631   17988
Birth       JiVitA-3         BANGLADESH                     Low           6897   17988
Birth       JiVitA-3         BANGLADESH                     Medium        5460   17988
Birth       JiVitA-4         BANGLADESH                     High           805    2391
Birth       JiVitA-4         BANGLADESH                     Low            829    2391
Birth       JiVitA-4         BANGLADESH                     Medium         757    2391
Birth       MAL-ED           BANGLADESH                     High            64     175
Birth       MAL-ED           BANGLADESH                     Low             60     175
Birth       MAL-ED           BANGLADESH                     Medium          51     175
Birth       MAL-ED           BRAZIL                         High            18      62
Birth       MAL-ED           BRAZIL                         Low             17      62
Birth       MAL-ED           BRAZIL                         Medium          27      62
Birth       MAL-ED           INDIA                          High             8      38
Birth       MAL-ED           INDIA                          Low             18      38
Birth       MAL-ED           INDIA                          Medium          12      38
Birth       MAL-ED           NEPAL                          High             5      24
Birth       MAL-ED           NEPAL                          Low             12      24
Birth       MAL-ED           NEPAL                          Medium           7      24
Birth       MAL-ED           PERU                           High            65     228
Birth       MAL-ED           PERU                           Low             83     228
Birth       MAL-ED           PERU                           Medium          80     228
Birth       MAL-ED           SOUTH AFRICA                   High            35     120
Birth       MAL-ED           SOUTH AFRICA                   Low             59     120
Birth       MAL-ED           SOUTH AFRICA                   Medium          26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             32      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          58      97
Birth       NIH-Birth        BANGLADESH                     High           163     575
Birth       NIH-Birth        BANGLADESH                     Low            210     575
Birth       NIH-Birth        BANGLADESH                     Medium         202     575
Birth       NIH-Crypto       BANGLADESH                     High           236     707
Birth       NIH-Crypto       BANGLADESH                     Low            226     707
Birth       NIH-Crypto       BANGLADESH                     Medium         245     707
Birth       PROBIT           BELARUS                        High          2240   13817
Birth       PROBIT           BELARUS                        Low           4940   13817
Birth       PROBIT           BELARUS                        Medium        6637   13817
Birth       PROVIDE          BANGLADESH                     High           169     532
Birth       PROVIDE          BANGLADESH                     Low            164     532
Birth       PROVIDE          BANGLADESH                     Medium         199     532
Birth       SAS-CompFeed     INDIA                          High           233    1103
Birth       SAS-CompFeed     INDIA                          Low            500    1103
Birth       SAS-CompFeed     INDIA                          Medium         370    1103
Birth       ZVITAMBO         ZIMBABWE                       High          7015   12897
Birth       ZVITAMBO         ZIMBABWE                       Low           2697   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium        3185   12897
6 months    CMC-V-BCS-2002   INDIA                          High           157     368
6 months    CMC-V-BCS-2002   INDIA                          Low            104     368
6 months    CMC-V-BCS-2002   INDIA                          Medium         107     368
6 months    COHORTS          GUATEMALA                      High           185     953
6 months    COHORTS          GUATEMALA                      Low            449     953
6 months    COHORTS          GUATEMALA                      Medium         319     953
6 months    COHORTS          INDIA                          High           737    5407
6 months    COHORTS          INDIA                          Low           1774    5407
6 months    COHORTS          INDIA                          Medium        2896    5407
6 months    COHORTS          PHILIPPINES                    High          1015    2706
6 months    COHORTS          PHILIPPINES                    Low            824    2706
6 months    COHORTS          PHILIPPINES                    Medium         867    2706
6 months    EE               PAKISTAN                       High            15     372
6 months    EE               PAKISTAN                       Low            324     372
6 months    EE               PAKISTAN                       Medium          33     372
6 months    GMS-Nepal        NEPAL                          High            68     561
6 months    GMS-Nepal        NEPAL                          Low            399     561
6 months    GMS-Nepal        NEPAL                          Medium          94     561
6 months    Guatemala BSC    GUATEMALA                      High           117     277
6 months    Guatemala BSC    GUATEMALA                      Low             73     277
6 months    Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    IRC              INDIA                          High           124     408
6 months    IRC              INDIA                          Low            145     408
6 months    IRC              INDIA                          Medium         139     408
6 months    JiVitA-3         BANGLADESH                     High          5909   16767
6 months    JiVitA-3         BANGLADESH                     Low           5612   16767
6 months    JiVitA-3         BANGLADESH                     Medium        5246   16767
6 months    JiVitA-4         BANGLADESH                     High          1717    4820
6 months    JiVitA-4         BANGLADESH                     Low           1584    4820
6 months    JiVitA-4         BANGLADESH                     Medium        1519    4820
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
6 months    PROBIT           BELARUS                        High          2657   15757
6 months    PROBIT           BELARUS                        Low           5641   15757
6 months    PROBIT           BELARUS                        Medium        7459   15757
6 months    PROVIDE          BANGLADESH                     High           209     603
6 months    PROVIDE          BANGLADESH                     Low            187     603
6 months    PROVIDE          BANGLADESH                     Medium         207     603
6 months    SAS-CompFeed     INDIA                          High           289    1334
6 months    SAS-CompFeed     INDIA                          Low            596    1334
6 months    SAS-CompFeed     INDIA                          Medium         449    1334
6 months    SAS-FoodSuppl    INDIA                          High            35     380
6 months    SAS-FoodSuppl    INDIA                          Low            304     380
6 months    SAS-FoodSuppl    INDIA                          Medium          41     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020
6 months    ZVITAMBO         ZIMBABWE                       High          4604    8492
6 months    ZVITAMBO         ZIMBABWE                       Low           1766    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium        2122    8492
24 months   CMC-V-BCS-2002   INDIA                          High           158     372
24 months   CMC-V-BCS-2002   INDIA                          Low            105     372
24 months   CMC-V-BCS-2002   INDIA                          Medium         109     372
24 months   COHORTS          GUATEMALA                      High           209    1068
24 months   COHORTS          GUATEMALA                      Low            512    1068
24 months   COHORTS          GUATEMALA                      Medium         347    1068
24 months   COHORTS          INDIA                          High           601    4166
24 months   COHORTS          INDIA                          Low           1264    4166
24 months   COHORTS          INDIA                          Medium        2301    4166
24 months   COHORTS          PHILIPPINES                    High           911    2449
24 months   COHORTS          PHILIPPINES                    Low            748    2449
24 months   COHORTS          PHILIPPINES                    Medium         790    2449
24 months   EE               PAKISTAN                       High             6     166
24 months   EE               PAKISTAN                       Low            143     166
24 months   EE               PAKISTAN                       Medium          17     166
24 months   GMS-Nepal        NEPAL                          High            55     484
24 months   GMS-Nepal        NEPAL                          Low            344     484
24 months   GMS-Nepal        NEPAL                          Medium          85     484
24 months   IRC              INDIA                          High           124     409
24 months   IRC              INDIA                          Low            146     409
24 months   IRC              INDIA                          Medium         139     409
24 months   JiVitA-3         BANGLADESH                     High          2912    8592
24 months   JiVitA-3         BANGLADESH                     Low           2999    8592
24 months   JiVitA-3         BANGLADESH                     Medium        2681    8592
24 months   JiVitA-4         BANGLADESH                     High          1688    4724
24 months   JiVitA-4         BANGLADESH                     Low           1528    4724
24 months   JiVitA-4         BANGLADESH                     Medium        1508    4724
24 months   LCNI-5           MALAWI                         High           214     556
24 months   LCNI-5           MALAWI                         Low            172     556
24 months   LCNI-5           MALAWI                         Medium         170     556
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
24 months   NIH-Birth        BANGLADESH                     High           130     428
24 months   NIH-Birth        BANGLADESH                     Low            152     428
24 months   NIH-Birth        BANGLADESH                     Medium         146     428
24 months   NIH-Crypto       BANGLADESH                     High           191     514
24 months   NIH-Crypto       BANGLADESH                     Low            146     514
24 months   NIH-Crypto       BANGLADESH                     Medium         177     514
24 months   PROBIT           BELARUS                        High           654    3970
24 months   PROBIT           BELARUS                        Low           1381    3970
24 months   PROBIT           BELARUS                        Medium        1935    3970
24 months   PROVIDE          BANGLADESH                     High           201     579
24 months   PROVIDE          BANGLADESH                     Low            174     579
24 months   PROVIDE          BANGLADESH                     Medium         204     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ZVITAMBO         ZIMBABWE                       High           184     433
24 months   ZVITAMBO         ZIMBABWE                       Low            118     433
24 months   ZVITAMBO         ZIMBABWE                       Medium         131     433


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
![](/tmp/6c244a2b-39c1-43de-b5eb-337dbed92a3b/f9e59452-19a8-4d75-ace6-bc61df8ffa67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6c244a2b-39c1-43de-b5eb-337dbed92a3b/f9e59452-19a8-4d75-ace6-bc61df8ffa67/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6c244a2b-39c1-43de-b5eb-337dbed92a3b/f9e59452-19a8-4d75-ace6-bc61df8ffa67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.2876995   -0.6911898    0.1157909
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5806304   -1.3064586    0.1451979
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -0.8459187   -1.4877409   -0.2040965
Birth       COHORTS          GUATEMALA                      High                 NA                -1.0407198   -1.2938982   -0.7875414
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0628625   -1.2061904   -0.9195346
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.0263026   -1.2117847   -0.8408205
Birth       COHORTS          INDIA                          High                 NA                -0.8509822   -0.9496661   -0.7522984
Birth       COHORTS          INDIA                          Low                  NA                -0.9578838   -1.0280687   -0.8876989
Birth       COHORTS          INDIA                          Medium               NA                -0.9756957   -1.0221312   -0.9292602
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7657425   -0.8541783   -0.6773067
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.7445432   -0.8437621   -0.6453242
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.6902363   -0.7850755   -0.5953971
Birth       EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.3287333   -1.5361359   -1.1213308
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0951679   -1.2031851   -0.9871508
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.2360622   -1.4977758   -0.9743487
Birth       IRC              INDIA                          High                 NA                -0.8836736   -1.1796267   -0.5877206
Birth       IRC              INDIA                          Low                  NA                -1.0263292   -1.3026915   -0.7499669
Birth       IRC              INDIA                          Medium               NA                -1.1163842   -1.3843368   -0.8484317
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7951473   -0.8414925   -0.7488022
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.8089807   -0.8451803   -0.7727810
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7673697   -0.8027860   -0.7319534
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.6950309   -0.7999693   -0.5900924
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.7190465   -0.8226023   -0.6154907
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6790802   -0.7758382   -0.5823222
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.8113691   -1.0254533   -0.5972848
Birth       MAL-ED           BANGLADESH                     Low                  NA                -0.9460578   -1.2242552   -0.6678604
Birth       MAL-ED           BANGLADESH                     Medium               NA                -0.9760919   -1.3626400   -0.5895439
Birth       MAL-ED           BRAZIL                         High                 NA                 0.5853513   -0.0364644    1.2071670
Birth       MAL-ED           BRAZIL                         Low                  NA                 0.6827358    0.1319263    1.2335453
Birth       MAL-ED           BRAZIL                         Medium               NA                 0.0153325   -0.4332970    0.4639619
Birth       MAL-ED           INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       MAL-ED           INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       MAL-ED           INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       MAL-ED           NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       MAL-ED           NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       MAL-ED           NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       MAL-ED           PERU                           High                 NA                -0.1327145   -0.3283234    0.0628943
Birth       MAL-ED           PERU                           Low                  NA                 0.1304727   -0.0973184    0.3582638
Birth       MAL-ED           PERU                           Medium               NA                -0.2062344   -0.4389145    0.0264457
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.2016044   -0.5344529    0.1312441
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.1156902   -0.4447452    0.2133648
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.3799085   -0.8746752    0.1148582
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       NIH-Birth        BANGLADESH                     High                 NA                -1.2802740   -1.4739364   -1.0866116
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -1.2974591   -1.4485191   -1.1463990
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -1.4505509   -1.6184641   -1.2826376
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.3271369   -1.4691409   -1.1851329
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2595961   -1.4183767   -1.1008156
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.1789269   -1.3363316   -1.0215222
Birth       PROBIT           BELARUS                        High                 NA                -1.1391976   -1.3498769   -0.9285183
Birth       PROBIT           BELARUS                        Low                  NA                -1.1569390   -1.3984268   -0.9154513
Birth       PROBIT           BELARUS                        Medium               NA                -1.1629440   -1.3687488   -0.9571393
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.3195667   -1.4517921   -1.1873413
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.2029500   -1.3565203   -1.0493798
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.3283921   -1.4680049   -1.1887792
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6028291   -0.7854786   -0.4201796
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.6344974   -0.8581833   -0.4108114
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6681530   -0.9320727   -0.4042332
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5167928   -0.5549135   -0.4786721
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4724488   -0.5333046   -0.4115931
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5272931   -0.5792085   -0.4753776
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.4998615   -0.7289365   -0.2707866
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5196928   -0.7824053   -0.2569803
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4685253   -0.7717227   -0.1653279
6 months    COHORTS          GUATEMALA                      High                 NA                 0.1674053   -0.0619903    0.3968009
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.2526849    0.1463586    0.3590112
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.1945886    0.0540773    0.3350999
6 months    COHORTS          INDIA                          High                 NA                -0.4806007   -0.5886130   -0.3725883
6 months    COHORTS          INDIA                          Low                  NA                -0.8162842   -0.8899859   -0.7425825
6 months    COHORTS          INDIA                          Medium               NA                -0.6460007   -0.6921887   -0.5998126
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.3210209   -0.3965162   -0.2455256
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.3266601   -0.4197734   -0.2335468
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.2509199   -0.3325813   -0.1692585
6 months    EE               PAKISTAN                       High                 NA                -0.6968838   -1.0750069   -0.3187607
6 months    EE               PAKISTAN                       Low                  NA                -0.8012706   -0.9262075   -0.6763336
6 months    EE               PAKISTAN                       Medium               NA                -0.5373563   -0.8901483   -0.1845642
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0061334   -0.2668771    0.2546102
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6230386   -0.7323443   -0.5137328
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6454073   -1.0125063   -0.2783082
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.1062157   -0.2770495    0.0646180
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                 0.0951499   -0.1493042    0.3396041
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -0.1042242   -0.3119522    0.1035037
6 months    IRC              INDIA                          High                 NA                -0.4431516   -0.6864547   -0.1998484
6 months    IRC              INDIA                          Low                  NA                -0.5592872   -0.7752828   -0.3432917
6 months    IRC              INDIA                          Medium               NA                -0.7651357   -1.0092179   -0.5210536
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5627762   -0.6082257   -0.5173267
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6188600   -0.6577454   -0.5799747
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5842750   -0.6255919   -0.5429580
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3275519   -0.3973849   -0.2577189
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.5270642   -0.6000748   -0.4540537
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.3625425   -0.4351968   -0.2898882
6 months    LCNI-5           MALAWI                         High                 NA                 0.5777786    0.4535152    0.7020421
6 months    LCNI-5           MALAWI                         Low                  NA                 0.3587431    0.2353244    0.4821619
6 months    LCNI-5           MALAWI                         Medium               NA                 0.3692816    0.2296408    0.5089224
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0267389   -0.2465448    0.1930670
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.1940664   -0.4868861    0.0987533
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0063236   -0.2248634    0.2122163
6 months    MAL-ED           BRAZIL                         High                 NA                 1.0942354    0.8159823    1.3724886
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.6296830    0.3036970    0.9556690
6 months    MAL-ED           BRAZIL                         Medium               NA                 1.0351925    0.7750149    1.2953701
6 months    MAL-ED           INDIA                          High                 NA                -0.6678180   -0.8928582   -0.4427779
6 months    MAL-ED           INDIA                          Low                  NA                -0.6775759   -0.9259434   -0.4292085
6 months    MAL-ED           INDIA                          Medium               NA                -0.6262057   -0.8646788   -0.3877326
6 months    MAL-ED           NEPAL                          High                 NA                 0.5232065    0.2692733    0.7771397
6 months    MAL-ED           NEPAL                          Low                  NA                 0.0896121   -0.1043747    0.2835989
6 months    MAL-ED           NEPAL                          Medium               NA                 0.0076700   -0.2412166    0.2565567
6 months    MAL-ED           PERU                           High                 NA                 1.1366181    0.9199198    1.3533165
6 months    MAL-ED           PERU                           Low                  NA                 1.0191152    0.8063516    1.2318789
6 months    MAL-ED           PERU                           Medium               NA                 1.0248888    0.8261388    1.2236387
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.6563807    0.3939856    0.9187759
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3888066    0.1670256    0.6105876
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.6107663    0.2920893    0.9294433
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.3344052   -0.5236469   -0.1451636
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -0.5265816   -0.6648100   -0.3883531
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -0.4325752   -0.5839505   -0.2811998
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0815256   -0.0543325    0.2173836
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.1520781   -0.2996979   -0.0044583
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                 0.1752529    0.0169831    0.3335227
6 months    PROBIT           BELARUS                        High                 NA                 0.5816031    0.5219040    0.6413023
6 months    PROBIT           BELARUS                        Low                  NA                 0.5604690    0.4940294    0.6269085
6 months    PROBIT           BELARUS                        Medium               NA                 0.5751680    0.5071971    0.6431389
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1313849   -0.2988698    0.0360999
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.3662044   -0.5425946   -0.1898141
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1307094   -0.3075851    0.0461662
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.6764337   -0.7613981   -0.5914693
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.8032634   -0.9562022   -0.6503246
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.5564764   -0.7970560   -0.3158967
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.7603384   -1.0846354   -0.4360415
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.0483058   -1.1772661   -0.9193454
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.0400125   -1.4878396   -0.5921854
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0746645   -0.0313832    0.1807123
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1677342   -0.0812221    0.4166906
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0801794    0.0174301    0.1429286
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3654478    0.3266031    0.4042925
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1851734    0.1178187    0.2525281
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2560213    0.2000589    0.3119837
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.3941347   -0.5423113   -0.2459581
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7600442   -0.9518532   -0.5682352
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6008184   -0.8025982   -0.3990387
24 months   COHORTS          GUATEMALA                      High                 NA                -0.3071882   -0.4510074   -0.1633690
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.3090667   -0.3940898   -0.2240437
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.2644534   -0.3713955   -0.1575113
24 months   COHORTS          INDIA                          High                 NA                -0.2605058   -0.3699800   -0.1510316
24 months   COHORTS          INDIA                          Low                  NA                -0.9635241   -1.0496290   -0.8774192
24 months   COHORTS          INDIA                          Medium               NA                -0.5684907   -0.6180990   -0.5188823
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.5944759   -0.6738754   -0.5150764
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.7004127   -0.7784945   -0.6223310
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6130109   -0.6886586   -0.5373632
24 months   EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.8592138   -1.1565272   -0.5619004
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.1139724   -1.2157417   -1.0122031
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.2410960   -1.5272286   -0.9549634
24 months   IRC              INDIA                          High                 NA                -0.6505168   -0.8201180   -0.4809155
24 months   IRC              INDIA                          Low                  NA                -0.7175348   -0.8749633   -0.5601063
24 months   IRC              INDIA                          Medium               NA                -0.8534228   -0.9980224   -0.7088233
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.3115895   -1.3832228   -1.2399561
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2588107   -1.3065550   -1.2110664
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3176942   -1.3704709   -1.2649174
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2156490   -1.2758263   -1.1554716
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2642471   -1.3253233   -1.2031709
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2164541   -1.2835799   -1.1493284
24 months   LCNI-5           MALAWI                         High                 NA                 0.1927569    0.0506063    0.3349075
24 months   LCNI-5           MALAWI                         Low                  NA                -0.2735392   -0.4102056   -0.1368728
24 months   LCNI-5           MALAWI                         Medium               NA                -0.1188686   -0.2655316    0.0277943
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.5910737   -0.8247314   -0.3574160
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0217243   -1.2450589   -0.7983896
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.6974053   -0.9520481   -0.4427625
24 months   MAL-ED           BRAZIL                         High                 NA                 0.7126697    0.3642426    1.0610968
24 months   MAL-ED           BRAZIL                         Low                  NA                 0.2474637   -0.2254225    0.7203500
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.4347770    0.1250562    0.7444978
24 months   MAL-ED           INDIA                          High                 NA                -0.9382337   -1.1582232   -0.7182441
24 months   MAL-ED           INDIA                          Low                  NA                -1.0566812   -1.2638029   -0.8495596
24 months   MAL-ED           INDIA                          Medium               NA                -0.8414830   -1.0566538   -0.6263122
24 months   MAL-ED           NEPAL                          High                 NA                -0.1411723   -0.4028028    0.1204581
24 months   MAL-ED           NEPAL                          Low                  NA                -0.3367547   -0.5058499   -0.1676595
24 months   MAL-ED           NEPAL                          Medium               NA                -0.4880808   -0.6950255   -0.2811362
24 months   MAL-ED           PERU                           High                 NA                 0.1678076   -0.0274711    0.3630863
24 months   MAL-ED           PERU                           Low                  NA                 0.1980900   -0.0203086    0.4164886
24 months   MAL-ED           PERU                           Medium               NA                -0.0421625   -0.2507524    0.1664275
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.4874915    0.2431780    0.7318051
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3291174    0.1572954    0.5009393
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.5086443    0.2685841    0.7487044
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.7747752   -0.9583193   -0.5912310
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -1.0611752   -1.2136602   -0.9086903
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.8879125   -1.0697836   -0.7060414
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.4576700   -0.6225509   -0.2927892
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8245223   -0.9884101   -0.6606346
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.6224368   -0.7841068   -0.4607667
24 months   PROBIT           BELARUS                        High                 NA                 0.7836168    0.5985488    0.9686847
24 months   PROBIT           BELARUS                        Low                  NA                 0.6468190    0.4861246    0.8075134
24 months   PROBIT           BELARUS                        Medium               NA                 0.6956684    0.6032486    0.7880882
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.8989858   -1.0339575   -0.7640142
24 months   PROVIDE          BANGLADESH                     Low                  NA                -0.9703727   -1.1151464   -0.8255989
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8563587   -1.0293342   -0.6833833
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1862545   -1.3299260   -1.0425830
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2336188   -1.4162497   -1.0509879
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1532259   -1.3502698   -0.9561820


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0590508   -1.1604735   -0.9576281
Birth       COHORTS          INDIA                          NA                   NA                -0.9831277   -1.0164986   -0.9497568
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1182629   -1.2060675   -1.0304584
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7779831   -0.7969771   -0.7589891
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6895483   -0.7419864   -0.6371102
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9109143   -1.0715205   -0.7503080
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          NA                   NA                -0.9021053   -1.2132997   -0.5909108
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7791667   -1.1649642   -0.3933692
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7997938    0.5930740    1.0065137
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5152927   -0.5411678   -0.4894176
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1972718    0.1253735    0.2691700
6 months    COHORTS          INDIA                          NA                   NA                -0.7006307   -0.7314213   -0.6698400
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    EE               PAKISTAN                       NA                   NA                -0.7785977   -0.8934940   -0.6637013
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6087819   -0.6949591   -0.5226048
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5932740   -0.6128028   -0.5737451
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3903558   -0.4277318   -0.3529799
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4399754    0.3683855    0.5115653
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0723895   -0.2148128    0.0700339
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9744591    0.8094713    1.1394470
6 months    MAL-ED           INDIA                          NA                   NA                -0.6859816   -0.8229470   -0.5490162
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1223152   -0.0106456    0.2552761
6 months    MAL-ED           PERU                           NA                   NA                 1.0566544    0.9348515    1.1784573
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5536864    0.4102695    0.6971033
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0807224    0.0278917    0.1335530
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3101107    0.2844075    0.3358139
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2765075   -0.3306839   -0.2223311
24 months   COHORTS          INDIA                          NA                   NA                -0.6386606   -0.6699072   -0.6074140
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   EE               PAKISTAN                       NA                   NA                -1.0042771   -1.1523338   -0.8562205
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1372176   -1.2263063   -1.0481290
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2974744   -1.3207756   -1.2741732
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2243057   -1.2562915   -1.1923198
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0441457   -0.1265899    0.0382985
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.7626901   -0.8991383   -0.6262418
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4620139    0.2549144    0.6691133
24 months   MAL-ED           INDIA                          NA                   NA                -0.9438945   -1.0682517   -0.8195372
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3583333   -0.4767474   -0.2399193
24 months   MAL-ED           PERU                           NA                   NA                 0.1112042   -0.0124506    0.2348589
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0906000   -0.0489294    0.2301294
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.2929309   -1.1229080    0.5370462
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.5582192   -1.3215775    0.2051391
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0221427   -0.3056359    0.2613505
Birth       COHORTS          GUATEMALA                      Medium               High               0.0144172   -0.2919269    0.3207613
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1069015   -0.2250470    0.0112439
Birth       COHORTS          INDIA                          Medium               High              -0.1247135   -0.2305061   -0.0189208
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.0211994   -0.1099903    0.1523890
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0755062   -0.0522642    0.2032766
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2335654    0.0054314    0.4616995
Birth       GMS-Nepal        NEPAL                          Medium               High               0.0926711   -0.2362358    0.4215780
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High              -0.1426555   -0.5126544    0.2273434
Birth       IRC              INDIA                          Medium               High              -0.2327106   -0.5971452    0.1317240
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0138333   -0.0688893    0.0412226
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0277776   -0.0277642    0.0833193
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0240157   -0.1682725    0.1202412
Birth       JiVitA-4         BANGLADESH                     Medium               High               0.0159507   -0.1233274    0.1552287
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.1346887   -0.4860905    0.2167131
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.1647228   -0.6057144    0.2762687
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High               0.0973845   -0.7311984    0.9259674
Birth       MAL-ED           BRAZIL                         Medium               High              -0.5700188   -1.3311033    0.1910656
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       MAL-ED           INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       MAL-ED           NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.2631873   -0.0379086    0.5642832
Birth       MAL-ED           PERU                           Medium               High              -0.0735199   -0.3766244    0.2295847
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0859142   -0.3809685    0.5527968
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.1783041   -0.7739226    0.4173145
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0171851   -0.2631851    0.2288150
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.1702769   -0.4267898    0.0862360
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0675407   -0.1405272    0.2756087
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.1482100   -0.0588226    0.3552425
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0177414   -0.1111813    0.0756985
Birth       PROBIT           BELARUS                        Medium               High              -0.0237464   -0.0991141    0.0516213
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.1166167   -0.0823092    0.3155426
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0088254   -0.1963473    0.1786966
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0316683   -0.2934492    0.2301126
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0653239   -0.3786309    0.2479831
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0443440   -0.0251660    0.1138540
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0105003   -0.0722535    0.0512529
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.0198312   -0.3658784    0.3262159
6 months    CMC-V-BCS-2002   INDIA                          Medium               High               0.0313362   -0.3444874    0.4071599
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High               0.0852796   -0.1672762    0.3378353
6 months    COHORTS          GUATEMALA                      Medium               High               0.0271833   -0.2414584    0.2958249
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3356835   -0.4665803   -0.2047868
6 months    COHORTS          INDIA                          Medium               High              -0.1654000   -0.2829609   -0.0478391
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.0056392   -0.1252826    0.1140042
6 months    COHORTS          PHILIPPINES                    Medium               High               0.0701010   -0.0407207    0.1809227
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.1043868   -0.5022712    0.2934977
6 months    EE               PAKISTAN                       Medium               High               0.1595275   -0.3558627    0.6749178
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.6169051   -0.9005201   -0.3332902
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.6392738   -1.0894184   -0.1891292
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High               0.2013657   -0.0987233    0.5014547
6 months    Guatemala BSC    GUATEMALA                      Medium               High               0.0019915   -0.2672501    0.2712331
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.1161357   -0.4408677    0.2085964
6 months    IRC              INDIA                          Medium               High              -0.3219841   -0.6673533    0.0233850
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0560838   -0.1145630    0.0023954
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0214988   -0.0810743    0.0380768
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1995123   -0.2980211   -0.1010035
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0349906   -0.1315529    0.0615716
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.2190355   -0.3942432   -0.0438278
6 months    LCNI-5           MALAWI                         Medium               High              -0.2084970   -0.3953880   -0.0216061
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1673275   -0.5339886    0.1993336
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0204154   -0.2877929    0.3286237
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.4645524   -0.8942470   -0.0348578
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0590429   -0.4379920    0.3199061
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High              -0.0097579   -0.3459178    0.3264020
6 months    MAL-ED           INDIA                          Medium               High               0.0416124   -0.2876732    0.3708980
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.4335943   -0.7539894   -0.1131992
6 months    MAL-ED           NEPAL                          Medium               High              -0.5155364   -0.8681855   -0.1628874
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.1175029   -0.4208177    0.1858119
6 months    MAL-ED           PERU                           Medium               High              -0.1117294   -0.4037625    0.1803037
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.2675741   -0.6107678    0.0756196
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0456144   -0.4578215    0.3665926
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.1921763   -0.4264504    0.0420977
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.0981699   -0.3401015    0.1437617
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.2336037   -0.4339676   -0.0332397
6 months    NIH-Crypto       BANGLADESH                     Medium               High               0.0937273   -0.1145346    0.3019893
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.0211342   -0.0963272    0.0540589
6 months    PROBIT           BELARUS                        Medium               High              -0.0064352   -0.0800308    0.0671605
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.2348194   -0.4784587    0.0088198
6 months    PROVIDE          BANGLADESH                     Medium               High               0.0006755   -0.2431104    0.2444614
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1268297   -0.2756409    0.0219814
6 months    SAS-CompFeed     INDIA                          Medium               High               0.1199573   -0.1075551    0.3474698
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2879674   -0.6374060    0.0614713
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2796741   -0.8338476    0.2744995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0930697   -0.1773178    0.3634572
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0055148   -0.1173159    0.1283456
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1802744   -0.2577499   -0.1027990
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.1094265   -0.1772781   -0.0415749
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.3659095   -0.6087194   -0.1230996
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.2066838   -0.4574606    0.0440931
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.0018785   -0.1687401    0.1649830
24 months   COHORTS          GUATEMALA                      Medium               High               0.0427348   -0.1365971    0.2220667
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.7030183   -0.8429980   -0.5630387
24 months   COHORTS          INDIA                          Medium               High              -0.3079848   -0.4285505   -0.1874192
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.1059368   -0.2166720    0.0047984
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.0185350   -0.1272790    0.0902090
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2547586   -0.5689247    0.0594076
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.3818822   -0.7934650    0.0297007
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.0670181   -0.2980034    0.1639673
24 months   IRC              INDIA                          Medium               High              -0.2029061   -0.4252904    0.0194782
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High               0.0527788   -0.0298042    0.1353618
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0061047   -0.0973038    0.0850944
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0485981   -0.1308602    0.0336640
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0008052   -0.0930337    0.0914233
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.4662961   -0.6634647   -0.2691274
24 months   LCNI-5           MALAWI                         Medium               High              -0.3116255   -0.5149550   -0.1082960
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.4306506   -0.7524085   -0.1088927
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1063316   -0.4504284    0.2377652
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4652060   -1.0542089    0.1237970
24 months   MAL-ED           BRAZIL                         Medium               High              -0.2778927   -0.7446849    0.1888995
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.1184475   -0.4201634    0.1832683
24 months   MAL-ED           INDIA                          Medium               High               0.0967507   -0.2110189    0.4045203
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.1955823   -0.5051649    0.1140003
24 months   MAL-ED           NEPAL                          Medium               High              -0.3469085   -0.6812833   -0.0125338
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.0302823   -0.2556383    0.3162030
24 months   MAL-ED           PERU                           Medium               High              -0.2099701   -0.4891542    0.0692140
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.1583742   -0.4578989    0.1411506
24 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0211527   -0.3216454    0.3639508
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.2864001   -0.5245264   -0.0482738
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.1131373   -0.3712284    0.1449538
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3668523   -0.5988691   -0.1348355
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1647667   -0.3938667    0.0643333
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.1367977   -0.3038019    0.0302064
24 months   PROBIT           BELARUS                        Medium               High              -0.0879484   -0.2557132    0.0798165
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0713868   -0.2684224    0.1256487
24 months   PROVIDE          BANGLADESH                     Medium               High               0.0426271   -0.1757319    0.2609860
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0473643   -0.2787280    0.1839993
24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0330286   -0.2105981    0.2766553


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.1771261   -0.4473965    0.0931443
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0183310   -0.2463866    0.2097246
Birth       COHORTS          INDIA                          High                 NA                -0.1321455   -0.2268148   -0.0374762
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0230174   -0.0528745    0.0989094
Birth       EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.2104704    0.0115050    0.4094358
Birth       IRC              INDIA                          High                 NA                -0.1269094   -0.3580881    0.1042693
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0171642   -0.0239650    0.0582934
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0054825   -0.0814163    0.0923814
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.0995452   -0.2920238    0.0929335
Birth       MAL-ED           BRAZIL                         High                 NA                -0.1824481   -0.6938941    0.3289980
Birth       MAL-ED           INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       MAL-ED           NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       MAL-ED           PERU                           High                 NA                 0.0806970   -0.1018023    0.2631963
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0090211   -0.2951295    0.3131716
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0696477   -0.2313137    0.0920182
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0829855   -0.0378038    0.2037749
Birth       PROBIT           BELARUS                        High                 NA                -0.0099806   -0.0680664    0.0481053
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0211081   -0.0943707    0.1365868
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0672163   -0.2833616    0.1489291
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0015001   -0.0263577    0.0293579
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0028151   -0.1767970    0.1711668
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0298664   -0.1801426    0.2398755
6 months    COHORTS          INDIA                          High                 NA                -0.2200300   -0.3261217   -0.1139383
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0271776   -0.0398292    0.0941844
6 months    EE               PAKISTAN                       High                 NA                -0.0817139   -0.4629288    0.2995011
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.6026485   -0.8568441   -0.3484529
6 months    Guatemala BSC    GUATEMALA                      High                 NA                 0.0493325   -0.0861010    0.1847659
6 months    IRC              INDIA                          High                 NA                -0.1557782   -0.3613233    0.0497670
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0304978   -0.0721200    0.0111245
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0628039   -0.1257171    0.0001093
6 months    LCNI-5           MALAWI                         High                 NA                -0.1378032   -0.2382550   -0.0373515
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0456505   -0.2253980    0.1340969
6 months    MAL-ED           BRAZIL                         High                 NA                -0.1197763   -0.3494450    0.1098924
6 months    MAL-ED           INDIA                          High                 NA                -0.0181635   -0.2224242    0.1860971
6 months    MAL-ED           NEPAL                          High                 NA                -0.4008912   -0.6292062   -0.1725762
6 months    MAL-ED           PERU                           High                 NA                -0.0799637   -0.2639252    0.1039977
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1142022   -0.3473741    0.1189696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.1129985   -0.2709033    0.0449062
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0517633   -0.1703851    0.0668585
6 months    PROBIT           BELARUS                        High                 NA                -0.0074932   -0.0706395    0.0556531
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0677057   -0.2136468    0.0782354
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0107253   -0.1179838    0.1394344
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2518195   -0.5706461    0.0670071
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0060578   -0.0853953    0.0975110
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0553371   -0.0853480   -0.0253262
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.1630158   -0.2796877   -0.0463440
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0306807   -0.1031220    0.1644834
24 months   COHORTS          INDIA                          High                 NA                -0.3781548   -0.4860528   -0.2702568
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0154833   -0.0857793    0.0548128
24 months   EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.2780038   -0.5615854    0.0055777
24 months   IRC              INDIA                          High                 NA                -0.0952982   -0.2357598    0.0451633
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0141151   -0.0542811    0.0825113
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0086567   -0.0625878    0.0452744
24 months   LCNI-5           MALAWI                         High                 NA                -0.2369026   -0.3465960   -0.1272091
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1716164   -0.3536442    0.0104114
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2506558   -0.5304430    0.0291314
24 months   MAL-ED           INDIA                          High                 NA                -0.0056608   -0.1986926    0.1873709
24 months   MAL-ED           NEPAL                          High                 NA                -0.2171610   -0.4450579    0.0107358
24 months   MAL-ED           PERU                           High                 NA                -0.0566034   -0.2277729    0.1145660
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0784614   -0.2817693    0.1248464
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.1368039   -0.2909543    0.0173465
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1526801   -0.2805289   -0.0248314
24 months   PROBIT           BELARUS                        High                 NA                -0.0854761   -0.2167428    0.0457906
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0061188   -0.1090646    0.1213022
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0037141   -0.1052068    0.1126350
