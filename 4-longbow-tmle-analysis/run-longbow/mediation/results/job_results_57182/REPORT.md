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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n
----------  ---------------  -----------------------------  -------------  -------  ------
6 months    COHORTS          GUATEMALA                      >=155 cm           117     946
6 months    COHORTS          GUATEMALA                      <151 cm            632     946
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     946
6 months    COHORTS          INDIA                          >=155 cm           541    1819
6 months    COHORTS          INDIA                          <151 cm            791    1819
6 months    COHORTS          INDIA                          [151-155) cm       487    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm           560    2706
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm       778    2706
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    Keneba           GAMBIA                         <151 cm             67    1877
6 months    Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    LCNI-5           MALAWI                         >=155 cm           513     836
6 months    LCNI-5           MALAWI                         <151 cm            131     836
6 months    LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    MAL-ED           BANGLADESH                     >=155 cm            24     241
6 months    MAL-ED           BANGLADESH                     <151 cm            156     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm        61     241
6 months    MAL-ED           BRAZIL                         >=155 cm           121     209
6 months    MAL-ED           BRAZIL                         <151 cm             51     209
6 months    MAL-ED           BRAZIL                         [151-155) cm        37     209
6 months    MAL-ED           INDIA                          >=155 cm            55     235
6 months    MAL-ED           INDIA                          <151 cm            112     235
6 months    MAL-ED           INDIA                          [151-155) cm        68     235
6 months    MAL-ED           NEPAL                          >=155 cm            41     236
6 months    MAL-ED           NEPAL                          <151 cm            132     236
6 months    MAL-ED           NEPAL                          [151-155) cm        63     236
6 months    MAL-ED           PERU                           >=155 cm            58     272
6 months    MAL-ED           PERU                           <151 cm            157     272
6 months    MAL-ED           PERU                           [151-155) cm        57     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm           187     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm             31     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm        31     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm           134     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm            411     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm       170     715
6 months    PROBIT           BELARUS                        >=155 cm         12530   13029
6 months    PROBIT           BELARUS                        <151 cm            121   13029
6 months    PROBIT           BELARUS                        [151-155) cm       378   13029
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     602
6 months    PROVIDE          BANGLADESH                     <151 cm            329     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     602
6 months    SAS-CompFeed     INDIA                          >=155 cm           509    1226
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm       296    1226
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            75     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       102     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            440    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270
24 months   COHORTS          GUATEMALA                      >=155 cm           128    1006
24 months   COHORTS          GUATEMALA                      <151 cm            668    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm       210    1006
24 months   COHORTS          INDIA                          >=155 cm           549    1803
24 months   COHORTS          INDIA                          <151 cm            776    1803
24 months   COHORTS          INDIA                          [151-155) cm       478    1803
24 months   COHORTS          PHILIPPINES                    >=155 cm           507    2449
24 months   COHORTS          PHILIPPINES                    <151 cm           1239    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm       703    2449
24 months   Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   Keneba           GAMBIA                         <151 cm             60    1603
24 months   Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   LCNI-5           MALAWI                         >=155 cm           345     561
24 months   LCNI-5           MALAWI                         <151 cm             92     561
24 months   LCNI-5           MALAWI                         [151-155) cm       124     561
24 months   MAL-ED           BANGLADESH                     >=155 cm            22     212
24 months   MAL-ED           BANGLADESH                     <151 cm            137     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm        53     212
24 months   MAL-ED           BRAZIL                         >=155 cm            95     169
24 months   MAL-ED           BRAZIL                         <151 cm             43     169
24 months   MAL-ED           BRAZIL                         [151-155) cm        31     169
24 months   MAL-ED           INDIA                          >=155 cm            53     226
24 months   MAL-ED           INDIA                          <151 cm            110     226
24 months   MAL-ED           INDIA                          [151-155) cm        63     226
24 months   MAL-ED           NEPAL                          >=155 cm            38     228
24 months   MAL-ED           NEPAL                          <151 cm            129     228
24 months   MAL-ED           NEPAL                          [151-155) cm        61     228
24 months   MAL-ED           PERU                           >=155 cm            46     201
24 months   MAL-ED           PERU                           <151 cm            115     201
24 months   MAL-ED           PERU                           [151-155) cm        40     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm           180     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm             27     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm            76     428
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     428
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514
24 months   PROBIT           BELARUS                        >=155 cm          3796    3940
24 months   PROBIT           BELARUS                        <151 cm             34    3940
24 months   PROBIT           BELARUS                        [151-155) cm       110    3940
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     578
24 months   PROVIDE          BANGLADESH                     <151 cm            316     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm           267     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             34     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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




