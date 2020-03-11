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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n
----------  ---------------  -----------------------------  -------------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       COHORTS          GUATEMALA                      <151 cm            545     840
Birth       COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       COHORTS          INDIA                          >=155 cm           530    1774
Birth       COHORTS          INDIA                          <151 cm            763    1774
Birth       COHORTS          INDIA                          [151-155) cm       481    1774
Birth       COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       JiVitA-3         BANGLADESH                     >=155 cm          3317   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm          13436   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      5603   22356
Birth       Keneba           GAMBIA                         >=155 cm          1187    1431
Birth       Keneba           GAMBIA                         <151 cm             51    1431
Birth       Keneba           GAMBIA                         [151-155) cm       193    1431
Birth       MAL-ED           BANGLADESH                     >=155 cm            22     222
Birth       MAL-ED           BANGLADESH                     <151 cm            145     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm        55     222
Birth       MAL-ED           BRAZIL                         >=155 cm            32      64
Birth       MAL-ED           BRAZIL                         <151 cm             20      64
Birth       MAL-ED           BRAZIL                         [151-155) cm        12      64
Birth       MAL-ED           INDIA                          >=155 cm            12      43
Birth       MAL-ED           INDIA                          <151 cm             20      43
Birth       MAL-ED           INDIA                          [151-155) cm        11      43
Birth       MAL-ED           NEPAL                          >=155 cm             6      27
Birth       MAL-ED           NEPAL                          <151 cm             13      27
Birth       MAL-ED           NEPAL                          [151-155) cm         8      27
Birth       MAL-ED           PERU                           >=155 cm            48     226
Birth       MAL-ED           PERU                           <151 cm            131     226
Birth       MAL-ED           PERU                           [151-155) cm        47     226
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm             10     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            72     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        29     122
Birth       NIH-Birth        BANGLADESH                     >=155 cm           111     608
Birth       NIH-Birth        BANGLADESH                     <151 cm            356     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       141     608
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           134     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm            418     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       177     729
Birth       PROBIT           BELARUS                        >=155 cm         13209   13732
Birth       PROBIT           BELARUS                        <151 cm            125   13732
Birth       PROBIT           BELARUS                        [151-155) cm       398   13732
Birth       PROVIDE          BANGLADESH                     >=155 cm           110     517
Birth       PROVIDE          BANGLADESH                     <151 cm            286     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     517
Birth       SAS-CompFeed     INDIA                          >=155 cm           467    1135
Birth       SAS-CompFeed     INDIA                          <151 cm            385    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm       283    1135
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7732    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            560    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1413    9705
6 months    COHORTS          GUATEMALA                      >=155 cm           117     943
6 months    COHORTS          GUATEMALA                      <151 cm            629     943
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     943
6 months    COHORTS          INDIA                          >=155 cm           541    1819
6 months    COHORTS          INDIA                          <151 cm            790    1819
6 months    COHORTS          INDIA                          [151-155) cm       488    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm           561    2708
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm       779    2708
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2660   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm           9797   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4304   16761
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
6 months    PROBIT           BELARUS                        >=155 cm         12531   13031
6 months    PROBIT           BELARUS                        <151 cm            121   13031
6 months    PROBIT           BELARUS                        [151-155) cm       379   13031
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     603
6 months    PROVIDE          BANGLADESH                     <151 cm            330     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     603
6 months    SAS-CompFeed     INDIA                          >=155 cm           510    1228
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm       297    1228
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            74     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       103     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            445    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394
24 months   COHORTS          GUATEMALA                      >=155 cm           126     994
24 months   COHORTS          GUATEMALA                      <151 cm            659     994
24 months   COHORTS          GUATEMALA                      [151-155) cm       209     994
24 months   COHORTS          INDIA                          >=155 cm           552    1819
24 months   COHORTS          INDIA                          <151 cm            785    1819
24 months   COHORTS          INDIA                          [151-155) cm       482    1819
24 months   COHORTS          PHILIPPINES                    >=155 cm           510    2445
24 months   COHORTS          PHILIPPINES                    <151 cm           1234    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm       701    2445
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1314    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm           5067    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2218    8599
24 months   Keneba           GAMBIA                         >=155 cm          1338    1602
24 months   Keneba           GAMBIA                         <151 cm             60    1602
24 months   Keneba           GAMBIA                         [151-155) cm       204    1602
24 months   LCNI-5           MALAWI                         >=155 cm           355     577
24 months   LCNI-5           MALAWI                         <151 cm             95     577
24 months   LCNI-5           MALAWI                         [151-155) cm       127     577
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
24 months   NIH-Birth        BANGLADESH                     >=155 cm            77     429
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     429
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514
24 months   PROBIT           BELARUS                        >=155 cm          3859    4005
24 months   PROBIT           BELARUS                        <151 cm             35    4005
24 months   PROBIT           BELARUS                        [151-155) cm       111    4005
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     577
24 months   PROVIDE          BANGLADESH                     <151 cm            315     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             98    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
![](/tmp/ff513770-dd4b-4138-bc61-d29451682a07/50d4033b-9cc6-4178-9e84-58eb5fec29e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.5038049    0.3114044    0.6962054
Birth       COHORTS          INDIA                          optimal              observed          -0.2900538   -0.3872894   -0.1928182
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.0554610   -0.0225395    0.1334614
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.1718921   -1.2148640   -1.1289201
Birth       Keneba           GAMBIA                         optimal              observed           0.1226720    0.0507174    0.1946266
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.8528488   -1.1599839   -0.5457136
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.3882342   -0.6487952   -0.1276731
Birth       MAL-ED           INDIA                          optimal              observed          -1.1967360   -1.9593075   -0.4341645
Birth       MAL-ED           NEPAL                          optimal              observed          -0.4296848   -1.1262706    0.2669009
Birth       MAL-ED           PERU                           optimal              observed          -0.5196585   -0.7860189   -0.2532981
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7269487   -1.3211579   -0.1327396
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9981840   -1.2849775   -0.7113904
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.5674854   -0.7739789   -0.3609918
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.6399045   -0.8361132   -0.4436957
Birth       PROBIT           BELARUS                        optimal              observed           1.3486044    1.1916310    1.5055777
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.6387921   -0.8138177   -0.4637665
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.1696516   -1.3036691   -1.0356340
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4388349   -0.4662100   -0.4114598
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.1718856   -1.3808276   -0.9629436
6 months    COHORTS          INDIA                          optimal              observed          -0.4968921   -0.5915727   -0.4022115
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.7482332   -0.8376399   -0.6588265
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.4657797   -1.7905942   -1.1409651
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.7869424   -0.8334078   -0.7404770
6 months    Keneba           GAMBIA                         optimal              observed          -0.8399434   -0.8931342   -0.7867526
6 months    LCNI-5           MALAWI                         optimal              observed          -1.4658657   -1.5529829   -1.3787486
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1410625   -1.3696192   -0.9125058
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0870264   -0.4366523    0.2625994
6 months    MAL-ED           INDIA                          optimal              observed          -0.9200080   -1.1387814   -0.7012346
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0321308   -0.2450688    0.1808073
6 months    MAL-ED           PERU                           optimal              observed          -1.0304259   -1.2544626   -0.8063892
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9649762   -1.1102133   -0.8197391
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1740879   -1.3229671   -1.0252087
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.8838888   -1.0793385   -0.6884391
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.9090981   -1.0733339   -0.7448622
6 months    PROBIT           BELARUS                        optimal              observed           0.1272748    0.0365431    0.2180065
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.6773386   -0.8421262   -0.5125510
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.0804815   -1.1794670   -0.9814959
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.4080866   -1.6343687   -1.1818044
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3523201   -0.4142178   -0.2904225
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7910866   -0.8216183   -0.7605550
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.1942652   -2.3848758   -2.0036547
24 months   COHORTS          INDIA                          optimal              observed          -1.5450465   -1.6418581   -1.4482348
24 months   COHORTS          PHILIPPINES                    optimal              observed          -1.9698186   -2.0656401   -1.8739971
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.5028849   -1.5608626   -1.4449072
24 months   Keneba           GAMBIA                         optimal              observed          -1.5044121   -1.5611038   -1.4477205
24 months   LCNI-5           MALAWI                         optimal              observed          -1.6651033   -1.7624618   -1.5677448
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.6634823   -1.9451008   -1.3818639
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0895285   -0.3477596    0.1687026
24 months   MAL-ED           INDIA                          optimal              observed          -1.4700688   -1.7337243   -1.2064134
24 months   MAL-ED           NEPAL                          optimal              observed          -0.7275846   -0.9561193   -0.4990500
24 months   MAL-ED           PERU                           optimal              observed          -1.3272637   -1.5849341   -1.0695933
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.5635549   -1.7168325   -1.4102772
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4605088   -2.6561215   -2.2648960
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.5521854   -1.7948156   -1.3095552
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.9256021   -1.0858068   -0.7653974
24 months   PROBIT           BELARUS                        optimal              observed          -0.0611127   -0.3545391    0.2323138
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.1926469   -1.3704306   -1.0148631
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4805785   -1.5493205   -1.4118366


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed           0.1335238    0.0490187    0.2180289
Birth       COHORTS          INDIA                          observed             observed          -0.5973224   -0.6502394   -0.5444055
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5893474   -1.6086366   -1.5700581
Birth       Keneba           GAMBIA                         observed             observed           0.0474004   -0.0188757    0.1136765
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5707921   -0.7685593   -0.3730248
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        observed             observed           1.3120339    1.1524984    1.4715694
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4438150   -1.5337502   -1.3538797
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4765410   -0.5009545   -0.4521274
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8116225   -1.8800533   -1.7431916
6 months    COHORTS          INDIA                          observed             observed          -0.9254151   -0.9779952   -0.8728349
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5599206   -1.6885363   -1.4313049
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3139055   -1.3370256   -1.2907854
6 months    Keneba           GAMBIA                         observed             observed          -0.9159303   -0.9650776   -0.8667830
6 months    LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.1077908    0.0170166    0.1985649
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8882058   -1.9998264   -1.7765852
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424553   -0.5916933   -0.4932174
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8803077   -0.9076731   -0.8529423
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9963380   -3.0630990   -2.9295770
24 months   COHORTS          INDIA                          observed             observed          -2.0710720   -2.1255079   -2.0166362
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0137632   -2.0415122   -1.9860142
24 months   Keneba           GAMBIA                         observed             observed          -1.5829641   -1.6348134   -1.5311148
24 months   LCNI-5           MALAWI                         observed             observed          -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.5981623   -1.6603107   -1.5360139


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.3702811   -0.5544908   -0.1860713
Birth       COHORTS          INDIA                          optimal              observed          -0.3072687   -0.3888481   -0.2256892
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3045101   -0.3758361   -0.2331842
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.4174553   -0.4566789   -0.3782318
Birth       Keneba           GAMBIA                         optimal              observed          -0.0752716   -0.1106757   -0.0398675
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2250341   -0.5090376    0.0589693
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.3002033   -0.5870086   -0.0133981
Birth       MAL-ED           INDIA                          optimal              observed          -0.0334965   -0.6589016    0.5919085
Birth       MAL-ED           NEPAL                          optimal              observed          -0.4236485   -1.0871102    0.2398131
Birth       MAL-ED           PERU                           optimal              observed          -0.3854742   -0.6167684   -0.1541801
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1561567   -0.3532161    0.6655294
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1382914   -0.3158676    0.0392847
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3635344   -0.5527250   -0.1743438
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.2690118   -0.4411836   -0.0968401
Birth       PROBIT           BELARUS                        optimal              observed          -0.0365704   -0.0479504   -0.0251905
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.2537224   -0.4074811   -0.0999638
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.2741634   -0.3547217   -0.1936051
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0377061   -0.0499827   -0.0254295
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.6397369   -0.8351508   -0.4443230
6 months    COHORTS          INDIA                          optimal              observed          -0.4285229   -0.5089936   -0.3480522
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.3923392   -0.4724894   -0.3121890
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0941410   -0.3957302    0.2074483
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5269631   -0.5684905   -0.4854356
6 months    Keneba           GAMBIA                         optimal              observed          -0.0759869   -0.0988018   -0.0531721
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1919094   -0.2480900   -0.1357287
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0639306   -0.2909001    0.1630389
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1346022   -0.1600925    0.4292969
6 months    MAL-ED           INDIA                          optimal              observed          -0.2859495   -0.4868095   -0.0850894
6 months    MAL-ED           NEPAL                          optimal              observed          -0.5294512   -0.7360667   -0.3228356
6 months    MAL-ED           PERU                           optimal              observed          -0.2936764   -0.4968882   -0.0904647
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1077681   -0.1866999   -0.0288363
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1946570   -0.2997135   -0.0896005
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.5234932   -0.7010585   -0.3459280
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.2895803   -0.4378889   -0.1412716
6 months    PROBIT           BELARUS                        optimal              observed          -0.0194840   -0.0240698   -0.0148983
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.4121915   -0.5580503   -0.2663327
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.3264078   -0.3802415   -0.2725741
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.4801192   -0.6901551   -0.2700834
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1901352   -0.2284898   -0.1517806
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0892211   -0.1032347   -0.0752074
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.8020728   -0.9819800   -0.6221655
24 months   COHORTS          INDIA                          optimal              observed          -0.5260255   -0.6072467   -0.4448044
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4442959   -0.5306093   -0.3579826
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.5108784   -0.5639266   -0.4578301
24 months   Keneba           GAMBIA                         optimal              observed          -0.0785520   -0.1017480   -0.0553560
24 months   LCNI-5           MALAWI                         optimal              observed          -0.2200787   -0.2874030   -0.1527545
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.3149139   -0.5946415   -0.0351863
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0956429   -0.0864698    0.2777557
24 months   MAL-ED           INDIA                          optimal              observed          -0.4144002   -0.6491786   -0.1796218
24 months   MAL-ED           NEPAL                          optimal              observed          -0.5800031   -0.8021428   -0.3578633
24 months   MAL-ED           PERU                           optimal              observed          -0.4252073   -0.6507148   -0.1996998
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0796681   -0.1576619   -0.0016742
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1850520   -0.3269246   -0.0431794
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.6668725   -0.8869139   -0.4468311
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.5156625   -0.6664868   -0.3648381
24 months   PROBIT           BELARUS                        optimal              observed          -0.0833022   -0.1300375   -0.0365670
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.4076131   -0.5653050   -0.2499212
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1175838   -0.1510111   -0.0841564
