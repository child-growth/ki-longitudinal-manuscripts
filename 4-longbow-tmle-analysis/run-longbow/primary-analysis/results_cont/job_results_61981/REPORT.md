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

agecat      studyid          country                        meducyrs    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          High            49      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Low             15      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Medium          22      86  whz              
Birth       COHORTS          GUATEMALA                      High           157     748  whz              
Birth       COHORTS          GUATEMALA                      Low            344     748  whz              
Birth       COHORTS          GUATEMALA                      Medium         247     748  whz              
Birth       COHORTS          INDIA                          High           656    4879  whz              
Birth       COHORTS          INDIA                          Low           1602    4879  whz              
Birth       COHORTS          INDIA                          Medium        2621    4879  whz              
Birth       COHORTS          PHILIPPINES                    High          1128    2899  whz              
Birth       COHORTS          PHILIPPINES                    Low            838    2899  whz              
Birth       COHORTS          PHILIPPINES                    Medium         933    2899  whz              
Birth       EE               PAKISTAN                       High             5     177  whz              
Birth       EE               PAKISTAN                       Low            156     177  whz              
Birth       EE               PAKISTAN                       Medium          16     177  whz              
Birth       GMS-Nepal        NEPAL                          High            81     639  whz              
Birth       GMS-Nepal        NEPAL                          Low            444     639  whz              
Birth       GMS-Nepal        NEPAL                          Medium         114     639  whz              
Birth       IRC              INDIA                          High           101     343  whz              
Birth       IRC              INDIA                          Low            126     343  whz              
Birth       IRC              INDIA                          Medium         116     343  whz              
Birth       JiVitA-3         BANGLADESH                     High          5631   17988  whz              
Birth       JiVitA-3         BANGLADESH                     Low           6897   17988  whz              
Birth       JiVitA-3         BANGLADESH                     Medium        5460   17988  whz              
Birth       JiVitA-4         BANGLADESH                     High           805    2391  whz              
Birth       JiVitA-4         BANGLADESH                     Low            829    2391  whz              
Birth       JiVitA-4         BANGLADESH                     Medium         757    2391  whz              
Birth       MAL-ED           BANGLADESH                     High            64     175  whz              
Birth       MAL-ED           BANGLADESH                     Low             60     175  whz              
Birth       MAL-ED           BANGLADESH                     Medium          51     175  whz              
Birth       MAL-ED           BRAZIL                         High            18      62  whz              
Birth       MAL-ED           BRAZIL                         Low             17      62  whz              
Birth       MAL-ED           BRAZIL                         Medium          27      62  whz              
Birth       MAL-ED           INDIA                          High             8      38  whz              
Birth       MAL-ED           INDIA                          Low             18      38  whz              
Birth       MAL-ED           INDIA                          Medium          12      38  whz              
Birth       MAL-ED           NEPAL                          High             5      24  whz              
Birth       MAL-ED           NEPAL                          Low             12      24  whz              
Birth       MAL-ED           NEPAL                          Medium           7      24  whz              
Birth       MAL-ED           PERU                           High            65     228  whz              
Birth       MAL-ED           PERU                           Low             83     228  whz              
Birth       MAL-ED           PERU                           Medium          80     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   High            35     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   Low             59     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   Medium          26     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7      97  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             32      97  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          58      97  whz              
Birth       NIH-Birth        BANGLADESH                     High           163     575  whz              
Birth       NIH-Birth        BANGLADESH                     Low            210     575  whz              
Birth       NIH-Birth        BANGLADESH                     Medium         202     575  whz              
Birth       NIH-Crypto       BANGLADESH                     High           236     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Low            226     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Medium         245     707  whz              
Birth       PROBIT           BELARUS                        High          2240   13817  whz              
Birth       PROBIT           BELARUS                        Low           4940   13817  whz              
Birth       PROBIT           BELARUS                        Medium        6637   13817  whz              
Birth       PROVIDE          BANGLADESH                     High           169     532  whz              
Birth       PROVIDE          BANGLADESH                     Low            164     532  whz              
Birth       PROVIDE          BANGLADESH                     Medium         199     532  whz              
Birth       SAS-CompFeed     INDIA                          High           233    1103  whz              
Birth       SAS-CompFeed     INDIA                          Low            500    1103  whz              
Birth       SAS-CompFeed     INDIA                          Medium         370    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       High          7015   12897  whz              
Birth       ZVITAMBO         ZIMBABWE                       Low           2697   12897  whz              
Birth       ZVITAMBO         ZIMBABWE                       Medium        3185   12897  whz              
6 months    CMC-V-BCS-2002   INDIA                          High           157     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          Low            104     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          Medium         107     368  whz              
6 months    COHORTS          GUATEMALA                      High           185     953  whz              
6 months    COHORTS          GUATEMALA                      Low            449     953  whz              
6 months    COHORTS          GUATEMALA                      Medium         319     953  whz              
6 months    COHORTS          INDIA                          High           737    5407  whz              
6 months    COHORTS          INDIA                          Low           1774    5407  whz              
6 months    COHORTS          INDIA                          Medium        2896    5407  whz              
6 months    COHORTS          PHILIPPINES                    High          1015    2706  whz              
6 months    COHORTS          PHILIPPINES                    Low            824    2706  whz              
6 months    COHORTS          PHILIPPINES                    Medium         867    2706  whz              
6 months    EE               PAKISTAN                       High            15     372  whz              
6 months    EE               PAKISTAN                       Low            324     372  whz              
6 months    EE               PAKISTAN                       Medium          33     372  whz              
6 months    GMS-Nepal        NEPAL                          High            68     561  whz              
6 months    GMS-Nepal        NEPAL                          Low            399     561  whz              
6 months    GMS-Nepal        NEPAL                          Medium          94     561  whz              
6 months    Guatemala BSC    GUATEMALA                      High           117     277  whz              
6 months    Guatemala BSC    GUATEMALA                      Low             73     277  whz              
6 months    Guatemala BSC    GUATEMALA                      Medium          87     277  whz              
6 months    IRC              INDIA                          High           124     408  whz              
6 months    IRC              INDIA                          Low            145     408  whz              
6 months    IRC              INDIA                          Medium         139     408  whz              
6 months    JiVitA-3         BANGLADESH                     High          5909   16767  whz              
6 months    JiVitA-3         BANGLADESH                     Low           5612   16767  whz              
6 months    JiVitA-3         BANGLADESH                     Medium        5246   16767  whz              
6 months    JiVitA-4         BANGLADESH                     High          1717    4820  whz              
6 months    JiVitA-4         BANGLADESH                     Low           1584    4820  whz              
6 months    JiVitA-4         BANGLADESH                     Medium        1519    4820  whz              
6 months    LCNI-5           MALAWI                         High           298     813  whz              
6 months    LCNI-5           MALAWI                         Low            261     813  whz              
6 months    LCNI-5           MALAWI                         Medium         254     813  whz              
6 months    MAL-ED           BANGLADESH                     High            73     196  whz              
6 months    MAL-ED           BANGLADESH                     Low             64     196  whz              
6 months    MAL-ED           BANGLADESH                     Medium          59     196  whz              
6 months    MAL-ED           BRAZIL                         High            71     208  whz              
6 months    MAL-ED           BRAZIL                         Low             56     208  whz              
6 months    MAL-ED           BRAZIL                         Medium          81     208  whz              
6 months    MAL-ED           INDIA                          High            59     208  whz              
6 months    MAL-ED           INDIA                          Low             72     208  whz              
6 months    MAL-ED           INDIA                          Medium          77     208  whz              
6 months    MAL-ED           NEPAL                          High            53     221  whz              
6 months    MAL-ED           NEPAL                          Low             93     221  whz              
6 months    MAL-ED           NEPAL                          Medium          75     221  whz              
6 months    MAL-ED           PERU                           High            81     272  whz              
6 months    MAL-ED           PERU                           Low             94     272  whz              
6 months    MAL-ED           PERU                           Medium          97     272  whz              
6 months    MAL-ED           SOUTH AFRICA                   High            70     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   Low            127     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   Medium          57     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             9     203  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             62     203  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         132     203  whz              
6 months    NIH-Birth        BANGLADESH                     High           155     537  whz              
6 months    NIH-Birth        BANGLADESH                     Low            195     537  whz              
6 months    NIH-Birth        BANGLADESH                     Medium         187     537  whz              
6 months    NIH-Crypto       BANGLADESH                     High           240     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Low            229     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Medium         246     715  whz              
6 months    PROBIT           BELARUS                        High          2657   15757  whz              
6 months    PROBIT           BELARUS                        Low           5641   15757  whz              
6 months    PROBIT           BELARUS                        Medium        7459   15757  whz              
6 months    PROVIDE          BANGLADESH                     High           209     603  whz              
6 months    PROVIDE          BANGLADESH                     Low            187     603  whz              
6 months    PROVIDE          BANGLADESH                     Medium         207     603  whz              
6 months    SAS-CompFeed     INDIA                          High           289    1334  whz              
6 months    SAS-CompFeed     INDIA                          Low            596    1334  whz              
6 months    SAS-CompFeed     INDIA                          Medium         449    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          High            35     380  whz              
6 months    SAS-FoodSuppl    INDIA                          Low            304     380  whz              
6 months    SAS-FoodSuppl    INDIA                          Medium          41     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020  whz              
6 months    ZVITAMBO         ZIMBABWE                       High          4604    8492  whz              
6 months    ZVITAMBO         ZIMBABWE                       Low           1766    8492  whz              
6 months    ZVITAMBO         ZIMBABWE                       Medium        2122    8492  whz              
24 months   CMC-V-BCS-2002   INDIA                          High           158     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          Low            105     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          Medium         109     372  whz              
24 months   COHORTS          GUATEMALA                      High           209    1068  whz              
24 months   COHORTS          GUATEMALA                      Low            512    1068  whz              
24 months   COHORTS          GUATEMALA                      Medium         347    1068  whz              
24 months   COHORTS          INDIA                          High           601    4166  whz              
24 months   COHORTS          INDIA                          Low           1264    4166  whz              
24 months   COHORTS          INDIA                          Medium        2301    4166  whz              
24 months   COHORTS          PHILIPPINES                    High           911    2449  whz              
24 months   COHORTS          PHILIPPINES                    Low            748    2449  whz              
24 months   COHORTS          PHILIPPINES                    Medium         790    2449  whz              
24 months   EE               PAKISTAN                       High             6     166  whz              
24 months   EE               PAKISTAN                       Low            143     166  whz              
24 months   EE               PAKISTAN                       Medium          17     166  whz              
24 months   GMS-Nepal        NEPAL                          High            55     484  whz              
24 months   GMS-Nepal        NEPAL                          Low            344     484  whz              
24 months   GMS-Nepal        NEPAL                          Medium          85     484  whz              
24 months   IRC              INDIA                          High           124     409  whz              
24 months   IRC              INDIA                          Low            146     409  whz              
24 months   IRC              INDIA                          Medium         139     409  whz              
24 months   JiVitA-3         BANGLADESH                     High          2912    8592  whz              
24 months   JiVitA-3         BANGLADESH                     Low           2999    8592  whz              
24 months   JiVitA-3         BANGLADESH                     Medium        2681    8592  whz              
24 months   JiVitA-4         BANGLADESH                     High          1688    4724  whz              
24 months   JiVitA-4         BANGLADESH                     Low           1528    4724  whz              
24 months   JiVitA-4         BANGLADESH                     Medium        1508    4724  whz              
24 months   LCNI-5           MALAWI                         High           214     556  whz              
24 months   LCNI-5           MALAWI                         Low            172     556  whz              
24 months   LCNI-5           MALAWI                         Medium         170     556  whz              
24 months   MAL-ED           BANGLADESH                     High            64     171  whz              
24 months   MAL-ED           BANGLADESH                     Low             59     171  whz              
24 months   MAL-ED           BANGLADESH                     Medium          48     171  whz              
24 months   MAL-ED           BRAZIL                         High            62     168  whz              
24 months   MAL-ED           BRAZIL                         Low             42     168  whz              
24 months   MAL-ED           BRAZIL                         Medium          64     168  whz              
24 months   MAL-ED           INDIA                          High            55     199  whz              
24 months   MAL-ED           INDIA                          Low             69     199  whz              
24 months   MAL-ED           INDIA                          Medium          75     199  whz              
24 months   MAL-ED           NEPAL                          High            48     213  whz              
24 months   MAL-ED           NEPAL                          Low             91     213  whz              
24 months   MAL-ED           NEPAL                          Medium          74     213  whz              
24 months   MAL-ED           PERU                           High            59     200  whz              
24 months   MAL-ED           PERU                           Low             74     200  whz              
24 months   MAL-ED           PERU                           Medium          67     200  whz              
24 months   MAL-ED           SOUTH AFRICA                   High            67     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   Low            120     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   Medium          51     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     175  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             54     175  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         114     175  whz              
24 months   NIH-Birth        BANGLADESH                     High           130     428  whz              
24 months   NIH-Birth        BANGLADESH                     Low            152     428  whz              
24 months   NIH-Birth        BANGLADESH                     Medium         146     428  whz              
24 months   NIH-Crypto       BANGLADESH                     High           191     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Low            146     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Medium         177     514  whz              
24 months   PROBIT           BELARUS                        High           654    3970  whz              
24 months   PROBIT           BELARUS                        Low           1381    3970  whz              
24 months   PROBIT           BELARUS                        Medium        1935    3970  whz              
24 months   PROVIDE          BANGLADESH                     High           201     579  whz              
24 months   PROVIDE          BANGLADESH                     Low            174     579  whz              
24 months   PROVIDE          BANGLADESH                     Medium         204     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       High           184     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       Low            118     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       Medium         131     433  whz              


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
![](/tmp/ff17c92d-b26c-442d-9a10-a2d8d6bba6f6/4a5451e5-7a44-425b-86b7-1bee718bd995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff17c92d-b26c-442d-9a10-a2d8d6bba6f6/4a5451e5-7a44-425b-86b7-1bee718bd995/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff17c92d-b26c-442d-9a10-a2d8d6bba6f6/4a5451e5-7a44-425b-86b7-1bee718bd995/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.2897184   -0.6850793    0.1056426
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5866815   -1.2543358    0.0809728
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -0.9377474   -1.5903865   -0.2851083
Birth       COHORTS          GUATEMALA                      High                 NA                -1.0549065   -1.3268515   -0.7829615
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0756447   -1.2171629   -0.9341265
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.0172170   -1.2122281   -0.8222059
Birth       COHORTS          INDIA                          High                 NA                -0.8627342   -0.9582123   -0.7672561
Birth       COHORTS          INDIA                          Low                  NA                -0.9668222   -1.0335141   -0.9001304
Birth       COHORTS          INDIA                          Medium               NA                -0.9782808   -1.0238592   -0.9327025
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7544945   -0.8432673   -0.6657216
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.7367446   -0.8380601   -0.6354290
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.6968198   -0.7914862   -0.6021534
Birth       EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.3634179   -1.5621324   -1.1647034
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0878855   -1.1915659   -0.9842050
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.2479017   -1.5168580   -0.9789454
Birth       IRC              INDIA                          High                 NA                -0.8967672   -1.1980782   -0.5954562
Birth       IRC              INDIA                          Low                  NA                -1.0245206   -1.3007244   -0.7483169
Birth       IRC              INDIA                          Medium               NA                -1.1293390   -1.4002550   -0.8584231
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7930458   -0.8366909   -0.7494007
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.8094948   -0.8437231   -0.7752664
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7716488   -0.8091944   -0.7341032
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.7079274   -0.8068233   -0.6090316
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.7100715   -0.8069067   -0.6132363
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6833083   -0.7800142   -0.5866023
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.8378811   -1.0703695   -0.6053926
Birth       MAL-ED           BANGLADESH                     Low                  NA                -0.9200652   -1.2043307   -0.6357997
Birth       MAL-ED           BANGLADESH                     Medium               NA                -0.9759394   -1.3656044   -0.5862745
Birth       MAL-ED           BRAZIL                         High                 NA                 0.6715394    0.0417244    1.3013543
Birth       MAL-ED           BRAZIL                         Low                  NA                 0.7907788    0.2429229    1.3386347
Birth       MAL-ED           BRAZIL                         Medium               NA                 0.0637365   -0.3879700    0.5154431
Birth       MAL-ED           INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       MAL-ED           INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       MAL-ED           INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       MAL-ED           NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       MAL-ED           NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       MAL-ED           NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       MAL-ED           PERU                           High                 NA                -0.0776141   -0.2769034    0.1216752
Birth       MAL-ED           PERU                           Low                  NA                 0.1369753   -0.1083034    0.3822540
Birth       MAL-ED           PERU                           Medium               NA                -0.2088285   -0.4394606    0.0218036
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.1602947   -0.4984047    0.1778153
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0941157   -0.4194503    0.2312189
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.3235789   -0.8215105    0.1743527
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       NIH-Birth        BANGLADESH                     High                 NA                -1.2596869   -1.4566152   -1.0627587
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -1.2915734   -1.4409295   -1.1422174
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -1.4642714   -1.6366179   -1.2919249
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.3277270   -1.4692194   -1.1862346
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2556283   -1.4208215   -1.0904352
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.2066821   -1.3682043   -1.0451599
Birth       PROBIT           BELARUS                        High                 NA                -1.1517592   -1.3657409   -0.9377775
Birth       PROBIT           BELARUS                        Low                  NA                -1.1549583   -1.3948979   -0.9150186
Birth       PROBIT           BELARUS                        Medium               NA                -1.1625447   -1.3690274   -0.9560620
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.2953995   -1.4194102   -1.1713888
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.2101464   -1.3546323   -1.0656604
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.3231228   -1.4646831   -1.1815626
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6028291   -0.7854786   -0.4201796
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.6344974   -0.8581833   -0.4108114
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6681530   -0.9320727   -0.4042332
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5178225   -0.5569830   -0.4786621
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4726008   -0.5349425   -0.4102592
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5236134   -0.5754961   -0.4717308
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.4903091   -0.7180274   -0.2625908
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5469510   -0.8079488   -0.2859532
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4758454   -0.7816534   -0.1700375
6 months    COHORTS          GUATEMALA                      High                 NA                 0.2430504   -0.0098908    0.4959915
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.2375243    0.1346566    0.3403919
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.1617234    0.0153477    0.3080992
6 months    COHORTS          INDIA                          High                 NA                -0.4446471   -0.5489720   -0.3403222
6 months    COHORTS          INDIA                          Low                  NA                -0.8192426   -0.8954185   -0.7430667
6 months    COHORTS          INDIA                          Medium               NA                -0.6491654   -0.6954086   -0.6029221
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.3207400   -0.3954233   -0.2460566
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.3157612   -0.4119886   -0.2195337
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.2591321   -0.3406459   -0.1776184
6 months    EE               PAKISTAN                       High                 NA                -0.6912754   -1.0497372   -0.3328135
6 months    EE               PAKISTAN                       Low                  NA                -0.8020142   -0.9272205   -0.6768079
6 months    EE               PAKISTAN                       Medium               NA                -0.4869278   -0.8383254   -0.1355303
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0436839   -0.3522899    0.2649220
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6287940   -0.7432784   -0.5143096
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6087596   -0.9733927   -0.2441264
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.1207420   -0.2955968    0.0541128
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                 0.1093841   -0.1425944    0.3613626
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -0.0823705   -0.2897128    0.1249719
6 months    IRC              INDIA                          High                 NA                -0.4566063   -0.7005324   -0.2126802
6 months    IRC              INDIA                          Low                  NA                -0.5761902   -0.7969259   -0.3554545
6 months    IRC              INDIA                          Medium               NA                -0.7278510   -0.9781270   -0.4775749
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5635872   -0.6103022   -0.5168723
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6166701   -0.6561303   -0.5772099
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5855681   -0.6280571   -0.5430790
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3224439   -0.3948291   -0.2500587
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.5189221   -0.5962684   -0.4415758
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.3751527   -0.4456596   -0.3046458
6 months    LCNI-5           MALAWI                         High                 NA                 0.5752534    0.4562680    0.6942388
6 months    LCNI-5           MALAWI                         Low                  NA                 0.3631759    0.2420694    0.4842824
6 months    LCNI-5           MALAWI                         Medium               NA                 0.3652660    0.2296683    0.5008636
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0413686   -0.2593058    0.1765686
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.1460283   -0.4419225    0.1498658
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0016519   -0.2260795    0.2227758
6 months    MAL-ED           BRAZIL                         High                 NA                 1.1730958    0.8950879    1.4511037
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.7250758    0.4028596    1.0472920
6 months    MAL-ED           BRAZIL                         Medium               NA                 1.0736946    0.8094585    1.3379308
6 months    MAL-ED           INDIA                          High                 NA                -0.7077547   -0.9336636   -0.4818457
6 months    MAL-ED           INDIA                          Low                  NA                -0.6973227   -0.9463711   -0.4482742
6 months    MAL-ED           INDIA                          Medium               NA                -0.6564703   -0.8942241   -0.4187166
6 months    MAL-ED           NEPAL                          High                 NA                 0.5093860    0.2685974    0.7501746
6 months    MAL-ED           NEPAL                          Low                  NA                 0.0779983   -0.1233594    0.2793559
6 months    MAL-ED           NEPAL                          Medium               NA                -0.0414165   -0.2876542    0.2048212
6 months    MAL-ED           PERU                           High                 NA                 1.1391412    0.9213860    1.3568965
6 months    MAL-ED           PERU                           Low                  NA                 1.0139700    0.8010935    1.2268465
6 months    MAL-ED           PERU                           Medium               NA                 1.0285549    0.8268955    1.2302144
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.7113133    0.4463744    0.9762522
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.4075104    0.1838564    0.6311645
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.6378409    0.3083239    0.9673578
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.2903046   -0.4702613   -0.1103480
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -0.5733364   -0.7125393   -0.4341336
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -0.4240763   -0.5826624   -0.2654902
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0895592   -0.0377674    0.2168858
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.1418131   -0.2828568   -0.0007694
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                 0.1607343    0.0091604    0.3123082
6 months    PROBIT           BELARUS                        High                 NA                 0.5953192    0.5348274    0.6558110
6 months    PROBIT           BELARUS                        Low                  NA                 0.5578163    0.4914650    0.6241675
6 months    PROBIT           BELARUS                        Medium               NA                 0.5740997    0.5083014    0.6398980
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1645991   -0.3306103    0.0014120
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.3371737   -0.5040972   -0.1702502
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1329231   -0.3087147    0.0428686
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.6764337   -0.7613981   -0.5914693
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.8032634   -0.9562022   -0.6503246
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.5564764   -0.7970560   -0.3158967
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.7675506   -1.1314571   -0.4036441
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.0483829   -1.1767845   -0.9199812
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -0.9615411   -1.4024104   -0.5206717
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0684058   -0.0376745    0.1744862
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1559076   -0.0989469    0.4107621
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0792088    0.0164366    0.1419810
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3648809    0.3260131    0.4037487
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1810167    0.1136286    0.2484048
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2595362    0.2038461    0.3152263
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.3948184   -0.5451141   -0.2445227
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7442603   -0.9367952   -0.5517253
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6133553   -0.8156583   -0.4110522
24 months   COHORTS          GUATEMALA                      High                 NA                -0.3023862   -0.4433208   -0.1614517
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.3171211   -0.3982062   -0.2360359
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.2684791   -0.3832089   -0.1537494
24 months   COHORTS          INDIA                          High                 NA                -0.2784429   -0.3868419   -0.1700439
24 months   COHORTS          INDIA                          Low                  NA                -0.9482002   -1.0377794   -0.8586210
24 months   COHORTS          INDIA                          Medium               NA                -0.5606511   -0.6091998   -0.5121024
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.6156518   -0.6983595   -0.5329441
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6808474   -0.7566712   -0.6050235
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6138046   -0.6854237   -0.5421855
24 months   EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.8863163   -1.1820869   -0.5905456
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.1121061   -1.2155227   -1.0086895
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.2926958   -1.5582113   -1.0271803
24 months   IRC              INDIA                          High                 NA                -0.6493831   -0.8177306   -0.4810355
24 months   IRC              INDIA                          Low                  NA                -0.7206161   -0.8788442   -0.5623881
24 months   IRC              INDIA                          Medium               NA                -0.8590343   -1.0017257   -0.7163430
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.3044389   -1.3695118   -1.2393660
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2629194   -1.3104090   -1.2154297
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3056775   -1.3571789   -1.2541762
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2331285   -1.2944494   -1.1718077
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2639435   -1.3296561   -1.1982308
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2121256   -1.2803634   -1.1438879
24 months   LCNI-5           MALAWI                         High                 NA                 0.1847288    0.0457425    0.3237150
24 months   LCNI-5           MALAWI                         Low                  NA                -0.2505613   -0.3826014   -0.1185212
24 months   LCNI-5           MALAWI                         Medium               NA                -0.1461980   -0.3027711    0.0103750
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.5978387   -0.8328336   -0.3628438
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0422680   -1.2652410   -0.8192950
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.7152546   -0.9698006   -0.4607085
24 months   MAL-ED           BRAZIL                         High                 NA                 0.6625577    0.3194387    1.0056767
24 months   MAL-ED           BRAZIL                         Low                  NA                 0.2149146   -0.2465585    0.6763878
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.4691142    0.1566130    0.7816154
24 months   MAL-ED           INDIA                          High                 NA                -0.9391249   -1.1653993   -0.7128504
24 months   MAL-ED           INDIA                          Low                  NA                -1.0613970   -1.2708269   -0.8519671
24 months   MAL-ED           INDIA                          Medium               NA                -0.8509335   -1.0627383   -0.6391286
24 months   MAL-ED           NEPAL                          High                 NA                -0.0968630   -0.3625643    0.1688383
24 months   MAL-ED           NEPAL                          Low                  NA                -0.3813433   -0.5486630   -0.2140237
24 months   MAL-ED           NEPAL                          Medium               NA                -0.4672913   -0.6764215   -0.2581611
24 months   MAL-ED           PERU                           High                 NA                 0.1523909   -0.0330009    0.3377827
24 months   MAL-ED           PERU                           Low                  NA                 0.1437233   -0.0500350    0.3374817
24 months   MAL-ED           PERU                           Medium               NA                 0.0002270   -0.2227872    0.2232411
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.4709937    0.2283654    0.7136219
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3216238    0.1506983    0.4925494
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.4983637    0.2631810    0.7335463
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.7630125   -0.9475809   -0.5784441
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -1.0817980   -1.2393605   -0.9242354
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.9008174   -1.0888242   -0.7128107
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.4472503   -0.6117063   -0.2827943
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8144677   -0.9681726   -0.6607628
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.6099214   -0.7807344   -0.4391084
24 months   PROBIT           BELARUS                        High                 NA                 0.8030860    0.6163825    0.9897895
24 months   PROBIT           BELARUS                        Low                  NA                 0.6409870    0.4717677    0.8102063
24 months   PROBIT           BELARUS                        Medium               NA                 0.6896708    0.5927857    0.7865558
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.9484662   -1.0734733   -0.8234591
24 months   PROVIDE          BANGLADESH                     Low                  NA                -0.9686751   -1.0968643   -0.8404859
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8556437   -1.0347552   -0.6765322
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1829460   -1.3343173   -1.0315747
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2160475   -1.3959534   -1.0361416
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1478638   -1.3341635   -0.9615641


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
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.2969632   -1.0701313    0.4762050
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.6480290   -1.4124479    0.1163898
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0207382   -0.3206015    0.2791251
Birth       COHORTS          GUATEMALA                      Medium               High               0.0376895   -0.2901118    0.3654908
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1040881   -0.2175229    0.0093468
Birth       COHORTS          INDIA                          Medium               High              -0.1155466   -0.2179711   -0.0131222
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.0177499   -0.1151142    0.1506140
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0576747   -0.0700760    0.1854253
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2755325    0.0575982    0.4934667
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1155162   -0.2143640    0.4453965
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High              -0.1277535   -0.5037628    0.2482559
Birth       IRC              INDIA                          Medium               High              -0.2325719   -0.6058587    0.1407150
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0164489   -0.0686885    0.0357906
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0213970   -0.0341723    0.0769664
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0021441   -0.1373607    0.1330724
Birth       JiVitA-4         BANGLADESH                     Medium               High               0.0246192   -0.1112753    0.1605136
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.0821841   -0.4504990    0.2861308
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.1380584   -0.5918534    0.3157366
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High               0.1192394   -0.7065922    0.9450711
Birth       MAL-ED           BRAZIL                         Medium               High              -0.6078028   -1.3843648    0.1687592
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       MAL-ED           INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       MAL-ED           NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.2145894   -0.1025775    0.5317563
Birth       MAL-ED           PERU                           Medium               High              -0.1312144   -0.4361148    0.1736860
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0661790   -0.4005956    0.5329536
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.1632842   -0.7640576    0.4374892
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0318865   -0.2794855    0.2157125
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.2045845   -0.4661801    0.0570112
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0720986   -0.1430955    0.2872928
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.1210449   -0.0912927    0.3333825
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0031990   -0.0917693    0.0853713
Birth       PROBIT           BELARUS                        Medium               High              -0.0107855   -0.0869799    0.0654089
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.0852531   -0.0999406    0.2704469
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0277233   -0.2090355    0.1535888
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0316683   -0.2934492    0.2301126
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0653239   -0.3786309    0.2479831
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0452217   -0.0261187    0.1165621
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0057909   -0.0681447    0.0565629
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.0566419   -0.4015921    0.2883084
6 months    CMC-V-BCS-2002   INDIA                          Medium               High               0.0144637   -0.3645719    0.3934993
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0055261   -0.2786131    0.2675608
6 months    COHORTS          GUATEMALA                      Medium               High              -0.0813269   -0.3736212    0.2109674
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3745955   -0.5039800   -0.2452109
6 months    COHORTS          INDIA                          Medium               High              -0.2045182   -0.3188370   -0.0901994
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High               0.0049788   -0.1165498    0.1265074
6 months    COHORTS          PHILIPPINES                    Medium               High               0.0616078   -0.0483769    0.1715926
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.1107388   -0.4905926    0.2691149
6 months    EE               PAKISTAN                       Medium               High               0.2043475   -0.2953029    0.7039980
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.5851100   -0.9144550   -0.2557650
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.5650756   -1.0428889   -0.0872624
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High               0.2301261   -0.0793665    0.5396186
6 months    Guatemala BSC    GUATEMALA                      Medium               High               0.0383715   -0.2339200    0.3106630
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.1195838   -0.4482202    0.2090525
6 months    IRC              INDIA                          Medium               High              -0.2712447   -0.6216744    0.0791851
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0530829   -0.1120376    0.0058718
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0219808   -0.0830947    0.0391331
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1964782   -0.2994766   -0.0934798
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0527088   -0.1502215    0.0448039
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.2120775   -0.3819011   -0.0422539
6 months    LCNI-5           MALAWI                         Medium               High              -0.2099874   -0.3903944   -0.0295804
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1046597   -0.4732210    0.2639016
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0397168   -0.2727677    0.3522012
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.4480200   -0.8736656   -0.0223744
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0994012   -0.4841883    0.2853860
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0104320   -0.3265671    0.3474311
6 months    MAL-ED           INDIA                          Medium               High               0.0512843   -0.2773225    0.3798912
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.4313877   -0.7448116   -0.1179638
6 months    MAL-ED           NEPAL                          Medium               High              -0.5508025   -0.8939731   -0.2076319
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.1251713   -0.4304332    0.1800907
6 months    MAL-ED           PERU                           Medium               High              -0.1105863   -0.4082680    0.1870953
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.3038028   -0.6507471    0.0431414
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0734724   -0.4964927    0.3495479
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.2830318   -0.5108710   -0.0551926
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.1337716   -0.3739601    0.1064168
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.2313723   -0.4207226   -0.0420220
6 months    NIH-Crypto       BANGLADESH                     Medium               High               0.0711751   -0.1262077    0.2685579
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.0375029   -0.1160690    0.0410632
6 months    PROBIT           BELARUS                        Medium               High              -0.0212195   -0.0953465    0.0529076
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.1725746   -0.4066044    0.0614552
6 months    PROVIDE          BANGLADESH                     Medium               High               0.0316761   -0.2089340    0.2722861
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1268297   -0.2756409    0.0219814
6 months    SAS-CompFeed     INDIA                          Medium               High               0.1199573   -0.1075551    0.3474698
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2808323   -0.6671860    0.1055215
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1939904   -0.7661692    0.3781883
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0875018   -0.1884486    0.3634521
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0108030   -0.1120285    0.1336344
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1838642   -0.2613341   -0.1063942
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.1053447   -0.1729510   -0.0377384
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.3494419   -0.5933468   -0.1055370
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.2185369   -0.4698851    0.0328114
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.0147348   -0.1772717    0.1478021
24 months   COHORTS          GUATEMALA                      Medium               High               0.0339071   -0.1478768    0.2156910
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.6697573   -0.8110509   -0.5284636
24 months   COHORTS          INDIA                          Medium               High              -0.2822082   -0.4012938   -0.1631225
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.0651956   -0.1767171    0.0463259
24 months   COHORTS          PHILIPPINES                    Medium               High               0.0018472   -0.1065281    0.1102224
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2257898   -0.5392066    0.0876269
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.4063795   -0.8036040   -0.0091551
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.0712330   -0.3010088    0.1585428
24 months   IRC              INDIA                          Medium               High              -0.2096513   -0.4291520    0.0098495
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High               0.0415196   -0.0375157    0.1205548
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0012386   -0.0869386    0.0844614
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0308149   -0.1178198    0.0561899
24 months   JiVitA-4         BANGLADESH                     Medium               High               0.0210029   -0.0739378    0.1159436
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.4352901   -0.6261966   -0.2443835
24 months   LCNI-5           MALAWI                         Medium               High              -0.3309268   -0.5397866   -0.1220670
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.4444293   -0.7680896   -0.1207690
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1174159   -0.4633713    0.2285395
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4476431   -1.0237365    0.1284503
24 months   MAL-ED           BRAZIL                         Medium               High              -0.1934435   -0.6570008    0.2701139
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.1222722   -0.4313225    0.1867781
24 months   MAL-ED           INDIA                          Medium               High               0.0881914   -0.2222170    0.3985998
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.2844803   -0.5985876    0.0296269
24 months   MAL-ED           NEPAL                          Medium               High              -0.3704283   -0.7099073   -0.0309494
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.0086675   -0.2643497    0.2470146
24 months   MAL-ED           PERU                           Medium               High              -0.1521639   -0.4367189    0.1323911
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.1493699   -0.4451423    0.1464026
24 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0273700   -0.3099131    0.3646530
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.3187855   -0.5615360   -0.0760350
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.1378049   -0.4016976    0.1260877
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3672174   -0.5925701   -0.1418647
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1626711   -0.3993850    0.0740429
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.1620989   -0.3326393    0.0084415
24 months   PROBIT           BELARUS                        Medium               High              -0.1134152   -0.2874444    0.0606139
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0202089   -0.1966932    0.1562755
24 months   PROVIDE          BANGLADESH                     Medium               High               0.0928225   -0.1232721    0.3089171
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0331015   -0.2684543    0.2022513
24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0350822   -0.2050975    0.2752619


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.1751072   -0.4358623    0.0856478
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0041443   -0.2496858    0.2413972
Birth       COHORTS          INDIA                          High                 NA                -0.1203935   -0.2120321   -0.0287549
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0117694   -0.0644318    0.0879706
Birth       EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.2451550    0.0529152    0.4373948
Birth       IRC              INDIA                          High                 NA                -0.1138159   -0.3508583    0.1232264
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0150627   -0.0237475    0.0538729
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0183791   -0.0628947    0.0996530
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.0730332   -0.2795592    0.1334927
Birth       MAL-ED           BRAZIL                         High                 NA                -0.2686361   -0.7893198    0.2520475
Birth       MAL-ED           INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       MAL-ED           NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       MAL-ED           PERU                           High                 NA                 0.0255966   -0.1601337    0.2113268
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.0322887   -0.3406413    0.2760640
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0902348   -0.2550327    0.0745630
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0835756   -0.0380516    0.2052028
Birth       PROBIT           BELARUS                        High                 NA                 0.0025810   -0.0572851    0.0624472
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0030592   -0.1097579    0.1036396
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0672163   -0.2833616    0.1489291
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0025298   -0.0266159    0.0316755
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0123675   -0.1853508    0.1606158
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0457786   -0.2808875    0.1893303
6 months    COHORTS          INDIA                          High                 NA                -0.2559835   -0.3586514   -0.1533157
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0268967   -0.0391368    0.0929301
6 months    EE               PAKISTAN                       High                 NA                -0.0873223   -0.4502643    0.2756197
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5650980   -0.8660750   -0.2641210
6 months    Guatemala BSC    GUATEMALA                      High                 NA                 0.0638587   -0.0744673    0.2021847
6 months    IRC              INDIA                          High                 NA                -0.1423234   -0.3490548    0.0644080
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0296867   -0.0721825    0.0128090
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0679119   -0.1336793   -0.0021445
6 months    LCNI-5           MALAWI                         High                 NA                -0.1352780   -0.2311541   -0.0394019
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0310208   -0.2128978    0.1508561
6 months    MAL-ED           BRAZIL                         High                 NA                -0.1986367   -0.4294743    0.0322010
6 months    MAL-ED           INDIA                          High                 NA                 0.0217731   -0.1815754    0.2251216
6 months    MAL-ED           NEPAL                          High                 NA                -0.3870707   -0.5999593   -0.1741822
6 months    MAL-ED           PERU                           High                 NA                -0.0824868   -0.2688769    0.1039032
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1691348   -0.4037140    0.0654445
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.1570992   -0.3075117   -0.0066866
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0597970   -0.1714565    0.0518625
6 months    PROBIT           BELARUS                        High                 NA                -0.0212092   -0.0860080    0.0435895
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0344915   -0.1767236    0.1077405
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0107253   -0.1179838    0.1394344
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2446073   -0.6014183    0.1122037
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0123165   -0.0792440    0.1038770
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0547702   -0.0847823   -0.0247581
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.1623322   -0.2802908   -0.0443735
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0258788   -0.1050214    0.1567789
24 months   COHORTS          INDIA                          High                 NA                -0.3602177   -0.4670425   -0.2533929
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0056926   -0.0674755    0.0788608
24 months   EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.2509014   -0.5339484    0.0321457
24 months   IRC              INDIA                          High                 NA                -0.0964319   -0.2354194    0.0425556
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0069645   -0.0552613    0.0691903
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0088229   -0.0462454    0.0638911
24 months   LCNI-5           MALAWI                         High                 NA                -0.2288744   -0.3358469   -0.1219020
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1648514   -0.3491565    0.0194538
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2005438   -0.4744416    0.0733540
24 months   MAL-ED           INDIA                          High                 NA                -0.0047696   -0.2038784    0.1943392
24 months   MAL-ED           NEPAL                          High                 NA                -0.2614703   -0.4936718   -0.0292689
24 months   MAL-ED           PERU                           High                 NA                -0.0411867   -0.2033586    0.1209852
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0619636   -0.2629966    0.1390694
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.1485665   -0.3040055    0.0068725
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1630999   -0.2910085   -0.0351913
24 months   PROBIT           BELARUS                        High                 NA                -0.1049453   -0.2399653    0.0300746
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0555992   -0.0503422    0.1615406
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0004056   -0.1151014    0.1159125
