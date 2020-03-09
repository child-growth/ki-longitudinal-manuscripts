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
![](/tmp/e2fbcd6c-791c-43d4-b9b4-6adcaab24ed0/6642069f-a3ec-42a8-8bc8-fe04a8decd0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e2fbcd6c-791c-43d4-b9b4-6adcaab24ed0/6642069f-a3ec-42a8-8bc8-fe04a8decd0d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e2fbcd6c-791c-43d4-b9b4-6adcaab24ed0/6642069f-a3ec-42a8-8bc8-fe04a8decd0d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.3416947   -0.7516383    0.0682489
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.4609549   -1.0853630    0.1634531
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -1.0242265   -1.6934451   -0.3550079
Birth       COHORTS          GUATEMALA                      High                 NA                -1.0658476   -1.3275438   -0.8041513
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0450671   -1.1897250   -0.9004091
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.0368570   -1.2315438   -0.8421702
Birth       COHORTS          INDIA                          High                 NA                -0.8902027   -0.9934807   -0.7869247
Birth       COHORTS          INDIA                          Low                  NA                -0.9553749   -1.0294562   -0.8812935
Birth       COHORTS          INDIA                          Medium               NA                -0.9759798   -1.0207217   -0.9312379
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7655351   -0.8548823   -0.6761879
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.7397212   -0.8421633   -0.6372791
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.7097066   -0.8048051   -0.6146080
Birth       EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.3571007   -1.5767974   -1.1374040
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1027044   -1.2096175   -0.9957914
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1829069   -1.4489295   -0.9168843
Birth       IRC              INDIA                          High                 NA                -0.8836616   -1.1757174   -0.5916058
Birth       IRC              INDIA                          Low                  NA                -1.0246892   -1.3083946   -0.7409838
Birth       IRC              INDIA                          Medium               NA                -1.1111994   -1.3806553   -0.8417434
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.8002502   -0.8458255   -0.7546748
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.8070481   -0.8394738   -0.7746224
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7636755   -0.8001928   -0.7271581
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.6778696   -0.7925756   -0.5631636
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.7207058   -0.8180947   -0.6233168
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6869235   -0.7844193   -0.5894278
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.7930218   -1.0147779   -0.5712658
Birth       MAL-ED           BANGLADESH                     Low                  NA                -0.9014627   -1.1823428   -0.6205826
Birth       MAL-ED           BANGLADESH                     Medium               NA                -0.9978718   -1.4094338   -0.5863099
Birth       MAL-ED           BRAZIL                         High                 NA                 0.5816819   -0.0473775    1.2107413
Birth       MAL-ED           BRAZIL                         Low                  NA                 0.7455796    0.1635317    1.3276274
Birth       MAL-ED           BRAZIL                         Medium               NA                 0.0649287   -0.3949461    0.5248035
Birth       MAL-ED           INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       MAL-ED           INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       MAL-ED           INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       MAL-ED           NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       MAL-ED           NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       MAL-ED           NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       MAL-ED           PERU                           High                 NA                -0.1146434   -0.3104721    0.0811852
Birth       MAL-ED           PERU                           Low                  NA                 0.1215615   -0.1172924    0.3604154
Birth       MAL-ED           PERU                           Medium               NA                -0.1716902   -0.3989136    0.0555332
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.2190468   -0.5635321    0.1254385
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.1369659   -0.4674561    0.1935243
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.3192468   -0.8193273    0.1808337
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       NIH-Birth        BANGLADESH                     High                 NA                -1.3006160   -1.4910282   -1.1102038
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -1.3147333   -1.4596280   -1.1698386
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -1.4509812   -1.6228129   -1.2791495
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.3439311   -1.4775562   -1.2103059
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2500371   -1.4098868   -1.0901875
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.1869011   -1.3403626   -1.0334397
Birth       PROBIT           BELARUS                        High                 NA                -1.1283170   -1.3377465   -0.9188875
Birth       PROBIT           BELARUS                        Low                  NA                -1.1533460   -1.3902341   -0.9164578
Birth       PROBIT           BELARUS                        Medium               NA                -1.1569430   -1.3617846   -0.9521014
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.3172438   -1.4421574   -1.1923301
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.2120239   -1.3577975   -1.0662504
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.3211495   -1.4597523   -1.1825468
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6028291   -0.7854786   -0.4201796
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.6344974   -0.8581833   -0.4108114
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6681530   -0.9320727   -0.4042332
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5137078   -0.5535891   -0.4738266
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4711836   -0.5323498   -0.4100174
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5223534   -0.5742230   -0.4704839
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.4930285   -0.7232790   -0.2627781
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5346329   -0.8009571   -0.2683088
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4766761   -0.7794465   -0.1739056
6 months    COHORTS          GUATEMALA                      High                 NA                 0.2356001    0.0110742    0.4601260
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.2610955    0.1552994    0.3668916
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.2190412    0.0776635    0.3604190
6 months    COHORTS          INDIA                          High                 NA                -0.4374692   -0.5433937   -0.3315447
6 months    COHORTS          INDIA                          Low                  NA                -0.8256002   -0.8998884   -0.7513120
6 months    COHORTS          INDIA                          Medium               NA                -0.6516533   -0.6976786   -0.6056281
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.3467304   -0.4210811   -0.2723796
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.3280472   -0.4208328   -0.2352615
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.2662874   -0.3521286   -0.1804462
6 months    EE               PAKISTAN                       High                 NA                -0.9030952   -1.2957010   -0.5104894
6 months    EE               PAKISTAN                       Low                  NA                -0.8056509   -0.9308861   -0.6804156
6 months    EE               PAKISTAN                       Medium               NA                -0.8156248   -1.1716512   -0.4595984
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1041488   -0.4079315    0.1996338
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6400381   -0.7457484   -0.5343279
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6273543   -0.9697286   -0.2849800
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0948602   -0.2654853    0.0757650
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                 0.0671818   -0.1784401    0.3128036
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -0.1064203   -0.3162824    0.1034418
6 months    IRC              INDIA                          High                 NA                -0.4597760   -0.7039437   -0.2156083
6 months    IRC              INDIA                          Low                  NA                -0.5736898   -0.7911014   -0.3562781
6 months    IRC              INDIA                          Medium               NA                -0.7523716   -0.9978696   -0.5068736
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5596530   -0.6049040   -0.5144020
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6151870   -0.6544756   -0.5758984
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5823070   -0.6246021   -0.5400119
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3267419   -0.3992686   -0.2542152
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.5189777   -0.5970906   -0.4408648
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.3687592   -0.4412591   -0.2962592
6 months    LCNI-5           MALAWI                         High                 NA                 0.5801268    0.4572795    0.7029742
6 months    LCNI-5           MALAWI                         Low                  NA                 0.3527014    0.2292883    0.4761145
6 months    LCNI-5           MALAWI                         Medium               NA                 0.3750782    0.2387023    0.5114542
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0524437   -0.2743649    0.1694775
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.1734555   -0.4760283    0.1291173
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0230258   -0.2374329    0.1913813
6 months    MAL-ED           BRAZIL                         High                 NA                 1.1224053    0.8445891    1.4002214
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.6517898    0.3259285    0.9776510
6 months    MAL-ED           BRAZIL                         Medium               NA                 1.0331200    0.7693709    1.2968690
6 months    MAL-ED           INDIA                          High                 NA                -0.7281159   -0.9637777   -0.4924541
6 months    MAL-ED           INDIA                          Low                  NA                -0.7012615   -0.9487434   -0.4537796
6 months    MAL-ED           INDIA                          Medium               NA                -0.6486703   -0.8776381   -0.4197025
6 months    MAL-ED           NEPAL                          High                 NA                 0.4887727    0.2426488    0.7348967
6 months    MAL-ED           NEPAL                          Low                  NA                 0.0988302   -0.0981911    0.2958515
6 months    MAL-ED           NEPAL                          Medium               NA                 0.0120489   -0.2577348    0.2818326
6 months    MAL-ED           PERU                           High                 NA                 1.1597760    0.9414771    1.3780749
6 months    MAL-ED           PERU                           Low                  NA                 1.0082290    0.7924203    1.2240377
6 months    MAL-ED           PERU                           Medium               NA                 1.0363484    0.8345195    1.2381773
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.7007045    0.4377645    0.9636444
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3856040    0.1616179    0.6095902
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.6641923    0.3412621    0.9871226
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.2602679   -0.4465121   -0.0740237
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -0.5695650   -0.7089315   -0.4301986
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -0.4285387   -0.5866128   -0.2704647
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1147743   -0.0170696    0.2466182
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.1454132   -0.2922473    0.0014210
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                 0.1648058    0.0151767    0.3144350
6 months    PROBIT           BELARUS                        High                 NA                 0.5852610    0.5229734    0.6475487
6 months    PROBIT           BELARUS                        Low                  NA                 0.5504761    0.4821200    0.6188322
6 months    PROBIT           BELARUS                        Medium               NA                 0.5768468    0.5108224    0.6428712
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1602908   -0.3312022    0.0106207
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.3459070   -0.5167838   -0.1750303
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1343855   -0.3062129    0.0374419
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.6764337   -0.7613981   -0.5914693
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.8032634   -0.9562022   -0.6503246
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.5564764   -0.7970560   -0.3158967
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.7803097   -1.1083439   -0.4522755
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.0489193   -1.1777958   -0.9200427
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -0.9231222   -1.3629350   -0.4833094
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0662658   -0.0396218    0.1721533
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1500073   -0.0884953    0.3885100
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0818243    0.0190647    0.1445838
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3658972    0.3261009    0.4056936
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1792909    0.1123803    0.2462015
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2581978    0.2022124    0.3141832
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.3949271   -0.5456824   -0.2441718
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7696588   -0.9639098   -0.5754078
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.5855756   -0.7841034   -0.3870478
24 months   COHORTS          GUATEMALA                      High                 NA                -0.2280664   -0.3752976   -0.0808352
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.3048666   -0.3863443   -0.2233888
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.2610055   -0.3708415   -0.1511695
24 months   COHORTS          INDIA                          High                 NA                -0.2382621   -0.3498258   -0.1266984
24 months   COHORTS          INDIA                          Low                  NA                -0.9716106   -1.0592948   -0.8839264
24 months   COHORTS          INDIA                          Medium               NA                -0.5605919   -0.6090508   -0.5121331
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.6047948   -0.6837836   -0.5258060
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6860891   -0.7623768   -0.6098014
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6059328   -0.6767772   -0.5350883
24 months   EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.9107670   -1.2205205   -0.6010136
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.1118144   -1.2147947   -1.0088341
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.2346168   -1.5030074   -0.9662262
24 months   IRC              INDIA                          High                 NA                -0.6545410   -0.8203608   -0.4887211
24 months   IRC              INDIA                          Low                  NA                -0.7215609   -0.8804550   -0.5626669
24 months   IRC              INDIA                          Medium               NA                -0.8587068   -1.0019082   -0.7155054
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.3060155   -1.3714810   -1.2405501
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2431039   -1.2908363   -1.1953715
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3180207   -1.3726470   -1.2633944
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2269598   -1.2877121   -1.1662074
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2429172   -1.3069920   -1.1788424
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2166142   -1.2842117   -1.1490167
24 months   LCNI-5           MALAWI                         High                 NA                 0.1916015    0.0527013    0.3305017
24 months   LCNI-5           MALAWI                         Low                  NA                -0.2387150   -0.3717527   -0.1056773
24 months   LCNI-5           MALAWI                         Medium               NA                -0.1320810   -0.2822841    0.0181221
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.6192496   -0.8685938   -0.3699054
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0046011   -1.2342711   -0.7749312
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.7241332   -0.9637596   -0.4845069
24 months   MAL-ED           BRAZIL                         High                 NA                 0.7009912    0.3603803    1.0416021
24 months   MAL-ED           BRAZIL                         Low                  NA                 0.2395861   -0.2261749    0.7053471
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.4361409    0.1238190    0.7484628
24 months   MAL-ED           INDIA                          High                 NA                -0.9478077   -1.1671012   -0.7285141
24 months   MAL-ED           INDIA                          Low                  NA                -1.0760952   -1.2844515   -0.8677388
24 months   MAL-ED           INDIA                          Medium               NA                -0.8237848   -1.0348468   -0.6127228
24 months   MAL-ED           NEPAL                          High                 NA                -0.1063441   -0.3717878    0.1590995
24 months   MAL-ED           NEPAL                          Low                  NA                -0.3697347   -0.5388226   -0.2006468
24 months   MAL-ED           NEPAL                          Medium               NA                -0.4640523   -0.6738651   -0.2542395
24 months   MAL-ED           PERU                           High                 NA                 0.1801986   -0.0221742    0.3825713
24 months   MAL-ED           PERU                           Low                  NA                 0.1776456   -0.0505191    0.4058102
24 months   MAL-ED           PERU                           Medium               NA                -0.0225882   -0.2444209    0.1992446
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.4899506    0.2473404    0.7325608
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3282503    0.1583965    0.4981040
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.4804396    0.2396632    0.7212161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.7860337   -0.9663345   -0.6057329
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -1.0659184   -1.2173354   -0.9145014
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.8897326   -1.0784481   -0.7010172
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.4521373   -0.6240399   -0.2802346
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8519448   -1.0101325   -0.6937571
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.6220345   -0.7895036   -0.4545654
24 months   PROBIT           BELARUS                        High                 NA                 0.8048278    0.6145092    0.9951465
24 months   PROBIT           BELARUS                        Low                  NA                 0.6431547    0.4808971    0.8054123
24 months   PROBIT           BELARUS                        Medium               NA                 0.6904455    0.5943579    0.7865332
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.9128704   -1.0521840   -0.7735568
24 months   PROVIDE          BANGLADESH                     Low                  NA                -0.9615494   -1.1041372   -0.8189616
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8640375   -1.0364858   -0.6915892
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1817363   -1.3280266   -1.0354460
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2206398   -1.4106160   -1.0306637
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1550883   -1.3482372   -0.9619393


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
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.1192603   -0.8669056    0.6283850
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.6825318   -1.4739522    0.1088885
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.0207805   -0.2714317    0.3129927
Birth       COHORTS          GUATEMALA                      Medium               High               0.0289906   -0.2900693    0.3480504
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.0651721   -0.1893738    0.0590295
Birth       COHORTS          INDIA                          Medium               High              -0.0857771   -0.1951372    0.0235831
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.0258139   -0.1082484    0.1598762
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0558285   -0.0725448    0.1842018
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2543963    0.0159500    0.4928426
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1741938   -0.1656922    0.5140798
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High              -0.1410276   -0.5135634    0.2315082
Birth       IRC              INDIA                          Medium               High              -0.2275377   -0.5918086    0.1367331
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0067980   -0.0591042    0.0455082
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0365747   -0.0196965    0.0928458
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0428362   -0.1909398    0.1052675
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0090539   -0.1568788    0.1387709
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.1084409   -0.4680260    0.2511443
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.2048500   -0.6705183    0.2608183
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High               0.1638977   -0.6818277    1.0096230
Birth       MAL-ED           BRAZIL                         Medium               High              -0.5167532   -1.2883342    0.2548278
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       MAL-ED           INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       MAL-ED           NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.2362049   -0.0734401    0.5458499
Birth       MAL-ED           PERU                           Medium               High              -0.0570468   -0.3573464    0.2432528
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0820809   -0.3958391    0.5600008
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.1002001   -0.7066528    0.5062527
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0141173   -0.2532615    0.2250270
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.1503652   -0.4071112    0.1063808
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0938939   -0.1090600    0.2968478
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.1570299   -0.0406760    0.3547358
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0250290   -0.1132361    0.0631781
Birth       PROBIT           BELARUS                        Medium               High              -0.0286260   -0.0998290    0.0425769
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.1052199   -0.0813671    0.2918068
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0039058   -0.1841729    0.1763614
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0316683   -0.2934492    0.2301126
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0653239   -0.3786309    0.2479831
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0425242   -0.0282330    0.1132814
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0086456   -0.0714775    0.0541863
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.0416044   -0.3919989    0.3087901
6 months    CMC-V-BCS-2002   INDIA                          Medium               High               0.0163525   -0.3608866    0.3935916
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High               0.0254954   -0.2225106    0.2735014
6 months    COHORTS          GUATEMALA                      Medium               High              -0.0165588   -0.2814777    0.2483600
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3881310   -0.5177200   -0.2585421
6 months    COHORTS          INDIA                          Medium               High              -0.2141841   -0.3298813   -0.0984870
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High               0.0186832   -0.0999234    0.1372898
6 months    COHORTS          PHILIPPINES                    Medium               High               0.0804430   -0.0326819    0.1935678
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High               0.0974444   -0.3153701    0.5102589
6 months    EE               PAKISTAN                       Medium               High               0.0874704   -0.4413857    0.6163266
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.5358893   -0.8576831   -0.2140955
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.5232055   -0.9812782   -0.0651328
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High               0.1620419   -0.1380735    0.4621574
6 months    Guatemala BSC    GUATEMALA                      Medium               High              -0.0115601   -0.2827632    0.2596429
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.1139137   -0.4406736    0.2128461
6 months    IRC              INDIA                          Medium               High              -0.2925956   -0.6404035    0.0552124
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0555340   -0.1133036    0.0022356
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0226540   -0.0825231    0.0372151
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1922358   -0.2967319   -0.0877398
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0420173   -0.1412246    0.0571900
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.2274254   -0.4015775   -0.0532733
6 months    LCNI-5           MALAWI                         Medium               High              -0.2050486   -0.3886634   -0.0214338
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1210118   -0.4983551    0.2563315
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0294179   -0.2808495    0.3396853
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.4706155   -0.8976842   -0.0435469
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0892853   -0.4725135    0.2939428
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0268544   -0.3153962    0.3691050
6 months    MAL-ED           INDIA                          Medium               High               0.0794456   -0.2496568    0.4085480
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.3899425   -0.7039327   -0.0759524
6 months    MAL-ED           NEPAL                          Medium               High              -0.4767238   -0.8406900   -0.1127577
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.1515470   -0.4573820    0.1542880
6 months    MAL-ED           PERU                           Medium               High              -0.1234276   -0.4201716    0.1733164
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.3151004   -0.6596504    0.0294495
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0365121   -0.4525627    0.3795384
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.3092971   -0.5422053   -0.0763889
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.1682708   -0.4128443    0.0763027
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.2601874   -0.4567185   -0.0636564
6 months    NIH-Crypto       BANGLADESH                     Medium               High               0.0500316   -0.1492141    0.2492772
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.0347850   -0.1153309    0.0457609
6 months    PROBIT           BELARUS                        Medium               High              -0.0084142   -0.0823824    0.0655540
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.1856163   -0.4267116    0.0554790
6 months    PROVIDE          BANGLADESH                     Medium               High               0.0259052   -0.2159230    0.2677334
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1268297   -0.2756409    0.0219814
6 months    SAS-CompFeed     INDIA                          Medium               High               0.1199573   -0.1075551    0.3474698
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2686096   -0.6212446    0.0840254
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1428125   -0.6912382    0.4056132
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0837416   -0.1768968    0.3443800
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0155585   -0.1071917    0.1383086
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1866064   -0.2641626   -0.1090501
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.1076994   -0.1760824   -0.0393165
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.3747317   -0.6208945   -0.1285689
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.1906485   -0.4403676    0.0590707
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.0768002   -0.2450801    0.0914798
24 months   COHORTS          GUATEMALA                      Medium               High              -0.0329391   -0.2166477    0.1507695
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.7333485   -0.8760835   -0.5906135
24 months   COHORTS          INDIA                          Medium               High              -0.3223298   -0.4443238   -0.2003359
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.0812943   -0.1904645    0.0278759
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.0011380   -0.1062479    0.1039720
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2010474   -0.5277714    0.1256767
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.3238497   -0.7336601    0.0859606
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.0670199   -0.2957466    0.1617067
24 months   IRC              INDIA                          Medium               High              -0.2041659   -0.4221665    0.0138348
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High               0.0629116   -0.0159906    0.1418138
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0120052   -0.0993386    0.0753282
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0159575   -0.1008016    0.0688867
24 months   JiVitA-4         BANGLADESH                     Medium               High               0.0103456   -0.0825428    0.1032339
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.4303165   -0.6219007   -0.2387323
24 months   LCNI-5           MALAWI                         Medium               High              -0.3236825   -0.5276808   -0.1196842
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.3853516   -0.7241119   -0.0465912
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1048837   -0.4511448    0.2413774
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4614051   -1.0404339    0.1176237
24 months   MAL-ED           BRAZIL                         Medium               High              -0.2648503   -0.7287645    0.1990640
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.1282875   -0.4300507    0.1734757
24 months   MAL-ED           INDIA                          Medium               High               0.1240229   -0.1798373    0.4278831
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.2633906   -0.5783758    0.0515947
24 months   MAL-ED           NEPAL                          Medium               High              -0.3577081   -0.6963963   -0.0190200
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.0025530   -0.3067529    0.3016469
24 months   MAL-ED           PERU                           Medium               High              -0.2027867   -0.5029366    0.0973631
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.1617003   -0.4554584    0.1320578
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0095109   -0.3505259    0.3315040
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.2798847   -0.5155683   -0.0442011
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.1036989   -0.3646016    0.1572037
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3998076   -0.6332125   -0.1664026
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1698972   -0.4082688    0.0684744
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.1616731   -0.3252285    0.0018823
24 months   PROBIT           BELARUS                        Medium               High              -0.1143823   -0.2896733    0.0609087
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0486790   -0.2463941    0.1490361
24 months   PROVIDE          BANGLADESH                     Medium               High               0.0488329   -0.1712259    0.2688918
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0389035   -0.2783080    0.2005009
24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0266480   -0.2158073    0.2691033


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.1231309   -0.4047346    0.1584728
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0067968   -0.2284247    0.2420182
Birth       COHORTS          INDIA                          High                 NA                -0.0929250   -0.1922638    0.0064139
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0228100   -0.0540702    0.0996902
Birth       EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.2388378    0.0285843    0.4490913
Birth       IRC              INDIA                          High                 NA                -0.1269215   -0.3550620    0.1012191
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0222671   -0.0182546    0.0627887
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0116787   -0.1068156    0.0834581
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.1178925   -0.3176145    0.0818296
Birth       MAL-ED           BRAZIL                         High                 NA                -0.1787787   -0.6941276    0.3365703
Birth       MAL-ED           INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       MAL-ED           NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       MAL-ED           PERU                           High                 NA                 0.0626259   -0.1191710    0.2444227
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0264634   -0.2875996    0.3405265
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0493057   -0.2076598    0.1090483
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0997797   -0.0132811    0.2128405
Birth       PROBIT           BELARUS                        High                 NA                -0.0208612   -0.0766121    0.0348897
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0187851   -0.0889220    0.1264923
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0672163   -0.2833616    0.1489291
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0015849   -0.0314970    0.0283273
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0096481   -0.1843358    0.1650397
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0383283   -0.2437761    0.1671194
6 months    COHORTS          INDIA                          High                 NA                -0.2631615   -0.3673502   -0.1589728
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0528870   -0.0129459    0.1187200
6 months    EE               PAKISTAN                       High                 NA                 0.1244976   -0.2706829    0.5196781
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5046331   -0.7981256   -0.2111405
6 months    Guatemala BSC    GUATEMALA                      High                 NA                 0.0379769   -0.0973461    0.1732999
6 months    IRC              INDIA                          High                 NA                -0.1391537   -0.3455927    0.0672853
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0336210   -0.0747190    0.0074770
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0636139   -0.1297066    0.0024787
6 months    LCNI-5           MALAWI                         High                 NA                -0.1401514   -0.2389574   -0.0413455
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0199458   -0.2035355    0.1636439
6 months    MAL-ED           BRAZIL                         High                 NA                -0.1479461   -0.3769719    0.0810796
6 months    MAL-ED           INDIA                          High                 NA                 0.0421343   -0.1694734    0.2537420
6 months    MAL-ED           NEPAL                          High                 NA                -0.3664575   -0.5860161   -0.1468989
6 months    MAL-ED           PERU                           High                 NA                -0.1031216   -0.2896042    0.0833611
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1585260   -0.3909297    0.0738777
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.1871359   -0.3437391   -0.0305327
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0850121   -0.2002393    0.0302152
6 months    PROBIT           BELARUS                        High                 NA                -0.0111511   -0.0760280    0.0537258
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0387999   -0.1865674    0.1089676
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0107253   -0.1179838    0.1394344
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2318482   -0.5545561    0.0908597
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0144566   -0.0768474    0.1057606
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0557865   -0.0867371   -0.0248360
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.1622234   -0.2810565   -0.0433904
24 months   COHORTS          GUATEMALA                      High                 NA                -0.0484411   -0.1844550    0.0875728
24 months   COHORTS          INDIA                          High                 NA                -0.4003985   -0.5104876   -0.2903093
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0051644   -0.0747942    0.0644655
24 months   EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.2264506   -0.5229286    0.0700274
24 months   IRC              INDIA                          High                 NA                -0.0912740   -0.2283054    0.0457574
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0085411   -0.0535521    0.0706344
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0026541   -0.0514596    0.0567678
24 months   LCNI-5           MALAWI                         High                 NA                -0.2357472   -0.3427883   -0.1287061
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1434405   -0.3392495    0.0523685
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2389773   -0.5133763    0.0354217
24 months   MAL-ED           INDIA                          High                 NA                 0.0039132   -0.1880353    0.1958617
24 months   MAL-ED           NEPAL                          High                 NA                -0.2519892   -0.4843708   -0.0196076
24 months   MAL-ED           PERU                           High                 NA                -0.0689944   -0.2504970    0.1125082
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0809205   -0.2815247    0.1196838
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.1255453   -0.2774951    0.0264044
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1582129   -0.2935658   -0.0228601
24 months   PROBIT           BELARUS                        High                 NA                -0.1066872   -0.2455611    0.0321867
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0200034   -0.0979281    0.1379350
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0008041   -0.1122858    0.1106775
