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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e1a3d125-02fe-47ae-b542-7269622f8a8d/24b580c0-f91b-4f56-9fb6-3cf404258e63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1850276   -0.5296132    0.1595580
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.1352089   -1.3900220   -0.8803957
Birth       COHORTS          INDIA                          optimal              observed          -0.7858307   -0.8821983   -0.6894630
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6752844   -0.7733023   -0.5772665
Birth       EE               PAKISTAN                       optimal              observed           0.5097758   -0.2608835    1.2804351
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0764255   -1.2488138   -0.9040373
Birth       IRC              INDIA                          optimal              observed          -0.8994823   -1.2059706   -0.5929940
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7749518   -0.8163481   -0.7335556
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6932975   -0.7875732   -0.5990217
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7649192   -1.0389612   -0.4908771
Birth       MAL-ED           BRAZIL                         optimal              observed           0.0620489   -0.5287452    0.6528430
Birth       MAL-ED           INDIA                          optimal              observed          -0.7321632   -1.2529999   -0.2113265
Birth       MAL-ED           NEPAL                          optimal              observed          -0.4593330   -0.8656830   -0.0529830
Birth       MAL-ED           PERU                           optimal              observed           0.1374754   -0.0895113    0.3644620
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1163771   -0.4461886    0.2134343
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0779811    0.5613271    1.5946352
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.4165118   -1.5862793   -1.2467443
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.2204915   -1.3767747   -1.0642084
Birth       PROBIT           BELARUS                        optimal              observed          -1.1311806   -1.3379041   -0.9244572
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2826239   -1.4484149   -1.1168328
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.7720640   -0.9364014   -0.6077265
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4927943   -0.5499252   -0.4356634
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6065195   -0.8727873   -0.3402517
6 months    COHORTS          GUATEMALA                      optimal              observed           0.3871937    0.2291225    0.5452650
6 months    COHORTS          INDIA                          optimal              observed          -0.4491568   -0.5474554   -0.3508582
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2828520   -0.3625698   -0.2031342
6 months    EE               PAKISTAN                       optimal              observed          -0.5036409   -0.8688293   -0.1384526
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.1236363   -0.4103098    0.1630373
6 months    Guatemala BSC    GUATEMALA                      optimal              observed           0.0870461   -0.1595412    0.3336333
6 months    IRC              INDIA                          optimal              observed          -0.5042669   -0.7487917   -0.2597421
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5581930   -0.5994177   -0.5169684
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3235548   -0.4024719   -0.2446377
6 months    LCNI-5           MALAWI                         optimal              observed           0.5955049    0.4737779    0.7172319
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2589321   -0.5353890    0.0175247
6 months    MAL-ED           BRAZIL                         optimal              observed           1.1494234    0.8736929    1.4251539
6 months    MAL-ED           INDIA                          optimal              observed          -0.9268046   -1.1737177   -0.6798915
6 months    MAL-ED           NEPAL                          optimal              observed           0.4353676    0.1793246    0.6914105
6 months    MAL-ED           PERU                           optimal              observed           1.1476971    0.9126624    1.3827318
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.3232164    0.0120676    0.6343653
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4233424   -0.0946882    0.9413730
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3112286   -0.4924154   -0.1300418
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1469700    0.0034409    0.2904990
6 months    PROBIT           BELARUS                        optimal              observed           0.5795532    0.5215982    0.6375082
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1122385   -0.2771259    0.0526489
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5498534   -0.6890888   -0.4106179
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.7562033   -1.1314231   -0.3809835
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0721153   -0.1673067    0.3115372
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3693325    0.3297979    0.4088670
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3941222   -0.5433689   -0.2448754
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1722712   -0.2834146   -0.0611279
24 months   COHORTS          INDIA                          optimal              observed          -0.2581632   -0.3571143   -0.1592121
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.6107622   -0.6965764   -0.5249480
24 months   EE               PAKISTAN                       optimal              observed          -1.3763204   -2.0752256   -0.6774153
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.9209061   -1.2138644   -0.6279479
24 months   IRC              INDIA                          optimal              observed          -0.6107796   -0.7762186   -0.4453406
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2782396   -1.3323820   -1.2240972
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.2871946   -1.3495112   -1.2248780
24 months   LCNI-5           MALAWI                         optimal              observed           0.1782614    0.0399468    0.3165759
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.5961964   -0.8533733   -0.3390194
24 months   MAL-ED           BRAZIL                         optimal              observed           0.6608005    0.3088211    1.0127800
24 months   MAL-ED           INDIA                          optimal              observed          -0.8757492   -1.0893824   -0.6621160
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1166472   -0.3846943    0.1514000
24 months   MAL-ED           PERU                           optimal              observed          -0.0203633   -0.2175189    0.1767923
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.5158680    0.2847009    0.7470351
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1817783    0.0204460    0.3431107
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.7896849   -0.9796885   -0.5996813
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3893709   -0.5510815   -0.2276602
24 months   PROBIT           BELARUS                        optimal              observed           0.7836717    0.5956819    0.9716616
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8386491   -0.9873430   -0.6899553
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1629119   -1.3453325   -0.9804912


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0590508   -1.1604735   -0.9576281
Birth       COHORTS          INDIA                          observed             observed          -0.9831277   -1.0164986   -0.9497568
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1182629   -1.2060675   -1.0304584
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7779831   -0.7969771   -0.7589891
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6895483   -0.7419864   -0.6371102
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9109143   -1.0715205   -0.7503080
Birth       MAL-ED           BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          observed             observed          -0.9021053   -1.2132997   -0.5909108
Birth       MAL-ED           NEPAL                          observed             observed          -0.7791667   -1.1649642   -0.3933692
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7997938    0.5930740    1.0065137
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5152927   -0.5411678   -0.4894176
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      observed             observed           0.1972718    0.1253735    0.2691700
6 months    COHORTS          INDIA                          observed             observed          -0.7006307   -0.7314213   -0.6698400
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    EE               PAKISTAN                       observed             observed          -0.7785977   -0.8934940   -0.6637013
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6087819   -0.6949591   -0.5226048
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5932740   -0.6128028   -0.5737451
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3903558   -0.4277318   -0.3529799
6 months    LCNI-5           MALAWI                         observed             observed           0.4399754    0.3683855    0.5115653
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.0723895   -0.2148128    0.0700339
6 months    MAL-ED           BRAZIL                         observed             observed           0.9744591    0.8094713    1.1394470
6 months    MAL-ED           INDIA                          observed             observed          -0.6859816   -0.8229470   -0.5490162
6 months    MAL-ED           NEPAL                          observed             observed           0.1223152   -0.0106456    0.2552761
6 months    MAL-ED           PERU                           observed             observed           1.0566544    0.9348515    1.1784573
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5536864    0.4102695    0.6971033
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0807224    0.0278917    0.1335530
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3101107    0.2844075    0.3358139
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2765075   -0.3306839   -0.2223311
24 months   COHORTS          INDIA                          observed             observed          -0.6386606   -0.6699072   -0.6074140
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   EE               PAKISTAN                       observed             observed          -1.0042771   -1.1523338   -0.8562205
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1372176   -1.2263063   -1.0481290
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2974744   -1.3207756   -1.2741732
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2243057   -1.2562915   -1.1923198
24 months   LCNI-5           MALAWI                         observed             observed          -0.0441457   -0.1265899    0.0382985
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.7626901   -0.8991383   -0.6262418
24 months   MAL-ED           BRAZIL                         observed             observed           0.4620139    0.2549144    0.6691133
24 months   MAL-ED           INDIA                          observed             observed          -0.9438945   -1.0682517   -0.8195372
24 months   MAL-ED           NEPAL                          observed             observed          -0.3583333   -0.4767474   -0.2399193
24 months   MAL-ED           PERU                           observed             observed           0.1112042   -0.0124506    0.2348589
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0906000   -0.0489294    0.2301294
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1825404   -1.2814625   -1.0836183


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2797980   -0.5635047    0.0039087
Birth       COHORTS          GUATEMALA                      optimal              observed           0.0761581   -0.1531027    0.3054188
Birth       COHORTS          INDIA                          optimal              observed          -0.1972970   -0.2900214   -0.1045726
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0674407   -0.1534042    0.0185228
Birth       EE               PAKISTAN                       optimal              observed          -0.8430809   -1.6206489   -0.0655129
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0418374   -0.1915654    0.1078907
Birth       IRC              INDIA                          optimal              observed          -0.1111008   -0.3476410    0.1254394
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0030313   -0.0384735    0.0324110
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.0037492   -0.0776422    0.0851406
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.1459951   -0.3909687    0.0989785
Birth       MAL-ED           BRAZIL                         optimal              observed           0.3408543   -0.1748575    0.8565662
Birth       MAL-ED           INDIA                          optimal              observed          -0.1699421   -0.5264333    0.1865492
Birth       MAL-ED           NEPAL                          optimal              observed          -0.3198337   -0.7358229    0.0961556
Birth       MAL-ED           PERU                           optimal              observed          -0.1894929   -0.3700713   -0.0089146
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0762062   -0.2976898    0.1452774
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2781873   -0.8065516    0.2501770
Birth       NIH-Birth        BANGLADESH                     optimal              observed           0.0665901   -0.0754028    0.2085829
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0236598   -0.1574644    0.1101448
Birth       PROBIT           BELARUS                        optimal              observed          -0.0179986   -0.0684093    0.0324120
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0158348   -0.1544288    0.1227593
Birth       SAS-CompFeed     INDIA                          optimal              observed           0.1020186   -0.0395063    0.2435436
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0224984   -0.0733036    0.0283068
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.1038428   -0.1186614    0.3263471
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1899220   -0.3302671   -0.0495768
6 months    COHORTS          INDIA                          optimal              observed          -0.2514739   -0.3473332   -0.1556145
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0109913   -0.0788988    0.0569161
6 months    EE               PAKISTAN                       optimal              observed          -0.2749567   -0.6328641    0.0829506
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.4851457   -0.7611059   -0.2091855
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.1439293   -0.3521959    0.0643372
6 months    IRC              INDIA                          optimal              observed          -0.0946628   -0.3020937    0.1127680
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0350810   -0.0719407    0.0017788
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0668010   -0.1373018    0.0036998
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1555295   -0.2538437   -0.0572153
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.1865427   -0.0516228    0.4247082
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.1749643   -0.4020640    0.0521355
6 months    MAL-ED           INDIA                          optimal              observed           0.2408230    0.0478742    0.4337718
6 months    MAL-ED           NEPAL                          optimal              observed          -0.3130523   -0.5373813   -0.0887234
6 months    MAL-ED           PERU                           optimal              observed          -0.0910427   -0.2826616    0.1005762
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.2189620   -0.0491589    0.4870830
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1303440   -0.3763312    0.6370191
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1361752   -0.2869742    0.0146238
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1172077   -0.2436792    0.0092638
6 months    PROBIT           BELARUS                        optimal              observed          -0.0054433   -0.0475848    0.0366983
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0868521   -0.2288974    0.0551931
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1158550   -0.2371044    0.0053944
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.2559546   -0.6245377    0.1126285
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0086071   -0.2270303    0.2442445
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0592218   -0.0900092   -0.0284344
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1630284   -0.2809445   -0.0451123
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1042363   -0.2008365   -0.0076360
24 months   COHORTS          INDIA                          optimal              observed          -0.3804974   -0.4784402   -0.2825546
24 months   COHORTS          PHILIPPINES                    optimal              observed           0.0008030   -0.0759391    0.0775452
24 months   EE               PAKISTAN                       optimal              observed           0.3720433   -0.3144003    1.0584869
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.2163115   -0.4959182    0.0632951
24 months   IRC              INDIA                          optimal              observed          -0.1350354   -0.2702159    0.0001451
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0192348   -0.0689249    0.0304553
24 months   JiVitA-4         BANGLADESH                     optimal              observed           0.0628889    0.0077737    0.1180041
24 months   LCNI-5           MALAWI                         optimal              observed          -0.2224071   -0.3286006   -0.1162135
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.1664937   -0.3762751    0.0432877
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1987867   -0.4798396    0.0822662
24 months   MAL-ED           INDIA                          optimal              observed          -0.0681453   -0.2388936    0.1026031
24 months   MAL-ED           NEPAL                          optimal              observed          -0.2416861   -0.4762169   -0.0071554
24 months   MAL-ED           PERU                           optimal              observed           0.1315674   -0.0283193    0.2914541
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1068379   -0.3125495    0.0988737
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0911783   -0.1997554    0.0173987
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.1218941   -0.2821405    0.0383522
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.2209793   -0.3518224   -0.0901363
24 months   PROBIT           BELARUS                        optimal              observed          -0.0855311   -0.2252133    0.0541511
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0542179   -0.1779376    0.0695019
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0196286   -0.1730265    0.1337693