# Results Detail

## Results Plots
![](/tmp/656ac4bb-56a1-4c11-928e-b17df3060303/056fc743-e05f-4ed1-ad14-49f893808c3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/656ac4bb-56a1-4c11-928e-b17df3060303/056fc743-e05f-4ed1-ad14-49f893808c3e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/656ac4bb-56a1-4c11-928e-b17df3060303/056fc743-e05f-4ed1-ad14-49f893808c3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.1211484   -0.0890831    0.3313799
6 months    COHORTS          GUATEMALA                      <151 cm              NA                 0.2450676    0.1550551    0.3350801
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1213200   -0.0357611    0.2784010
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5920359   -0.6939800   -0.4900919
6 months    COHORTS          INDIA                          <151 cm              NA                -0.7686630   -0.8487036   -0.6886224
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.6233538   -0.7253068   -0.5214008
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3229844   -0.4157971   -0.2301718
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -0.2946796   -0.3511259   -0.2382332
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2537148   -0.3342357   -0.1731939
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.4339313    0.1584552    0.7094073
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0490047   -0.2084147    0.1104054
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1816102   -0.4548241    0.0916037
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.2300530   -0.2881826   -0.1719234
6 months    Keneba           GAMBIA                         <151 cm              NA                -0.2457586   -0.5908818    0.0993646
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.0485442   -0.1957023    0.0986138
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.4169795    0.3276231    0.5063358
6 months    LCNI-5           MALAWI                         <151 cm              NA                 0.6020036    0.4112603    0.7927470
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                 0.4360006    0.2818019    0.5901994
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2077003   -0.6613925    0.2459919
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.1069527   -0.2541302    0.0402248
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                 0.0772178   -0.2282554    0.3826910
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 1.0226075    0.7994491    1.2457659
6 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.7714002    0.4367720    1.1060285
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 1.0778038    0.6982811    1.4573265
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.6451831   -0.8991668   -0.3911994
6 months    MAL-ED           INDIA                          <151 cm              NA                -0.6665986   -0.8629482   -0.4702490
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.8460216   -1.0721122   -0.6199309
6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.3959204    0.0974517    0.6943892
6 months    MAL-ED           NEPAL                          <151 cm              NA                 0.0830672   -0.0845869    0.2507214
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                 0.0619854   -0.2181160    0.3420867
6 months    MAL-ED           PERU                           >=155 cm             NA                 1.1325042    0.8657640    1.3992444
6 months    MAL-ED           PERU                           <151 cm              NA                 0.9968392    0.8381113    1.1555671
6 months    MAL-ED           PERU                           [151-155) cm         NA                 1.0990079    0.8371280    1.3608878
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.5110358    0.3296626    0.6924089
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.6025411    0.1697988    1.0352833
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.5915436    0.1151573    1.0679300
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5284565    0.3618230    0.6950899
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6072863    0.3201672    0.8944053
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.5170661    0.2026245    0.8315078
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5483109   -0.7478912   -0.3487305
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4767598   -0.5926518   -0.3608678
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2872914   -0.4909763   -0.0836065
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0829663   -0.0895581    0.2554908
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0227750   -0.0791465    0.1246965
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0105643   -0.1634965    0.1846250
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.5782588    0.5192182    0.6372994
6 months    PROBIT           BELARUS                        <151 cm              NA                 0.6604105    0.5742739    0.7465470
6 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.5486319    0.4171315    0.6801324
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0703593   -0.2624987    0.1217800
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.2894391   -0.3955805   -0.1832976
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0982559   -0.2801154    0.0836036
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6198135   -0.7925062   -0.4471209
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.6813283   -0.8190375   -0.5436190
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.6230383   -0.7742868   -0.4717897
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.0224501   -1.2806705   -0.7642297
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.9625073   -1.1214501   -0.8035646
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.0993477   -1.3228879   -0.8758075
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0526929   -0.0127810    0.1181668
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2437196    0.1097413    0.3776980
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0403569   -0.0825673    0.1632812
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2842337    0.2537475    0.3147198
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3581984    0.2442157    0.4721811
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3273326    0.2519382    0.4027269
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2486464   -0.4214792   -0.0758137
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.2800015   -0.3513480   -0.2086550
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2164946   -0.3551275   -0.0778618
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4737343   -0.5608232   -0.3866454
24 months   COHORTS          INDIA                          <151 cm              NA                -0.6718183   -0.7415290   -0.6021076
24 months   COHORTS          INDIA                          [151-155) cm         NA                -0.5373301   -0.6291169   -0.4455433
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.5183040   -0.5965440   -0.4400640
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -0.6855536   -0.7366952   -0.6344119
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5360215   -0.6037837   -0.4682594
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.8241117   -0.8774050   -0.7708184
24 months   Keneba           GAMBIA                         <151 cm              NA                -0.9585489   -1.2069304   -0.7101673
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.6693682   -0.8093773   -0.5293590
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0368241   -0.1353643    0.0617160
24 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0929224   -0.3085329    0.1226881
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0483620   -0.2500043    0.1532804
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8846865   -1.4230653   -0.3463076
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.8203095   -0.9657413   -0.6748777
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.7857051   -1.0319363   -0.5394739
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.5683815    0.2635387    0.8732243
24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.1590848   -0.1572561    0.4754256
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.4669635    0.0222162    0.9117108
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.6559769   -0.8755708   -0.4363830
24 months   MAL-ED           INDIA                          <151 cm              NA                -1.0887731   -1.2591500   -0.9183961
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.8907749   -1.1085930   -0.6729568
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1908914   -0.4773037    0.0955209
24 months   MAL-ED           NEPAL                          <151 cm              NA                -0.4473826   -0.5939103   -0.3008549
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.2908727   -0.5200041   -0.0617413
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.1057542   -0.1306821    0.3421905
24 months   MAL-ED           PERU                           <151 cm              NA                 0.0822056   -0.0901887    0.2545999
24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.1520479   -0.1013616    0.4054575
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.4105967    0.2756971    0.5454963
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.2651387   -0.1691535    0.6994308
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.4944574    0.1132745    0.8756402
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1437033   -0.0118505    0.2992572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1949767   -0.4678840    0.0779306
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0783060   -0.2220889    0.3787009
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9457028   -1.2061529   -0.6852526
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.8966758   -1.0176505   -0.7757011
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.9275441   -1.1609630   -0.6941251
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.4006591   -0.5985793   -0.2027388
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.7143701   -0.8387070   -0.5900331
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.5351164   -0.7346807   -0.3355522
24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.7019371    0.5838655    0.8200087
24 months   PROBIT           BELARUS                        <151 cm              NA                 0.6254864    0.4254578    0.8255149
24 months   PROBIT           BELARUS                        [151-155) cm         NA                 0.6322155    0.3467821    0.9176488
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.8331355   -1.0321286   -0.6341424
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.9460292   -1.0413422   -0.8507162
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.8345476   -1.0151273   -0.6539680
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1929686   -1.3181494   -1.0677879
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5061665   -1.9656337   -1.0466994
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9093726   -1.1400203   -0.6787250


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    Keneba           GAMBIA                         NA                   NA                -0.2053991   -0.2588843   -0.1519138
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5782032    0.5194935    0.6369129
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948466    0.2673139    0.3223793
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1712534   -1.2800940   -1.0624128


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1239192   -0.1033749    0.3512132
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0001716   -0.2617255    0.2620686
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.1766271   -0.3060238   -0.0472303
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0313178   -0.1752280    0.1125923
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0283049   -0.0799288    0.1365385
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0692696   -0.0532644    0.1918036
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.4829359   -0.8021367   -0.1637352
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.6155415   -1.0051876   -0.2258954
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0157056   -0.3653548    0.3339436
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1815088    0.0237028    0.3393148
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1850242   -0.0256968    0.3957452
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0190212   -0.1593395    0.1973818
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.1007476   -0.3757447    0.5772399
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.2849181   -0.2629363    0.8327726
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.2512073   -0.6540739    0.1516593
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0551963   -0.3854305    0.4958230
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0214156   -0.3450935    0.3022623
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2008385   -0.5433711    0.1416942
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.3128532   -0.6545201    0.0288137
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3339350   -0.7422412    0.0743711
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.1356650   -0.4446509    0.1733209
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0334963   -0.4064007    0.3394082
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0915053   -0.3759157    0.5589263
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0805079   -0.4385522    0.5995679
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0788298   -0.2532252    0.4108848
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0113904   -0.3677752    0.3449945
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0715511   -0.1594759    0.3025780
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2610195   -0.0243958    0.5464348
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0601913   -0.2596767    0.1392941
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0724021   -0.3166056    0.1718015
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0821517   -0.0134737    0.1777771
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0296269   -0.1525727    0.0933189
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2190797   -0.4389871    0.0008276
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0278965   -0.2921769    0.2363839
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0615147   -0.2370584    0.1140290
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0032247   -0.1904695    0.1840200
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0599427   -0.2428432    0.3627287
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0768976   -0.4185431    0.2647479
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1910268    0.0417941    0.3402594
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0123360   -0.1517355    0.1270635
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0739647   -0.0438079    0.1917373
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0430989   -0.0379787    0.1241764
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0313551   -0.2183155    0.1556054
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0321518   -0.1895587    0.2538623
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.1980839   -0.3096865   -0.0864813
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0635958   -0.1900544    0.0628628
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.1672496   -0.2599751   -0.0745241
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0177175   -0.1206889    0.0852538
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1344371   -0.3880051    0.1191309
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1547435    0.0053563    0.3041308
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0560983   -0.2934312    0.1812346
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0115379   -0.2343236    0.2112479
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0643770   -0.4943953    0.6231493
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0989814   -0.4956255    0.6935883
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4092968   -0.8477969    0.0292034
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.1014180   -0.6402474    0.4374113
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4327962   -0.7105686   -0.1550237
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2347980   -0.5444676    0.0748715
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2564912   -0.5785765    0.0655942
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0999813   -0.4672250    0.2672624
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0235486   -0.3137983    0.2667011
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0462937   -0.2983492    0.3909366
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.1454580   -0.6015863    0.3106702
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0838607   -0.3191202    0.4868416
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3386801   -0.6524858   -0.0248744
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0653974   -0.4052792    0.2744845
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0490270   -0.2382053    0.3362592
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0181587   -0.3301129    0.3664303
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3137110   -0.5462120   -0.0812099
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1344573   -0.4147983    0.1458836
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0764507   -0.3155531    0.1626516
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0697217   -0.3271341    0.1876908
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.1128937   -0.3314147    0.1056272
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0014122   -0.2662048    0.2633805
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3131979   -0.7895721    0.1631763
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2835960    0.0210250    0.5461671


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0714520   -0.1269028    0.2698068
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0847755   -0.1697354    0.0001844
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0291411   -0.0539819    0.1122641
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.4595229   -0.7221766   -0.1968692
6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0246539    0.0004914    0.0488164
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0345756   -0.0227432    0.0918943
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0700240   -0.3618103    0.5018582
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0505302   -0.1929349    0.0918746
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0582318   -0.2858857    0.1694220
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.2854896   -0.5610170   -0.0099623
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.0776451   -0.3119437    0.1566535
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0181142   -0.0721509    0.1083792
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0077649   -0.1026663    0.1181960
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1009071   -0.0831100    0.2849242
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0532041   -0.2107252    0.1043171
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0000555   -0.0041135    0.0040024
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1283477   -0.2965538    0.0398583
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0228170   -0.1223296    0.0766957
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0170675   -0.2149218    0.2490568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0260828   -0.0161621    0.0683277
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0106130   -0.0036327    0.0248586
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0357571   -0.1983158    0.1268015
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0982180   -0.1704838   -0.0259521
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0916552   -0.1613303   -0.0219801
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0139401   -0.0080480    0.0359282
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0100475   -0.0763576    0.0562625
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0653940   -0.4385191    0.5693072
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.1057582   -0.2829831    0.0714666
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.2959479   -0.4943801   -0.0975157
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1840209   -0.4460986    0.0780568
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0054440   -0.2056418    0.2165298
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0189549   -0.0890095    0.0510996
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0889058   -0.1965610    0.0187493
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0341237   -0.2017836    0.2700310
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2096911   -0.3895235   -0.0298587
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0028157   -0.0109816    0.0053501
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0583005   -0.2281404    0.1115394
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0217152   -0.0470539    0.0904844
