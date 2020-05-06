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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
