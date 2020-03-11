---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: c2c85a9a-62e5-11ea-b606-ac1f6b41467c
## task_uuid: 5806e0e06dd8fedc246ad9ba4efb442e
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b0305703-bcb8-4cc2-a73b-2f6585a0810f/c2511b99-1455-4d6d-8181-3a49083813a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1692120   -1.4898157   -0.8486083
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1014234   -0.0754298    0.2782765
Birth       COHORTS          INDIA                          optimal              observed          -0.4893925   -0.5945135   -0.3842715
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.2325413   -0.3088584   -0.1562242
Birth       EE               PAKISTAN                       optimal              observed          -1.3864987   -1.9200618   -0.8529356
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.1377219   -1.3606647   -0.9147791
Birth       IRC              INDIA                          optimal              observed          -0.3956105   -0.6777142   -0.1135067
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5691016   -1.6052910   -1.5329123
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.4701337   -1.5800590   -1.3602084
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.0414162   -1.3296753   -0.7531571
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.6405048   -1.2018380   -0.0791716
Birth       MAL-ED           INDIA                          optimal              observed          -1.2678261   -1.7294087   -0.8062434
Birth       MAL-ED           NEPAL                          optimal              observed          -0.6001032   -1.4491887    0.2489822
Birth       MAL-ED           PERU                           optimal              observed          -0.9796713   -1.1431137   -0.8162289
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4070459   -0.7237718   -0.0903201
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2211863   -1.5948636   -0.8475090
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.9029261   -1.0490761   -0.7567760
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8629476   -1.0040464   -0.7218488
Birth       PROBIT           BELARUS                        optimal              observed           1.3552276    1.1743596    1.5360956
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.9964011   -1.1077138   -0.8850884
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4252837   -1.5844223   -1.2661451
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5235157   -0.5643025   -0.4827290
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1817345   -1.4131031   -0.9503658
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.6184590   -1.7731563   -1.4637618
6 months    COHORTS          INDIA                          optimal              observed          -0.6336887   -0.7568423   -0.5105351
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0198424   -1.1019642   -0.9377206
6 months    EE               PAKISTAN                       optimal              observed          -1.9700521   -2.3285863   -1.6115179
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.2659897   -1.5212266   -1.0107529
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.6994856   -1.9106872   -1.4882840
6 months    IRC              INDIA                          optimal              observed          -1.2437438   -1.4579479   -1.0295398
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2878144   -1.3339519   -1.2416769
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2414119   -1.3097233   -1.1731005
6 months    LCNI-5           MALAWI                         optimal              observed          -1.4675883   -1.5813839   -1.3537928
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.9777974   -1.1816863   -0.7739085
6 months    MAL-ED           BRAZIL                         optimal              observed           0.2888098    0.0920750    0.4855445
6 months    MAL-ED           INDIA                          optimal              observed          -1.3668038   -1.5766113   -1.1569962
6 months    MAL-ED           NEPAL                          optimal              observed          -0.3636217   -0.5493744   -0.1778690
6 months    MAL-ED           PERU                           optimal              observed          -1.4177934   -1.5939366   -1.2416502
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.0243048   -1.2676095   -0.7810001
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6458320   -2.0580719   -1.2335920
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.1966124   -1.3430533   -1.0501715
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1133301   -1.2459921   -0.9806680
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0663452   -1.1772433   -0.9554471
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.0898161   -1.2124962   -0.9671361
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.6489918   -2.0929637   -1.2050199
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6168248   -0.7853994   -0.4482503
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8726163   -0.9164828   -0.8287497
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4688097   -2.6351603   -2.3024591
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.8806973   -3.0177081   -2.7436865
24 months   COHORTS          INDIA                          optimal              observed          -1.4620428   -1.6126410   -1.3114446
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.2043426   -2.3160804   -2.0926048
24 months   EE               PAKISTAN                       optimal              observed          -2.0777709   -2.2594065   -1.8961353
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7069975   -1.9585233   -1.4554717
24 months   IRC              INDIA                          optimal              observed          -1.6647955   -1.8439033   -1.4856876
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9502461   -2.0057479   -1.8947443
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.7158278   -1.7809724   -1.6506831
24 months   LCNI-5           MALAWI                         optimal              observed          -1.7972209   -1.9290828   -1.6653591
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.7867757   -2.0479149   -1.5256365
24 months   MAL-ED           BRAZIL                         optimal              observed           0.1778985   -0.0822173    0.4380144
24 months   MAL-ED           INDIA                          optimal              observed          -1.6187852   -1.8425898   -1.3949807
24 months   MAL-ED           NEPAL                          optimal              observed          -1.0961526   -1.3581803   -0.8341249
24 months   MAL-ED           PERU                           optimal              observed          -1.5327323   -1.7852930   -1.2801716
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.4350943   -1.6807796   -1.1894090
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0795191   -2.7313074   -1.4277309
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.8753783   -2.0559325   -1.6948241
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.2429300   -1.3991015   -1.0867584
24 months   PROBIT           BELARUS                        optimal              observed           0.0266981   -0.1616182    0.2150144
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.4217592   -1.5570350   -1.2864834
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4736714   -1.5503697   -1.3969732


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      observed             observed           0.1288717    0.0445170    0.2132265
Birth       COHORTS          INDIA                          observed             observed          -0.6688842   -0.7003528   -0.6374156
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       observed             observed          -1.8545188   -2.0422173   -1.6668203
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0877489   -1.1679913   -1.0075066
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5897102   -1.6089975   -1.5704229
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5232552   -1.5724840   -1.4740265
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0884492   -1.2349987   -0.9418997
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          observed             observed          -1.2372500   -1.5471753   -0.9273247
Birth       MAL-ED           NEPAL                          observed             observed          -0.9120000   -1.2873301   -0.5366699
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1398095   -1.3671021   -0.9125169
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5006712   -0.5212382   -0.4801043
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8103361   -1.8786415   -1.7420307
6 months    COHORTS          INDIA                          observed             observed          -1.0183078   -1.0495042   -0.9871113
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    EE               PAKISTAN                       observed             observed          -2.0782207   -2.1981595   -1.9582820
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508616   -1.4293975   -1.2723256
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3131339   -1.3362896   -1.2899781
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3449232   -1.3822755   -1.3075709
6 months    LCNI-5           MALAWI                         observed             observed          -1.6431488   -1.7125598   -1.5737379
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.1932738   -1.3246079   -1.0619397
6 months    MAL-ED           BRAZIL                         observed             observed           0.0494712   -0.0951008    0.1940431
6 months    MAL-ED           INDIA                          observed             observed          -1.1605449   -1.2821450   -1.0389448
6 months    MAL-ED           NEPAL                          observed             observed          -0.5481599   -0.6614541   -0.4348656
6 months    MAL-ED           PERU                           observed             observed          -1.3277482   -1.4358597   -1.2196367
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2937438   -1.4246923   -1.1627954
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440108   -0.5930025   -0.4950192
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8688556   -0.8944357   -0.8432754
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9885052   -3.0530889   -2.9239215
24 months   COHORTS          INDIA                          observed             observed          -2.1741663   -2.2109368   -2.1373958
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   EE               PAKISTAN                       observed             observed          -2.6563232   -2.8000905   -2.5125560
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8887629   -1.9746814   -1.8028444
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0134370   -2.0411067   -1.9857672
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7814786   -1.8170130   -1.7459442
24 months   LCNI-5           MALAWI                         observed             observed          -1.8795105   -1.9611410   -1.7978800
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9096199   -2.0438307   -1.7754091
24 months   MAL-ED           BRAZIL                         observed             observed           0.0081448   -0.1615145    0.1778041
24 months   MAL-ED           INDIA                          observed             observed          -1.8274372   -1.9559249   -1.6989495
24 months   MAL-ED           NEPAL                          observed             observed          -1.2688028   -1.3908231   -1.1467825
24 months   MAL-ED           PERU                           observed             observed          -1.7545083   -1.8762212   -1.6327955
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5654000   -2.7089193   -2.4218807
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6059152   -1.6629321   -1.5488983


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.2080163   -0.0793930    0.4954256
Birth       COHORTS          GUATEMALA                      optimal              observed           0.0274484   -0.1300261    0.1849229
Birth       COHORTS          INDIA                          optimal              observed          -0.1794917   -0.2818071   -0.0771762
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0165079   -0.0818564    0.0488407
Birth       EE               PAKISTAN                       optimal              observed          -0.4680202   -0.9992938    0.0632534
Birth       GMS-Nepal        NEPAL                          optimal              observed           0.0499730   -0.1530846    0.2530305
Birth       IRC              INDIA                          optimal              observed           0.0875692   -0.1186171    0.2937556
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0206086   -0.0520033    0.0107862
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0531216   -0.1505778    0.0443347
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.0470330   -0.2881034    0.1940374
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.0354952   -0.4369937    0.3660033
Birth       MAL-ED           INDIA                          optimal              observed           0.0305761   -0.4172786    0.4784307
Birth       MAL-ED           NEPAL                          optimal              observed          -0.3118968   -1.1045358    0.4807423
Birth       MAL-ED           PERU                           optimal              observed           0.0968816   -0.0240428    0.2178060
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2246614   -0.5154546    0.0661317
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0813768   -0.2711922    0.4339457
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0280937   -0.1417027    0.0855153
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0465469   -0.1645592    0.0714653
Birth       PROBIT           BELARUS                        optimal              observed          -0.0437859   -0.1279653    0.0403936
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.1112991    0.0195594    0.2030387
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0061380   -0.1399239    0.1276478
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.0228445   -0.0119708    0.0576597
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2417163   -0.4251266   -0.0583060
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1918771   -0.3339556   -0.0497986
6 months    COHORTS          INDIA                          optimal              observed          -0.3846191   -0.5061969   -0.2630412
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1207300   -0.1947650   -0.0466949
6 months    EE               PAKISTAN                       optimal              observed          -0.1081686   -0.4603138    0.2439766
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0848718   -0.3295281    0.1597845
6 months    Guatemala BSC    GUATEMALA                      optimal              observed           0.1370488   -0.0240349    0.2981324
6 months    IRC              INDIA                          optimal              observed           0.0093376   -0.1640673    0.1827426
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0253194   -0.0654391    0.0148003
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1035113   -0.1631323   -0.0438904
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1755605   -0.2698432   -0.0812778
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2154764   -0.3977650   -0.0331878
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.2393386   -0.4186328   -0.0600444
6 months    MAL-ED           INDIA                          optimal              observed           0.2062589    0.0313728    0.3811450
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1845381   -0.3584124   -0.0106639
6 months    MAL-ED           PERU                           optimal              observed           0.0900453   -0.0531813    0.2332718
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0390154   -0.2495874    0.1715566
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3520881   -0.0545116    0.7586878
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.2107697   -0.3377362   -0.0838031
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0853482   -0.1989418    0.0282453
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0253463   -0.1230301    0.0723375
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.3120401   -0.4087788   -0.2153015
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.2496925   -0.6764388    0.1770539
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0728140   -0.0841800    0.2298081
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0037607   -0.0318395    0.0393608
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0900582   -0.2252080    0.0450916
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1078079   -0.2287033    0.0130875
24 months   COHORTS          INDIA                          optimal              observed          -0.7121234   -0.8624675   -0.5617794
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.2097719   -0.3119756   -0.1075682
24 months   EE               PAKISTAN                       optimal              observed          -0.5785524   -0.8044045   -0.3527003
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1817654   -0.4226524    0.0591217
24 months   IRC              INDIA                          optimal              observed          -0.1339820   -0.2796633    0.0116992
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0631908   -0.1118564   -0.0145253
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0656508   -0.1223222   -0.0089795
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0822896   -0.1912105    0.0266314
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.1228442   -0.3356973    0.0900090
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1697537   -0.3899448    0.0504374
24 months   MAL-ED           INDIA                          optimal              observed          -0.2086520   -0.4058175   -0.0114864
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1726502   -0.4013781    0.0560777
24 months   MAL-ED           PERU                           optimal              observed          -0.2217760   -0.4264303   -0.0171217
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2099652   -0.4206597    0.0007292
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4858809   -1.1311655    0.1594038
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.3436796   -0.4972057   -0.1901534
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1983346   -0.3310718   -0.0655974
24 months   PROBIT           BELARUS                        optimal              observed          -0.1709872   -0.4094962    0.0675217
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1806629   -0.2981112   -0.0632146
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1322437   -0.1848048   -0.0796827
