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

agecat      studyid          country                        meducyrs    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          High            51      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Low             16      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Medium          25      92  haz              
Birth       COHORTS          GUATEMALA                      High           178     842  haz              
Birth       COHORTS          GUATEMALA                      Low            391     842  haz              
Birth       COHORTS          GUATEMALA                      Medium         273     842  haz              
Birth       COHORTS          INDIA                          High           678    5216  haz              
Birth       COHORTS          INDIA                          Low           1756    5216  haz              
Birth       COHORTS          INDIA                          Medium        2782    5216  haz              
Birth       COHORTS          PHILIPPINES                    High          1169    3050  haz              
Birth       COHORTS          PHILIPPINES                    Low            900    3050  haz              
Birth       COHORTS          PHILIPPINES                    Medium         981    3050  haz              
Birth       EE               PAKISTAN                       High             7     239  haz              
Birth       EE               PAKISTAN                       Low            215     239  haz              
Birth       EE               PAKISTAN                       Medium          17     239  haz              
Birth       GMS-Nepal        NEPAL                          High            85     693  haz              
Birth       GMS-Nepal        NEPAL                          Low            485     693  haz              
Birth       GMS-Nepal        NEPAL                          Medium         123     693  haz              
Birth       IRC              INDIA                          High           113     388  haz              
Birth       IRC              INDIA                          Low            142     388  haz              
Birth       IRC              INDIA                          Medium         133     388  haz              
Birth       JiVitA-3         BANGLADESH                     High          6683   22427  haz              
Birth       JiVitA-3         BANGLADESH                     Low           8795   22427  haz              
Birth       JiVitA-3         BANGLADESH                     Medium        6949   22427  haz              
Birth       JiVitA-4         BANGLADESH                     High           933    2817  haz              
Birth       JiVitA-4         BANGLADESH                     Low            990    2817  haz              
Birth       JiVitA-4         BANGLADESH                     Medium         894    2817  haz              
Birth       MAL-ED           BANGLADESH                     High            67     187  haz              
Birth       MAL-ED           BANGLADESH                     Low             65     187  haz              
Birth       MAL-ED           BANGLADESH                     Medium          55     187  haz              
Birth       MAL-ED           BRAZIL                         High            18      65  haz              
Birth       MAL-ED           BRAZIL                         Low             17      65  haz              
Birth       MAL-ED           BRAZIL                         Medium          30      65  haz              
Birth       MAL-ED           INDIA                          High             8      40  haz              
Birth       MAL-ED           INDIA                          Low             18      40  haz              
Birth       MAL-ED           INDIA                          Medium          14      40  haz              
Birth       MAL-ED           NEPAL                          High             5      25  haz              
Birth       MAL-ED           NEPAL                          Low             12      25  haz              
Birth       MAL-ED           NEPAL                          Medium           8      25  haz              
Birth       MAL-ED           PERU                           High            68     233  haz              
Birth       MAL-ED           PERU                           Low             84     233  haz              
Birth       MAL-ED           PERU                           Medium          81     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   High            35     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   Low             62     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   Medium          26     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     105  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             34     105  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          64     105  haz              
Birth       NIH-Birth        BANGLADESH                     High           170     608  haz              
Birth       NIH-Birth        BANGLADESH                     Low            224     608  haz              
Birth       NIH-Birth        BANGLADESH                     Medium         214     608  haz              
Birth       NIH-Crypto       BANGLADESH                     High           247     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Low            232     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Medium         253     732  haz              
Birth       PROBIT           BELARUS                        High          2249   13893  haz              
Birth       PROBIT           BELARUS                        Low           4965   13893  haz              
Birth       PROBIT           BELARUS                        Medium        6679   13893  haz              
Birth       PROVIDE          BANGLADESH                     High           171     539  haz              
Birth       PROVIDE          BANGLADESH                     Low            165     539  haz              
Birth       PROVIDE          BANGLADESH                     Medium         203     539  haz              
Birth       SAS-CompFeed     INDIA                          High           248    1252  haz              
Birth       SAS-CompFeed     INDIA                          Low            587    1252  haz              
Birth       SAS-CompFeed     INDIA                          Medium         417    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       High          7515   13855  haz              
Birth       ZVITAMBO         ZIMBABWE                       Low           2912   13855  haz              
Birth       ZVITAMBO         ZIMBABWE                       Medium        3428   13855  haz              
6 months    CMC-V-BCS-2002   INDIA                          High           157     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          Low            105     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          Medium         107     369  haz              
6 months    COHORTS          GUATEMALA                      High           185     952  haz              
6 months    COHORTS          GUATEMALA                      Low            449     952  haz              
6 months    COHORTS          GUATEMALA                      Medium         318     952  haz              
6 months    COHORTS          INDIA                          High           736    5413  haz              
6 months    COHORTS          INDIA                          Low           1777    5413  haz              
6 months    COHORTS          INDIA                          Medium        2900    5413  haz              
6 months    COHORTS          PHILIPPINES                    High          1014    2708  haz              
6 months    COHORTS          PHILIPPINES                    Low            826    2708  haz              
6 months    COHORTS          PHILIPPINES                    Medium         868    2708  haz              
6 months    EE               PAKISTAN                       High            15     370  haz              
6 months    EE               PAKISTAN                       Low            322     370  haz              
6 months    EE               PAKISTAN                       Medium          33     370  haz              
6 months    GMS-Nepal        NEPAL                          High            68     561  haz              
6 months    GMS-Nepal        NEPAL                          Low            399     561  haz              
6 months    GMS-Nepal        NEPAL                          Medium          94     561  haz              
6 months    Guatemala BSC    GUATEMALA                      High           117     277  haz              
6 months    Guatemala BSC    GUATEMALA                      Low             73     277  haz              
6 months    Guatemala BSC    GUATEMALA                      Medium          87     277  haz              
6 months    IRC              INDIA                          High           123     407  haz              
6 months    IRC              INDIA                          Low            146     407  haz              
6 months    IRC              INDIA                          Medium         138     407  haz              
6 months    JiVitA-3         BANGLADESH                     High          5922   16794  haz              
6 months    JiVitA-3         BANGLADESH                     Low           5622   16794  haz              
6 months    JiVitA-3         BANGLADESH                     Medium        5250   16794  haz              
6 months    JiVitA-4         BANGLADESH                     High          1718    4818  haz              
6 months    JiVitA-4         BANGLADESH                     Low           1581    4818  haz              
6 months    JiVitA-4         BANGLADESH                     Medium        1519    4818  haz              
6 months    LCNI-5           MALAWI                         High           298     813  haz              
6 months    LCNI-5           MALAWI                         Low            261     813  haz              
6 months    LCNI-5           MALAWI                         Medium         254     813  haz              
6 months    MAL-ED           BANGLADESH                     High            73     196  haz              
6 months    MAL-ED           BANGLADESH                     Low             64     196  haz              
6 months    MAL-ED           BANGLADESH                     Medium          59     196  haz              
6 months    MAL-ED           BRAZIL                         High            71     208  haz              
6 months    MAL-ED           BRAZIL                         Low             56     208  haz              
6 months    MAL-ED           BRAZIL                         Medium          81     208  haz              
6 months    MAL-ED           INDIA                          High            59     208  haz              
6 months    MAL-ED           INDIA                          Low             72     208  haz              
6 months    MAL-ED           INDIA                          Medium          77     208  haz              
6 months    MAL-ED           NEPAL                          High            53     221  haz              
6 months    MAL-ED           NEPAL                          Low             93     221  haz              
6 months    MAL-ED           NEPAL                          Medium          75     221  haz              
6 months    MAL-ED           PERU                           High            81     272  haz              
6 months    MAL-ED           PERU                           Low             94     272  haz              
6 months    MAL-ED           PERU                           Medium          97     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   High            70     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   Low            127     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   Medium          57     254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             9     203  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             62     203  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         132     203  haz              
6 months    NIH-Birth        BANGLADESH                     High           155     537  haz              
6 months    NIH-Birth        BANGLADESH                     Low            195     537  haz              
6 months    NIH-Birth        BANGLADESH                     Medium         187     537  haz              
6 months    NIH-Crypto       BANGLADESH                     High           240     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Low            229     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Medium         246     715  haz              
6 months    PROBIT           BELARUS                        High          2657   15760  haz              
6 months    PROBIT           BELARUS                        Low           5643   15760  haz              
6 months    PROBIT           BELARUS                        Medium        7460   15760  haz              
6 months    PROVIDE          BANGLADESH                     High           209     604  haz              
6 months    PROVIDE          BANGLADESH                     Low            187     604  haz              
6 months    PROVIDE          BANGLADESH                     Medium         208     604  haz              
6 months    SAS-CompFeed     INDIA                          High           290    1336  haz              
6 months    SAS-CompFeed     INDIA                          Low            597    1336  haz              
6 months    SAS-CompFeed     INDIA                          Medium         449    1336  haz              
6 months    SAS-FoodSuppl    INDIA                          High            35     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Low            304     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Medium          41     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021  haz              
6 months    ZVITAMBO         ZIMBABWE                       High          4702    8655  haz              
6 months    ZVITAMBO         ZIMBABWE                       Low           1795    8655  haz              
6 months    ZVITAMBO         ZIMBABWE                       Medium        2158    8655  haz              
24 months   CMC-V-BCS-2002   INDIA                          High           158     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          Low            105     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          Medium         108     371  haz              
24 months   COHORTS          GUATEMALA                      High           209    1057  haz              
24 months   COHORTS          GUATEMALA                      Low            506    1057  haz              
24 months   COHORTS          GUATEMALA                      Medium         342    1057  haz              
24 months   COHORTS          INDIA                          High           608    4198  haz              
24 months   COHORTS          INDIA                          Low           1272    4198  haz              
24 months   COHORTS          INDIA                          Medium        2318    4198  haz              
24 months   COHORTS          PHILIPPINES                    High           914    2445  haz              
24 months   COHORTS          PHILIPPINES                    Low            744    2445  haz              
24 months   COHORTS          PHILIPPINES                    Medium         787    2445  haz              
24 months   EE               PAKISTAN                       High             6     165  haz              
24 months   EE               PAKISTAN                       Low            142     165  haz              
24 months   EE               PAKISTAN                       Medium          17     165  haz              
24 months   GMS-Nepal        NEPAL                          High            55     485  haz              
24 months   GMS-Nepal        NEPAL                          Low            344     485  haz              
24 months   GMS-Nepal        NEPAL                          Medium          86     485  haz              
24 months   IRC              INDIA                          High           124     409  haz              
24 months   IRC              INDIA                          Low            146     409  haz              
24 months   IRC              INDIA                          Medium         139     409  haz              
24 months   JiVitA-3         BANGLADESH                     High          2927    8621  haz              
24 months   JiVitA-3         BANGLADESH                     Low           3004    8621  haz              
24 months   JiVitA-3         BANGLADESH                     Medium        2690    8621  haz              
24 months   JiVitA-4         BANGLADESH                     High          1696    4741  haz              
24 months   JiVitA-4         BANGLADESH                     Low           1536    4741  haz              
24 months   JiVitA-4         BANGLADESH                     Medium        1509    4741  haz              
24 months   LCNI-5           MALAWI                         High           220     572  haz              
24 months   LCNI-5           MALAWI                         Low            177     572  haz              
24 months   LCNI-5           MALAWI                         Medium         175     572  haz              
24 months   MAL-ED           BANGLADESH                     High            64     171  haz              
24 months   MAL-ED           BANGLADESH                     Low             59     171  haz              
24 months   MAL-ED           BANGLADESH                     Medium          48     171  haz              
24 months   MAL-ED           BRAZIL                         High            62     168  haz              
24 months   MAL-ED           BRAZIL                         Low             42     168  haz              
24 months   MAL-ED           BRAZIL                         Medium          64     168  haz              
24 months   MAL-ED           INDIA                          High            55     199  haz              
24 months   MAL-ED           INDIA                          Low             69     199  haz              
24 months   MAL-ED           INDIA                          Medium          75     199  haz              
24 months   MAL-ED           NEPAL                          High            48     213  haz              
24 months   MAL-ED           NEPAL                          Low             91     213  haz              
24 months   MAL-ED           NEPAL                          Medium          74     213  haz              
24 months   MAL-ED           PERU                           High            59     200  haz              
24 months   MAL-ED           PERU                           Low             74     200  haz              
24 months   MAL-ED           PERU                           Medium          67     200  haz              
24 months   MAL-ED           SOUTH AFRICA                   High            67     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   Low            120     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   Medium          51     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     175  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             54     175  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         114     175  haz              
24 months   NIH-Birth        BANGLADESH                     High           130     429  haz              
24 months   NIH-Birth        BANGLADESH                     Low            153     429  haz              
24 months   NIH-Birth        BANGLADESH                     Medium         146     429  haz              
24 months   NIH-Crypto       BANGLADESH                     High           191     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Low            146     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Medium         177     514  haz              
24 months   PROBIT           BELARUS                        High           664    4035  haz              
24 months   PROBIT           BELARUS                        Low           1407    4035  haz              
24 months   PROBIT           BELARUS                        Medium        1964    4035  haz              
24 months   PROVIDE          BANGLADESH                     High           201     578  haz              
24 months   PROVIDE          BANGLADESH                     Low            174     578  haz              
24 months   PROVIDE          BANGLADESH                     Medium         203     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       High           862    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       Low            345    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       Medium         432    1639  haz              


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
![](/tmp/8097c02e-b626-4e6a-a969-32e810a72785/f904ce90-a069-412d-8a8e-1d3bfcca0795/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8097c02e-b626-4e6a-a969-32e810a72785/f904ce90-a069-412d-8a8e-1d3bfcca0795/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8097c02e-b626-4e6a-a969-32e810a72785/f904ce90-a069-412d-8a8e-1d3bfcca0795/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.9774856   -1.2355988   -0.7193724
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -1.2240494   -1.7649578   -0.6831410
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -1.2860159   -1.8149986   -0.7570331
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0960196   -0.1668571    0.3588963
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1446387    0.0218250    0.2674524
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1624579    0.0039659    0.3209499
Birth       COHORTS          INDIA                          High                 NA                -0.5466195   -0.6490685   -0.4441704
Birth       COHORTS          INDIA                          Low                  NA                -0.6826388   -0.7512124   -0.6140652
Birth       COHORTS          INDIA                          Medium               NA                -0.6584596   -0.7057140   -0.6112052
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2468620   -0.3225615   -0.1711626
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.3129234   -0.3920399   -0.2338069
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2608572   -0.3465500   -0.1751645
Birth       EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.1307324   -1.4080094   -0.8534554
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1146605   -1.2134400   -1.0158810
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0302332   -1.2391099   -0.8213565
Birth       IRC              INDIA                          High                 NA                -0.3403134   -0.5958975   -0.0847293
Birth       IRC              INDIA                          Low                  NA                -0.3259347   -0.5629391   -0.0889304
Birth       IRC              INDIA                          Medium               NA                -0.2461615   -0.5184928    0.0261697
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5947518   -1.6341211   -1.5553825
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.6265166   -1.6597752   -1.5932579
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.6035595   -1.6383772   -1.5687419
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4671997   -1.5674914   -1.3669080
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.4917723   -1.5904924   -1.3930523
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5513187   -1.6608168   -1.4418207
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.0330972   -1.2693999   -0.7967945
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1294157   -1.4127899   -0.8460415
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.1471900   -1.4641880   -0.8301920
Birth       MAL-ED           BRAZIL                         High                 NA                -0.5720739   -0.9297957   -0.2143522
Birth       MAL-ED           BRAZIL                         Low                  NA                -0.6832690   -1.2540713   -0.1124668
Birth       MAL-ED           BRAZIL                         Medium               NA                -0.5945464   -1.0944865   -0.0946062
Birth       MAL-ED           INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       MAL-ED           INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       MAL-ED           INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       MAL-ED           NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       MAL-ED           NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       MAL-ED           NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       MAL-ED           PERU                           High                 NA                -0.9414251   -1.1346165   -0.7482337
Birth       MAL-ED           PERU                           Low                  NA                -0.8421554   -1.0124596   -0.6718513
Birth       MAL-ED           PERU                           Medium               NA                -0.8640159   -1.0327591   -0.6952727
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.3360499   -0.6576237   -0.0144760
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.7584745   -1.0654425   -0.4515066
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.6690091   -1.1171531   -0.2208651
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770160   -0.6572697
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851562   -1.5881883   -0.9821242
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.9002985   -1.0517380   -0.7488590
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -0.9741479   -1.0965447   -0.8517511
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -0.9402378   -1.0766060   -0.8038695
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8796077   -1.0172120   -0.7420034
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.9417244   -1.1004641   -0.7829847
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9180605   -1.0489398   -0.7871812
Birth       PROBIT           BELARUS                        High                 NA                 1.3281170    1.1486338    1.5076001
Birth       PROBIT           BELARUS                        Low                  NA                 1.3097242    1.1291210    1.4903274
Birth       PROBIT           BELARUS                        Medium               NA                 1.3192103    1.1509241    1.4874965
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9364298   -1.0532210   -0.8196386
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.8913445   -1.0227445   -0.7599444
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.9053636   -1.0239763   -0.7867509
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4271753   -1.5439499   -1.3104006
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.5082778   -1.6199626   -1.3965930
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4048813   -1.5364924   -1.2732701
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4916147   -0.5230138   -0.4602156
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5392355   -0.5907260   -0.4877451
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4971552   -0.5422231   -0.4520873
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -1.3017946   -1.5201158   -1.0834734
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6608789   -1.9162595   -1.4054983
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3664436   -1.6336535   -1.0992337
6 months    COHORTS          GUATEMALA                      High                 NA                -1.8322256   -1.9963467   -1.6681045
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.8824671   -1.9872604   -1.7776738
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.7112046   -1.8404746   -1.5819346
6 months    COHORTS          INDIA                          High                 NA                -0.6098557   -0.7266176   -0.4930937
6 months    COHORTS          INDIA                          Low                  NA                -1.3192693   -1.4119327   -1.2266059
6 months    COHORTS          INDIA                          Medium               NA                -0.9730209   -1.0199185   -0.9261234
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0482956   -1.1262272   -0.9703640
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.2323260   -1.3283538   -1.1362982
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1764440   -1.2708061   -1.0820818
6 months    EE               PAKISTAN                       High                 NA                -1.7809391   -2.2404264   -1.3214519
6 months    EE               PAKISTAN                       Low                  NA                -2.1301337   -2.2603392   -1.9999281
6 months    EE               PAKISTAN                       Medium               NA                -1.7378333   -2.1158106   -1.3598560
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2771406   -1.4970122   -1.0572691
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4320181   -1.5275395   -1.3364968
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.2310062   -1.5059598   -0.9560525
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -1.5343959   -1.7105671   -1.3582247
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                -1.6412921   -1.8701940   -1.4123902
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -1.5359513   -1.7484876   -1.3234151
6 months    IRC              INDIA                          High                 NA                -1.1478591   -1.3634917   -0.9322265
6 months    IRC              INDIA                          Low                  NA                -1.2433758   -1.4652822   -1.0214693
6 months    IRC              INDIA                          Medium               NA                -1.2741122   -1.4968424   -1.0513819
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.3019143   -1.3460293   -1.2577994
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.3949027   -1.4438061   -1.3459992
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3550492   -1.4047281   -1.3053703
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2544120   -1.3240558   -1.1847681
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4045256   -1.4959318   -1.3131195
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3867455   -1.4553452   -1.3181458
6 months    LCNI-5           MALAWI                         High                 NA                -1.4745318   -1.5900243   -1.3590392
6 months    LCNI-5           MALAWI                         Low                  NA                -1.7916767   -1.9231272   -1.6602262
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6875447   -1.8152355   -1.5598540
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.9883910   -1.2107335   -0.7660486
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.2795815   -1.5404644   -1.0186986
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.3412931   -1.5350025   -1.1475836
6 months    MAL-ED           BRAZIL                         High                 NA                 0.0702560   -0.1690374    0.3095494
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.0701823   -0.2310512    0.3714159
6 months    MAL-ED           BRAZIL                         Medium               NA                 0.0580212   -0.1728853    0.2889277
6 months    MAL-ED           INDIA                          High                 NA                -1.1675756   -1.3963474   -0.9388038
6 months    MAL-ED           INDIA                          Low                  NA                -1.1855527   -1.3994310   -0.9716745
6 months    MAL-ED           INDIA                          Medium               NA                -1.1305088   -1.3350195   -0.9259981
6 months    MAL-ED           NEPAL                          High                 NA                -0.3561047   -0.5955333   -0.1166761
6 months    MAL-ED           NEPAL                          Low                  NA                -0.5880087   -0.7635468   -0.4124706
6 months    MAL-ED           NEPAL                          Medium               NA                -0.5014507   -0.6832551   -0.3196464
6 months    MAL-ED           PERU                           High                 NA                -1.3619213   -1.5516358   -1.1722067
6 months    MAL-ED           PERU                           Low                  NA                -1.3434091   -1.5352239   -1.1515942
6 months    MAL-ED           PERU                           Medium               NA                -1.2732840   -1.4634929   -1.0830751
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.9803324   -1.2222188   -0.7384461
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -1.1334862   -1.3230360   -0.9439364
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0195761   -1.2571103   -0.7820420
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    NIH-Birth        BANGLADESH                     High                 NA                -1.1782222   -1.3256242   -1.0308201
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -1.6081823   -1.7529518   -1.4634128
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -1.4570922   -1.6047921   -1.3093924
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1440502   -1.2749758   -1.0131246
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2827361   -1.4233503   -1.1421218
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.3079184   -1.4497818   -1.1660550
6 months    PROBIT           BELARUS                        High                 NA                 0.1825966    0.0921550    0.2730381
6 months    PROBIT           BELARUS                        Low                  NA                 0.0223403   -0.0722380    0.1169187
6 months    PROBIT           BELARUS                        Medium               NA                 0.1498602    0.0525323    0.2471881
6 months    PROVIDE          BANGLADESH                     High                 NA                -1.0878983   -1.2129275   -0.9628691
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.1153297   -1.2737759   -0.9568835
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.1062872   -1.2754310   -0.9371434
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.0896274   -1.2029206   -0.9763341
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.5677508   -1.6785950   -1.4569066
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3945734   -1.5297406   -1.2594062
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.7385257   -2.2089040   -1.2681473
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9468919   -2.0799292   -1.8138546
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.8978117   -2.1811194   -1.6145039
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4838802   -0.5969935   -0.3707669
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5513025   -0.8358447   -0.2667603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5585575   -0.6151976   -0.5019173
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8330777   -0.8705103   -0.7956451
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8884879   -0.9504073   -0.8265685
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9222025   -0.9760139   -0.8683911
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -2.4796136   -2.6434382   -2.3157890
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7085372   -2.8856003   -2.5314741
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -2.4928926   -2.6677564   -2.3180287
24 months   COHORTS          GUATEMALA                      High                 NA                -3.1019010   -3.2723263   -2.9314756
24 months   COHORTS          GUATEMALA                      Low                  NA                -3.0973226   -3.2008819   -2.9937633
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.8130383   -2.9402112   -2.6858655
24 months   COHORTS          INDIA                          High                 NA                -1.4271607   -1.5684740   -1.2858474
24 months   COHORTS          INDIA                          Low                  NA                -2.7033119   -2.8085637   -2.5980601
24 months   COHORTS          INDIA                          Medium               NA                -2.0999607   -2.1549485   -2.0449729
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.2136195   -2.3171719   -2.1100671
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.6000346   -2.7115494   -2.4885198
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.5281235   -2.6192383   -2.4370088
24 months   EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.5712752   -1.8277718   -1.3147787
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.9504615   -2.0523622   -1.8485608
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.8930454   -2.1825780   -1.6035127
24 months   IRC              INDIA                          High                 NA                -1.6388655   -1.8174232   -1.4603078
24 months   IRC              INDIA                          Low                  NA                -1.8638345   -2.0245799   -1.7030892
24 months   IRC              INDIA                          Medium               NA                -1.8601101   -2.0105571   -1.7096630
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9480524   -2.0022648   -1.8938400
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.1338018   -2.1818512   -2.0857523
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -2.0157565   -2.0663076   -1.9652054
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.7122561   -1.7794202   -1.6450920
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8790763   -1.9480616   -1.8100910
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8026324   -1.8748521   -1.7304126
24 months   LCNI-5           MALAWI                         High                 NA                -1.8054129   -1.9333540   -1.6774717
24 months   LCNI-5           MALAWI                         Low                  NA                -1.9302978   -2.0804652   -1.7801304
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9359014   -2.0977137   -1.7740892
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.8262376   -2.1006281   -1.5518471
24 months   MAL-ED           BANGLADESH                     Low                  NA                -2.0528560   -2.2501941   -1.8555179
24 months   MAL-ED           BANGLADESH                     Medium               NA                -1.9106151   -2.1828625   -1.6383676
24 months   MAL-ED           BRAZIL                         High                 NA                 0.2158361   -0.0575852    0.4892574
24 months   MAL-ED           BRAZIL                         Low                  NA                -0.3251887   -0.6751956    0.0248182
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.0112424   -0.2727266    0.2952114
24 months   MAL-ED           INDIA                          High                 NA                -1.6255422   -1.8502395   -1.4008449
24 months   MAL-ED           INDIA                          Low                  NA                -1.8983648   -2.1193046   -1.6774250
24 months   MAL-ED           INDIA                          Medium               NA                -1.9022279   -2.1149726   -1.6894832
24 months   MAL-ED           NEPAL                          High                 NA                -1.0308169   -1.2964430   -0.7651909
24 months   MAL-ED           NEPAL                          Low                  NA                -1.3873906   -1.5682697   -1.2065115
24 months   MAL-ED           NEPAL                          Medium               NA                -1.2433669   -1.4343550   -1.0523788
24 months   MAL-ED           PERU                           High                 NA                -1.5186570   -1.7771529   -1.2601611
24 months   MAL-ED           PERU                           Low                  NA                -1.8696584   -2.0559410   -1.6833757
24 months   MAL-ED           PERU                           Medium               NA                -1.8361011   -2.0262775   -1.6459247
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4254933   -1.6742699   -1.1767168
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.7224803   -1.9156850   -1.5292756
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.7232648   -2.0075588   -1.4389708
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   NIH-Birth        BANGLADESH                     High                 NA                -1.8746734   -2.0591512   -1.6901957
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -2.5044633   -2.6627774   -2.3461492
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -2.2973816   -2.4704027   -2.1243606
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.2200694   -1.3683996   -1.0717392
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.5594307   -1.7269444   -1.3919169
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.6206472   -1.7684815   -1.4728130
24 months   PROBIT           BELARUS                        High                 NA                 0.0116970   -0.1934623    0.2168562
24 months   PROBIT           BELARUS                        Low                  NA                -0.2641867   -0.5774265    0.0490531
24 months   PROBIT           BELARUS                        Medium               NA                -0.0948453   -0.4135623    0.2238718
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.4387545   -1.5680181   -1.3094910
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.7119086   -1.8705749   -1.5532422
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6591492   -1.8411517   -1.4771467
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.4616394   -1.5413044   -1.3819744
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7453349   -1.8670324   -1.6236373
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7300584   -1.8496651   -1.6104517


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
Birth       CMC-V-BCS-2002   INDIA                          Low                  High              -0.2465637   -0.8581259    0.3649984
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.3085302   -0.9053795    0.2883190
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.0486191   -0.2415563    0.3387946
Birth       COHORTS          GUATEMALA                      Medium               High               0.0664383   -0.2407602    0.3736368
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1360194   -0.2580366   -0.0140021
Birth       COHORTS          INDIA                          Medium               High              -0.1118401   -0.2233197   -0.0003606
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.0660613   -0.1736004    0.0414777
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0139952   -0.1259557    0.0979654
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.0160719   -0.2760360    0.3081798
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1004992   -0.2445124    0.4455108
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High               0.0143787   -0.3163980    0.3451554
Birth       IRC              INDIA                          Medium               High               0.0941519   -0.2604351    0.4487388
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0317648   -0.0782866    0.0147570
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0088078   -0.0577823    0.0401668
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0245726   -0.1649121    0.1157669
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0841190   -0.2369416    0.0687036
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.0963185   -0.4667023    0.2740654
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.1140928   -0.5097894    0.2816038
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High              -0.1111951   -0.7991714    0.5767812
Birth       MAL-ED           BRAZIL                         Medium               High              -0.0224724   -0.6524381    0.6074932
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       MAL-ED           INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       MAL-ED           NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.0992696   -0.1355116    0.3340509
Birth       MAL-ED           PERU                           Medium               High               0.0774092   -0.1570916    0.3119100
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.4224247   -0.8694114    0.0245620
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.3329592   -0.8893847    0.2234663
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0738494   -0.2530875    0.1053887
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.0399393   -0.2270414    0.1471628
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0621167   -0.2690496    0.1448162
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.0384528   -0.2251223    0.1482168
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0183928   -0.1351812    0.0983956
Birth       PROBIT           BELARUS                        Medium               High              -0.0089067   -0.0947366    0.0769232
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.0450853   -0.1203879    0.2105586
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0310662   -0.1239788    0.1861112
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0811025   -0.2249849    0.0627798
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0222940   -0.1416910    0.1862790
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0476208   -0.1070399    0.0117983
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0055405   -0.0594057    0.0483247
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.3590843   -0.6943642   -0.0238044
6 months    CMC-V-BCS-2002   INDIA                          Medium               High              -0.0646490   -0.4089591    0.2796612
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0502415   -0.2449220    0.1444390
6 months    COHORTS          GUATEMALA                      Medium               High               0.1210210   -0.0879014    0.3299434
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.7094136   -0.8592983   -0.5595290
6 months    COHORTS          INDIA                          Medium               High              -0.3631653   -0.4893835   -0.2369470
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.1840304   -0.3079675   -0.0600932
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.1281483   -0.2506922   -0.0056045
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.3491946   -0.8265310    0.1281419
6 months    EE               PAKISTAN                       Medium               High               0.0431058   -0.5540242    0.6402358
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.1548775   -0.3938321    0.0840771
6 months    GMS-Nepal        NEPAL                          Medium               High               0.0461345   -0.3051770    0.3974459
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.1068962   -0.3961027    0.1823103
6 months    Guatemala BSC    GUATEMALA                      Medium               High              -0.0015554   -0.2779869    0.2748761
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.0955166   -0.4005067    0.2094735
6 months    IRC              INDIA                          Medium               High              -0.1262530   -0.4321283    0.1796223
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0929883   -0.1565904   -0.0293863
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0531348   -0.1174223    0.0111526
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1501136   -0.2618999   -0.0383274
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1323335   -0.2302525   -0.0344146
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.3171450   -0.4922009   -0.1420890
6 months    LCNI-5           MALAWI                         Medium               High              -0.2130130   -0.3852347   -0.0407913
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2911905   -0.6348644    0.0524835
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.3529020   -0.6483553   -0.0574487
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.0000737   -0.3836471    0.3834997
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0122348   -0.3444104    0.3199408
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High              -0.0179771   -0.3321863    0.2962321
6 months    MAL-ED           INDIA                          Medium               High               0.0370668   -0.2704276    0.3445612
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.2319040   -0.5301159    0.0663080
6 months    MAL-ED           NEPAL                          Medium               High              -0.1453460   -0.4482455    0.1575535
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.0185122   -0.2509588    0.2879833
6 months    MAL-ED           PERU                           Medium               High               0.0886373   -0.1802365    0.3575110
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.1531538   -0.4599587    0.1536512
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0392437   -0.3778871    0.2993997
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.4299601   -0.6334195   -0.2265008
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.2788701   -0.4844159   -0.0733243
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1386859   -0.3315188    0.0541471
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1638682   -0.3573094    0.0295730
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1602562   -0.2397605   -0.0807519
6 months    PROBIT           BELARUS                        Medium               High              -0.0327364   -0.1075514    0.0420786
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.0274314   -0.2293830    0.1745203
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0183888   -0.2288048    0.1920271
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.4781235   -0.6588034   -0.2974435
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.3049461   -0.4141748   -0.1957173
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2083663   -0.6974967    0.2807641
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1592860   -0.7068792    0.3883072
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0674223   -0.3730065    0.2381619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0746773   -0.1998278    0.0504732
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0554102   -0.1260567    0.0152362
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0891248   -0.1528208   -0.0254289
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.2289236   -0.4708951    0.0130478
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0132790   -0.2521238    0.2255658
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.0045784   -0.1939405    0.2030973
24 months   COHORTS          GUATEMALA                      Medium               High               0.2888627    0.0769368    0.5007885
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -1.2761512   -1.4537789   -1.0985235
24 months   COHORTS          INDIA                          Medium               High              -0.6728000   -0.8254206   -0.5201794
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.3864152   -0.5395747   -0.2332557
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.3145041   -0.4529754   -0.1760328
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.3791863   -0.6549666   -0.1034059
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.3217701   -0.7082184    0.0646782
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.2249691   -0.4652803    0.0153421
24 months   IRC              INDIA                          Medium               High              -0.2212446   -0.4548039    0.0123147
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.1857494   -0.2533653   -0.1181335
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0677041   -0.1346532   -0.0007551
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.1668202   -0.2580323   -0.0756081
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0903763   -0.1870391    0.0062865
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.1248850   -0.3215980    0.0718281
24 months   LCNI-5           MALAWI                         Medium               High              -0.1304886   -0.3362825    0.0753053
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.2266184   -0.5586381    0.1054012
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0843775   -0.4682363    0.2994814
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.5410248   -0.9931683   -0.0888813
24 months   MAL-ED           BRAZIL                         Medium               High              -0.2045937   -0.6021753    0.1929879
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.2728226   -0.5851312    0.0394860
24 months   MAL-ED           INDIA                          Medium               High              -0.2766857   -0.5839633    0.0305919
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3565737   -0.6773200   -0.0358273
24 months   MAL-ED           NEPAL                          Medium               High              -0.2125500   -0.5401599    0.1150599
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.3510014   -0.6702521   -0.0317506
24 months   MAL-ED           PERU                           Medium               High              -0.3174441   -0.6390742    0.0041860
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2969870   -0.6126333    0.0186593
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.2977715   -0.6761625    0.0806196
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.6297899   -0.8726961   -0.3868837
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.4227082   -0.6744026   -0.1710138
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3393613   -0.5625019   -0.1162206
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.4005778   -0.6092036   -0.1919521
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2758837   -0.5344266   -0.0173407
24 months   PROBIT           BELARUS                        Medium               High              -0.1065422   -0.3490958    0.1360113
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.2731540   -0.4768307   -0.0694773
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.2203947   -0.4423329    0.0015436
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2836955   -0.4284983   -0.1388926
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.2684190   -0.4114337   -0.1254044


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                 0.0162900   -0.1999459    0.2325259
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0328522   -0.2146170    0.2803213
Birth       COHORTS          INDIA                          High                 NA                -0.1222647   -0.2217757   -0.0227538
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0021871   -0.0671814    0.0628071
Birth       EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.0429835   -0.2232241    0.3091911
Birth       IRC              INDIA                          High                 NA                 0.0322722   -0.1787610    0.2433053
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0050416   -0.0294664    0.0395496
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0560555   -0.1441135    0.0320024
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.0553520   -0.2551140    0.1444101
Birth       MAL-ED           BRAZIL                         High                 NA                -0.1039261   -0.4914480    0.2835959
Birth       MAL-ED           INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       MAL-ED           NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       MAL-ED           PERU                           High                 NA                 0.0586354   -0.0920907    0.2093615
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.2956574   -0.5925057    0.0011908
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0307213   -0.1491634    0.0877208
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0298868   -0.1451629    0.0853893
Birth       PROBIT           BELARUS                        High                 NA                -0.0166752   -0.0962179    0.0628674
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0513278   -0.0425343    0.1451898
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0042465   -0.1286424    0.1201495
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0090565   -0.0327850    0.0146719
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.1216561   -0.2885554    0.0452431
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0218895   -0.1317535    0.1755324
6 months    COHORTS          INDIA                          High                 NA                -0.4084521   -0.5235753   -0.2933289
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0922768   -0.1621640   -0.0223895
6 months    EE               PAKISTAN                       High                 NA                -0.2972816   -0.7542541    0.1596909
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0737209   -0.2858837    0.1384418
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0280409   -0.1649407    0.1088589
6 months    IRC              INDIA                          High                 NA                -0.0865471   -0.2707868    0.0976926
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0112195   -0.0494305    0.0269914
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0905112   -0.1518830   -0.0291395
6 months    LCNI-5           MALAWI                         High                 NA                -0.1686171   -0.2636644   -0.0735698
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2048828   -0.3960376   -0.0137279
6 months    MAL-ED           BRAZIL                         High                 NA                -0.0207849   -0.2184235    0.1768538
6 months    MAL-ED           INDIA                          High                 NA                 0.0070307   -0.1934715    0.2075329
6 months    MAL-ED           NEPAL                          High                 NA                -0.1920552   -0.4080745    0.0239642
6 months    MAL-ED           PERU                           High                 NA                 0.0341731   -0.1280148    0.1963610
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0829878   -0.2906899    0.1247144
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.2291599   -0.3555408   -0.1027790
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0546281   -0.1672204    0.0579642
6 months    PROBIT           BELARUS                        High                 NA                -0.0845892   -0.1423298   -0.0268486
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0037932   -0.1130537    0.1054673
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.3122289   -0.4009204   -0.2235375
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1601586   -0.6135340    0.2932169
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0601306   -0.1582783    0.0380171
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0357779   -0.0633768   -0.0081790
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0792544   -0.1984565    0.0399478
24 months   COHORTS          GUATEMALA                      High                 NA                 0.1133958   -0.0434444    0.2702360
24 months   COHORTS          INDIA                          High                 NA                -0.7470056   -0.8884313   -0.6055799
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.2004951   -0.2938907   -0.1070994
24 months   EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.3174877   -0.5622481   -0.0727272
24 months   IRC              INDIA                          High                 NA                -0.1599120   -0.3074700   -0.0123541
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0653845   -0.1124742   -0.0182949
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0692225   -0.1279562   -0.0104889
24 months   LCNI-5           MALAWI                         High                 NA                -0.0740976   -0.1793201    0.0311249
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0833823   -0.2930376    0.1262730
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2076913   -0.4352318    0.0198493
24 months   MAL-ED           INDIA                          High                 NA                -0.2018950   -0.3984533   -0.0053366
24 months   MAL-ED           NEPAL                          High                 NA                -0.2379859   -0.4677368   -0.0082349
24 months   MAL-ED           PERU                           High                 NA                -0.2358513   -0.4468800   -0.0248226
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.2195662   -0.4338342   -0.0052982
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.3443845   -0.4987497   -0.1900193
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.2211952   -0.3451607   -0.0972297
24 months   PROBIT           BELARUS                        High                 NA                -0.1559861   -0.3521657    0.0401935
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.1636676   -0.2763128   -0.0510224
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1442758   -0.2013601   -0.0871915
