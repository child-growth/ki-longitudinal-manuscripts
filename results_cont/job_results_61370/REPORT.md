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
![](/tmp/106bb1a4-7569-40ad-a8a2-c1e27ec8c6f8/40a3939b-f2f4-4b3f-93f8-b69a755c655a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/106bb1a4-7569-40ad-a8a2-c1e27ec8c6f8/40a3939b-f2f4-4b3f-93f8-b69a755c655a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/106bb1a4-7569-40ad-a8a2-c1e27ec8c6f8/40a3939b-f2f4-4b3f-93f8-b69a755c655a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.8631786   -1.1158102   -0.6105469
Birth       CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7999396   -1.3357558   -0.2641234
Birth       CMC-V-BCS-2002   INDIA                          Medium               NA                -1.0981701   -1.6262806   -0.5700596
Birth       COHORTS          GUATEMALA                      High                 NA                 0.1571302   -0.0584685    0.3727289
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1406951    0.0154899    0.2659003
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1951990    0.0182020    0.3721961
Birth       COHORTS          INDIA                          High                 NA                -0.5166191   -0.6172514   -0.4159868
Birth       COHORTS          INDIA                          Low                  NA                -0.6901243   -0.7606805   -0.6195682
Birth       COHORTS          INDIA                          Medium               NA                -0.6623172   -0.7087010   -0.6159334
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2291727   -0.3065435   -0.1518020
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.2851510   -0.3642972   -0.2060048
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2408867   -0.3183300   -0.1634434
Birth       EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.1381613   -1.3927305   -0.8835920
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0997799   -1.1966600   -1.0028997
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0532635   -1.2765149   -0.8300121
Birth       IRC              INDIA                          High                 NA                -0.3396981   -0.5943627   -0.0850335
Birth       IRC              INDIA                          Low                  NA                -0.3305369   -0.5675297   -0.0935442
Birth       IRC              INDIA                          Medium               NA                -0.2403040   -0.5133197    0.0327117
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5869823   -1.6249420   -1.5490225
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.6324536   -1.6649056   -1.6000017
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.6061747   -1.6420076   -1.5703417
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4796740   -1.5808133   -1.3785347
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.4856084   -1.5848218   -1.3863950
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5226469   -1.6279172   -1.4173765
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.0516972   -1.3251047   -0.7782897
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.0846428   -1.3505764   -0.8187092
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.1165763   -1.3956187   -0.8375338
Birth       MAL-ED           BRAZIL                         High                 NA                -0.6453898   -1.0452722   -0.2455074
Birth       MAL-ED           BRAZIL                         Low                  NA                -0.6991564   -1.3373518   -0.0609611
Birth       MAL-ED           BRAZIL                         Medium               NA                -0.6425900   -1.1642894   -0.1208906
Birth       MAL-ED           INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       MAL-ED           INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       MAL-ED           INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       MAL-ED           NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       MAL-ED           NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       MAL-ED           NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       MAL-ED           PERU                           High                 NA                -0.9405091   -1.1278141   -0.7532041
Birth       MAL-ED           PERU                           Low                  NA                -0.8577769   -1.0317868   -0.6837670
Birth       MAL-ED           PERU                           Medium               NA                -0.8594181   -1.0268089   -0.6920273
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.4205708   -0.7227648   -0.1183769
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.7601780   -1.0590798   -0.4612761
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -0.6286483   -1.0343487   -0.2229479
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770160   -0.6572697
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851562   -1.5881883   -0.9821242
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.8865698   -1.0333261   -0.7398135
Birth       NIH-Birth        BANGLADESH                     Low                  NA                -0.9708163   -1.0933401   -0.8482925
Birth       NIH-Birth        BANGLADESH                     Medium               NA                -0.9448632   -1.0806215   -0.8091049
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8898343   -1.0301410   -0.7495276
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.9396516   -1.0888529   -0.7904503
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9341955   -1.0659259   -0.8024650
Birth       PROBIT           BELARUS                        High                 NA                 1.3371481    1.1608947    1.5134015
Birth       PROBIT           BELARUS                        Low                  NA                 1.3112592    1.1291867    1.4933317
Birth       PROBIT           BELARUS                        Medium               NA                 1.3221067    1.1519948    1.4922186
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9117484   -1.0270241   -0.7964727
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.8728056   -1.0000070   -0.7456042
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.8973647   -1.0157841   -0.7789452
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4271753   -1.5439499   -1.3104006
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.5082778   -1.6199626   -1.3965930
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4048813   -1.5364924   -1.2732701
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4883967   -0.5202588   -0.4565345
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5322332   -0.5845240   -0.4799423
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5019895   -0.5472098   -0.4567692
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -1.3135784   -1.5300831   -1.0970736
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6489751   -1.9097740   -1.3881762
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3570092   -1.6372011   -1.0768174
6 months    COHORTS          GUATEMALA                      High                 NA                -1.7851991   -1.9550558   -1.6153423
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.8677247   -1.9709935   -1.7644558
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.7118808   -1.8411743   -1.5825872
6 months    COHORTS          INDIA                          High                 NA                -0.6044425   -0.7253812   -0.4835038
6 months    COHORTS          INDIA                          Low                  NA                -1.2960400   -1.3910090   -1.2010710
6 months    COHORTS          INDIA                          Medium               NA                -0.9744119   -1.0223011   -0.9265226
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0335896   -1.1143544   -0.9528249
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.2443228   -1.3396202   -1.1490253
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1637792   -1.2595576   -1.0680008
6 months    EE               PAKISTAN                       High                 NA                -1.8899029   -2.4056785   -1.3741273
6 months    EE               PAKISTAN                       Low                  NA                -2.1329855   -2.2631006   -2.0028703
6 months    EE               PAKISTAN                       Medium               NA                -1.7506470   -2.1175603   -1.3837337
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2476321   -1.4734636   -1.0218006
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4348812   -1.5310364   -1.3387260
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.2120335   -1.4926890   -0.9313780
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -1.5236987   -1.6956225   -1.3517749
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                -1.6449032   -1.8756329   -1.4141734
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                -1.5400305   -1.7565426   -1.3235184
6 months    IRC              INDIA                          High                 NA                -1.1571084   -1.3744347   -0.9397821
6 months    IRC              INDIA                          Low                  NA                -1.2561615   -1.4796303   -1.0326927
6 months    IRC              INDIA                          Medium               NA                -1.2797238   -1.5062779   -1.0531698
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.2913436   -1.3357766   -1.2469107
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.3911938   -1.4390109   -1.3433768
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3528049   -1.4020212   -1.3035885
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2479362   -1.3175851   -1.1782872
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4016819   -1.4917426   -1.3116213
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3882888   -1.4582208   -1.3183568
6 months    LCNI-5           MALAWI                         High                 NA                -1.4758336   -1.5937737   -1.3578936
6 months    LCNI-5           MALAWI                         Low                  NA                -1.8056096   -1.9401227   -1.6710965
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6872180   -1.8098172   -1.5646188
6 months    MAL-ED           BANGLADESH                     High                 NA                -1.0390152   -1.2579705   -0.8200600
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.2559105   -1.5145369   -0.9972841
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.3246108   -1.5478345   -1.1013871
6 months    MAL-ED           BRAZIL                         High                 NA                 0.0550684   -0.1839228    0.2940595
6 months    MAL-ED           BRAZIL                         Low                  NA                 0.0437190   -0.2502886    0.3377265
6 months    MAL-ED           BRAZIL                         Medium               NA                 0.0427687   -0.1872619    0.2727992
6 months    MAL-ED           INDIA                          High                 NA                -1.1774584   -1.3952526   -0.9596642
6 months    MAL-ED           INDIA                          Low                  NA                -1.1835158   -1.3901502   -0.9768814
6 months    MAL-ED           INDIA                          Medium               NA                -1.1391624   -1.3397425   -0.9385823
6 months    MAL-ED           NEPAL                          High                 NA                -0.3323056   -0.5630063   -0.1016049
6 months    MAL-ED           NEPAL                          Low                  NA                -0.6167131   -0.7945230   -0.4389032
6 months    MAL-ED           NEPAL                          Medium               NA                -0.5602180   -0.7564530   -0.3639829
6 months    MAL-ED           PERU                           High                 NA                -1.3693102   -1.5615277   -1.1770927
6 months    MAL-ED           PERU                           Low                  NA                -1.3217730   -1.5075856   -1.1359604
6 months    MAL-ED           PERU                           Medium               NA                -1.2925570   -1.4790779   -1.1060361
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.9604046   -1.2015770   -0.7192322
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -1.1322356   -1.3245084   -0.9399627
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0108831   -1.2509096   -0.7708566
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    NIH-Birth        BANGLADESH                     High                 NA                -1.1473553   -1.2949661   -0.9997444
6 months    NIH-Birth        BANGLADESH                     Low                  NA                -1.6012778   -1.7498514   -1.4527041
6 months    NIH-Birth        BANGLADESH                     Medium               NA                -1.4532548   -1.6013415   -1.3051682
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1411727   -1.2703394   -1.0120061
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2845501   -1.4267673   -1.1423329
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.3030643   -1.4430732   -1.1630554
6 months    PROBIT           BELARUS                        High                 NA                 0.1820991    0.0917149    0.2724834
6 months    PROBIT           BELARUS                        Low                  NA                 0.0193290   -0.0759803    0.1146383
6 months    PROBIT           BELARUS                        Medium               NA                 0.1486102    0.0493153    0.2479051
6 months    PROVIDE          BANGLADESH                     High                 NA                -1.0841345   -1.2155098   -0.9527592
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.1021569   -1.2634860   -0.9408278
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.0865976   -1.2535800   -0.9196151
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.0896274   -1.2029206   -0.9763341
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.5677508   -1.6785950   -1.4569066
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3945734   -1.5297406   -1.2594062
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.6744958   -2.1217065   -1.2272851
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9422459   -2.0738476   -1.8106442
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.9076061   -2.1861690   -1.6290432
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4804100   -0.5944776   -0.3663425
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.4939954   -0.7780196   -0.2099712
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5604015   -0.6174675   -0.5033356
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8334383   -0.8695163   -0.7973604
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8813184   -0.9458904   -0.8167465
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9227109   -0.9765081   -0.8689137
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -2.4835300   -2.6510552   -2.3160049
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7106849   -2.8868641   -2.5345057
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5120812   -2.6902202   -2.3339422
24 months   COHORTS          GUATEMALA                      High                 NA                -3.0661153   -3.2386347   -2.8935960
24 months   COHORTS          GUATEMALA                      Low                  NA                -3.0201393   -3.1319779   -2.9083007
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.8311073   -2.9456670   -2.7165477
24 months   COHORTS          INDIA                          High                 NA                -1.4605191   -1.6155851   -1.3054530
24 months   COHORTS          INDIA                          Low                  NA                -2.6950038   -2.8011109   -2.5888966
24 months   COHORTS          INDIA                          Medium               NA                -2.1014045   -2.1556769   -2.0471321
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.2217993   -2.3204740   -2.1231246
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.6242767   -2.7257017   -2.5228516
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.5179650   -2.6123198   -2.4236102
24 months   EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.7043798   -1.9665386   -1.4422210
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.9528798   -2.0581437   -1.8476160
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.8175378   -2.0842893   -1.5507863
24 months   IRC              INDIA                          High                 NA                -1.6420136   -1.8205040   -1.4635231
24 months   IRC              INDIA                          Low                  NA                -1.8815169   -2.0439830   -1.7190507
24 months   IRC              INDIA                          Medium               NA                -1.8558648   -2.0025335   -1.7091961
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9524440   -2.0104642   -1.8944239
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.1718031   -2.2274731   -2.1161331
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -2.0144367   -2.0730803   -1.9557932
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.7152488   -1.7835569   -1.6469407
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8625573   -1.9330018   -1.7921128
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8047850   -1.8750217   -1.7345483
24 months   LCNI-5           MALAWI                         High                 NA                -1.7967747   -1.9285048   -1.6650446
24 months   LCNI-5           MALAWI                         Low                  NA                -1.9447258   -2.0968184   -1.7926333
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9378419   -2.1002567   -1.7754270
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.8050325   -2.0638048   -1.5462601
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.9876318   -2.1783850   -1.7968787
24 months   MAL-ED           BANGLADESH                     Medium               NA                -1.9100284   -2.1595568   -1.6605000
24 months   MAL-ED           BRAZIL                         High                 NA                 0.2152048   -0.0505222    0.4809317
24 months   MAL-ED           BRAZIL                         Low                  NA                -0.2430009   -0.6062144    0.1202125
24 months   MAL-ED           BRAZIL                         Medium               NA                 0.0096683   -0.2646440    0.2839806
24 months   MAL-ED           INDIA                          High                 NA                -1.6325547   -1.8596939   -1.4054155
24 months   MAL-ED           INDIA                          Low                  NA                -1.8885363   -2.1132031   -1.6638696
24 months   MAL-ED           INDIA                          Medium               NA                -1.9110182   -2.1255584   -1.6964780
24 months   MAL-ED           NEPAL                          High                 NA                -1.0313076   -1.2880098   -0.7746054
24 months   MAL-ED           NEPAL                          Low                  NA                -1.3822953   -1.5633594   -1.2012312
24 months   MAL-ED           NEPAL                          Medium               NA                -1.2531037   -1.4473740   -1.0588335
24 months   MAL-ED           PERU                           High                 NA                -1.5317270   -1.7882263   -1.2752278
24 months   MAL-ED           PERU                           Low                  NA                -1.8668345   -2.0517629   -1.6819061
24 months   MAL-ED           PERU                           Medium               NA                -1.8342529   -2.0283335   -1.6401724
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4544155   -1.7067602   -1.2020708
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.7202490   -1.9147470   -1.5257510
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.7388407   -2.0251639   -1.4525176
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   NIH-Birth        BANGLADESH                     High                 NA                -1.8776411   -2.0614621   -1.6938201
24 months   NIH-Birth        BANGLADESH                     Low                  NA                -2.5088715   -2.6675483   -2.3501948
24 months   NIH-Birth        BANGLADESH                     Medium               NA                -2.3184536   -2.4914481   -2.1454590
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.2165855   -1.3637480   -1.0694230
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.5784360   -1.7549094   -1.4019627
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.6307414   -1.7837625   -1.4777204
24 months   PROBIT           BELARUS                        High                 NA                 0.0035163   -0.1825541    0.1895867
24 months   PROBIT           BELARUS                        Low                  NA                -0.2730714   -0.5766098    0.0304670
24 months   PROBIT           BELARUS                        Medium               NA                -0.1008690   -0.3914375    0.1896994
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.4351697   -1.5657680   -1.3045714
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.7475124   -1.9000931   -1.5949316
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6268079   -1.7930015   -1.4606144
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.4539028   -1.5321751   -1.3756306
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7518858   -1.8738697   -1.6299019
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7246326   -1.8494072   -1.5998580


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
Birth       CMC-V-BCS-2002   INDIA                          Low                  High               0.0632390   -0.5317346    0.6582125
Birth       CMC-V-BCS-2002   INDIA                          Medium               High              -0.2349915   -0.8270482    0.3570652
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0164351   -0.2660221    0.2331519
Birth       COHORTS          GUATEMALA                      Medium               High               0.0380688   -0.2412159    0.3173536
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1735053   -0.2951644   -0.0518461
Birth       COHORTS          INDIA                          Medium               High              -0.1456981   -0.2551375   -0.0362588
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.0559782   -0.1646318    0.0526753
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0117140   -0.1188185    0.0953906
Birth       EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.0383814   -0.2322327    0.3089954
Birth       GMS-Nepal        NEPAL                          Medium               High               0.0848978   -0.2521963    0.4219918
Birth       IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low                  High               0.0091612   -0.3204417    0.3387641
Birth       IRC              INDIA                          Medium               High               0.0993941   -0.2547738    0.4535621
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0454714   -0.0903740   -0.0005687
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0191924   -0.0665913    0.0282065
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0059344   -0.1476270    0.1357582
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0429729   -0.1932779    0.1073322
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.0329456   -0.4155930    0.3497018
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.0648791   -0.4568316    0.3270734
Birth       MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Low                  High              -0.0537666   -0.8362163    0.7286831
Birth       MAL-ED           BRAZIL                         Medium               High               0.0027998   -0.6615048    0.6671044
Birth       MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       MAL-ED           INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       MAL-ED           NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High               0.0827322   -0.1512021    0.3166665
Birth       MAL-ED           PERU                           Medium               High               0.0810911   -0.1485429    0.3107250
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3396071   -0.7658281    0.0866138
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.2080775   -0.7149261    0.2987712
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              -0.0842465   -0.2594060    0.0909130
Birth       NIH-Birth        BANGLADESH                     Medium               High              -0.0582934   -0.2414054    0.1248186
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0498173   -0.2511250    0.1514905
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.0443611   -0.2330615    0.1443392
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0258889   -0.1414271    0.0896493
Birth       PROBIT           BELARUS                        Medium               High              -0.0150414   -0.1012162    0.0711334
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High               0.0389428   -0.1234435    0.2013291
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0143837   -0.1405016    0.1692690
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.0811025   -0.2249849    0.0627798
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0222940   -0.1416910    0.1862790
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0438365   -0.1041850    0.0165120
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0135928   -0.0678515    0.0406659
6 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.3353968   -0.6707995    0.0000060
6 months    CMC-V-BCS-2002   INDIA                          Medium               High              -0.0434309   -0.3939809    0.3071192
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0825256   -0.2806087    0.1155576
6 months    COHORTS          GUATEMALA                      Medium               High               0.0733183   -0.1394753    0.2861120
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.6915975   -0.8461942   -0.5370008
6 months    COHORTS          INDIA                          Medium               High              -0.3699694   -0.5005379   -0.2394008
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.2107331   -0.3359318   -0.0855344
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.1301895   -0.2556051   -0.0047739
6 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low                  High              -0.2430826   -0.7744248    0.2882597
6 months    EE               PAKISTAN                       Medium               High               0.1392559   -0.4934266    0.7719385
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.1872491   -0.4333126    0.0588145
6 months    GMS-Nepal        NEPAL                          Medium               High               0.0355986   -0.3246772    0.3958744
6 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.1212045   -0.4091532    0.1667442
6 months    Guatemala BSC    GUATEMALA                      Medium               High              -0.0163318   -0.2929591    0.2602954
6 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low                  High              -0.0990531   -0.4072032    0.2090970
6 months    IRC              INDIA                          Medium               High              -0.1226154   -0.4334866    0.1882558
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0998502   -0.1622750   -0.0374254
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0614612   -0.1248909    0.0019684
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.1537458   -0.2637803   -0.0437112
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1403526   -0.2395510   -0.0411543
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High              -0.3297759   -0.5085047   -0.1510472
6 months    LCNI-5           MALAWI                         Medium               High              -0.2113843   -0.3813741   -0.0413945
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2168953   -0.5569512    0.1231606
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.2855956   -0.5993061    0.0281150
6 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low                  High              -0.0113494   -0.3892675    0.3665687
6 months    MAL-ED           BRAZIL                         Medium               High              -0.0122997   -0.3430767    0.3184773
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High              -0.0060574   -0.3073389    0.2952241
6 months    MAL-ED           INDIA                          Medium               High               0.0382960   -0.2569729    0.3335649
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.2844076   -0.5766703    0.0078551
6 months    MAL-ED           NEPAL                          Medium               High              -0.2279124   -0.5319203    0.0760955
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.0475372   -0.2201963    0.3152707
6 months    MAL-ED           PERU                           Medium               High               0.0767532   -0.1911542    0.3446607
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.1718310   -0.4803874    0.1367254
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0504785   -0.3908184    0.2898613
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              -0.4539225   -0.6621257   -0.2457194
6 months    NIH-Birth        BANGLADESH                     Medium               High              -0.3058996   -0.5134827   -0.0983165
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1433774   -0.3359639    0.0492092
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1618916   -0.3529770    0.0291939
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1627701   -0.2437365   -0.0818037
6 months    PROBIT           BELARUS                        Medium               High              -0.0334889   -0.1044423    0.0374644
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.0180224   -0.2261119    0.1900670
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0024631   -0.2149494    0.2100232
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.4781235   -0.6588034   -0.2974435
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.3049461   -0.4141748   -0.1957173
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2677501   -0.7344725    0.1989723
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2331103   -0.7587629    0.2925423
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0135854   -0.3192104    0.2920397
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0799915   -0.2065557    0.0465727
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0478801   -0.1201335    0.0243733
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0892726   -0.1522225   -0.0263226
24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.2271549   -0.4713347    0.0170250
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0285511   -0.2732984    0.2161961
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.0459761   -0.1587462    0.2506984
24 months   COHORTS          GUATEMALA                      Medium               High               0.2350080    0.0287629    0.4412531
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -1.2344847   -1.4237504   -1.0452190
24 months   COHORTS          INDIA                          Medium               High              -0.6408854   -0.8060228   -0.4757480
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.4024774   -0.5449909   -0.2599639
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.2961658   -0.4332193   -0.1591123
24 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2485000   -0.5303154    0.0333153
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.1131580   -0.4858583    0.2595423
24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low                  High              -0.2395033   -0.4803006    0.0012940
24 months   IRC              INDIA                          Medium               High              -0.2138512   -0.4445446    0.0168421
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.2193590   -0.2949734   -0.1437447
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0619927   -0.1384579    0.0144725
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.1473085   -0.2405242   -0.0540927
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0895362   -0.1845056    0.0054332
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.1479511   -0.3494952    0.0535931
24 months   LCNI-5           MALAWI                         Medium               High              -0.1410671   -0.3503294    0.0681952
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.1825994   -0.4931334    0.1279346
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.1049959   -0.4598431    0.2498513
24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low                  High              -0.4582057   -0.9093278   -0.0070836
24 months   MAL-ED           BRAZIL                         Medium               High              -0.2055364   -0.5887948    0.1777219
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.2559816   -0.5754666    0.0635033
24 months   MAL-ED           INDIA                          Medium               High              -0.2784635   -0.5917582    0.0348311
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3509877   -0.6661819   -0.0357935
24 months   MAL-ED           NEPAL                          Medium               High              -0.2217961   -0.5462001    0.1026078
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High              -0.3351074   -0.6521293   -0.0180856
24 months   MAL-ED           PERU                           Medium               High              -0.3025259   -0.6256798    0.0206280
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2658335   -0.5861701    0.0545030
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.2844252   -0.6663263    0.0974759
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.6312304   -0.8725052   -0.3899557
24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.4408125   -0.6909561   -0.1906688
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3618505   -0.5924060   -0.1312951
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.4141559   -0.6268622   -0.2014496
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2765877   -0.5354351   -0.0177403
24 months   PROBIT           BELARUS                        Medium               High              -0.1043854   -0.3264714    0.1177006
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.3123426   -0.5113151   -0.1133702
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.1916382   -0.4006030    0.0173266
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2979830   -0.4425740   -0.1533919
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.2707298   -0.4176158   -0.1238437


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          High                 NA                -0.0980171   -0.3047502    0.1087160
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0282585   -0.2314182    0.1749012
Birth       COHORTS          INDIA                          High                 NA                -0.1522651   -0.2499779   -0.0545523
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0198764   -0.0866061    0.0468532
Birth       EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.0504123   -0.1949298    0.2957544
Birth       IRC              INDIA                          High                 NA                 0.0316569   -0.1783063    0.2416201
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0027279   -0.0357786    0.0303228
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0435812   -0.1331649    0.0460024
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.0367520   -0.2686424    0.1951384
Birth       MAL-ED           BRAZIL                         High                 NA                -0.0306102   -0.4475644    0.3863441
Birth       MAL-ED           INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       MAL-ED           NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       MAL-ED           PERU                           High                 NA                 0.0577194   -0.0873708    0.2028097
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.2111365   -0.4901103    0.0678374
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       NIH-Birth        BANGLADESH                     High                 NA                -0.0444499   -0.1585324    0.0696326
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0196602   -0.1372512    0.0979308
Birth       PROBIT           BELARUS                        High                 NA                -0.0257064   -0.1026522    0.0512395
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0266464   -0.0671626    0.1204553
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0042465   -0.1286424    0.1201495
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0122746   -0.0365546    0.0120055
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.1098724   -0.2747233    0.0549784
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0251370   -0.1834376    0.1331635
6 months    COHORTS          INDIA                          High                 NA                -0.4138653   -0.5332372   -0.2944934
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.1069827   -0.1792966   -0.0346688
6 months    EE               PAKISTAN                       High                 NA                -0.1883178   -0.6994136    0.3227780
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1032294   -0.3226291    0.1161702
6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0387382   -0.1726654    0.0951891
6 months    IRC              INDIA                          High                 NA                -0.0772978   -0.2635054    0.1089098
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0217902   -0.0597856    0.0162051
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0969870   -0.1580500   -0.0359241
6 months    LCNI-5           MALAWI                         High                 NA                -0.1673152   -0.2641742   -0.0704562
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.1542586   -0.3443479    0.0358308
6 months    MAL-ED           BRAZIL                         High                 NA                -0.0055972   -0.2028011    0.1916067
6 months    MAL-ED           INDIA                          High                 NA                 0.0169135   -0.1749434    0.2087705
6 months    MAL-ED           NEPAL                          High                 NA                -0.2158543   -0.4220414   -0.0096673
6 months    MAL-ED           PERU                           High                 NA                 0.0415620   -0.1223422    0.2054662
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1029156   -0.3104958    0.1046645
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.2600268   -0.3880583   -0.1319953
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0575056   -0.1691616    0.0541505
6 months    PROBIT           BELARUS                        High                 NA                -0.0840917   -0.1398991   -0.0282843
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0075570   -0.1235315    0.1084175
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.3122289   -0.4009204   -0.2235375
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2241884   -0.6545617    0.2061848
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0636008   -0.1628312    0.0356297
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0354172   -0.0613489   -0.0094856
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0753379   -0.1974660    0.0467903
24 months   COHORTS          GUATEMALA                      High                 NA                 0.0776101   -0.0814954    0.2367157
24 months   COHORTS          INDIA                          High                 NA                -0.7136472   -0.8682529   -0.5590415
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.1923152   -0.2804505   -0.1041800
24 months   EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.1843831   -0.4338711    0.0651050
24 months   IRC              INDIA                          High                 NA                -0.1567639   -0.3040724   -0.0094555
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0609929   -0.1125701   -0.0094157
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0662298   -0.1261005   -0.0063591
24 months   LCNI-5           MALAWI                         High                 NA                -0.0827357   -0.1914694    0.0259979
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.1045874   -0.2978373    0.0886625
24 months   MAL-ED           BRAZIL                         High                 NA                -0.2070599   -0.4269402    0.0128204
24 months   MAL-ED           INDIA                          High                 NA                -0.1948825   -0.3953832    0.0056182
24 months   MAL-ED           NEPAL                          High                 NA                -0.2374953   -0.4624413   -0.0125492
24 months   MAL-ED           PERU                           High                 NA                -0.2227813   -0.4319176   -0.0136450
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1906440   -0.4085252    0.0272372
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.3414168   -0.4950884   -0.1877452
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.2246791   -0.3481190   -0.1012392
24 months   PROBIT           BELARUS                        High                 NA                -0.1478055   -0.3574028    0.0617919
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.1672524   -0.2820592   -0.0524456
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1520123   -0.2081615   -0.0958632
