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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n
----------  ---------------  -----------------------------  -------------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       COHORTS          GUATEMALA                      <151 cm            484     748
Birth       COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       COHORTS          INDIA                          >=155 cm           508    1676
Birth       COHORTS          INDIA                          <151 cm            712    1676
Birth       COHORTS          INDIA                          [151-155) cm       456    1676
Birth       COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       JiVitA-3         BANGLADESH                     >=155 cm          2966   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm          10259   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      4711   17936
Birth       Keneba           GAMBIA                         >=155 cm          1135    1362
Birth       Keneba           GAMBIA                         <151 cm             46    1362
Birth       Keneba           GAMBIA                         [151-155) cm       181    1362
Birth       MAL-ED           BANGLADESH                     >=155 cm            21     209
Birth       MAL-ED           BANGLADESH                     <151 cm            134     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm        54     209
Birth       MAL-ED           BRAZIL                         >=155 cm            32      61
Birth       MAL-ED           BRAZIL                         <151 cm             19      61
Birth       MAL-ED           BRAZIL                         [151-155) cm        10      61
Birth       MAL-ED           INDIA                          >=155 cm            11      41
Birth       MAL-ED           INDIA                          <151 cm             19      41
Birth       MAL-ED           INDIA                          [151-155) cm        11      41
Birth       MAL-ED           NEPAL                          >=155 cm             6      26
Birth       MAL-ED           NEPAL                          <151 cm             13      26
Birth       MAL-ED           NEPAL                          [151-155) cm         7      26
Birth       MAL-ED           PERU                           >=155 cm            47     221
Birth       MAL-ED           PERU                           <151 cm            127     221
Birth       MAL-ED           PERU                           [151-155) cm        47     221
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              9     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113
Birth       NIH-Birth        BANGLADESH                     >=155 cm           107     575
Birth       NIH-Birth        BANGLADESH                     <151 cm            333     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       135     575
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           129     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm            404     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       171     704
Birth       PROBIT           BELARUS                        >=155 cm         13136   13657
Birth       PROBIT           BELARUS                        <151 cm            124   13657
Birth       PROBIT           BELARUS                        [151-155) cm       397   13657
Birth       PROVIDE          BANGLADESH                     >=155 cm           108     510
Birth       PROVIDE          BANGLADESH                     <151 cm            281     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     510
Birth       SAS-CompFeed     INDIA                          >=155 cm           432     992
Birth       SAS-CompFeed     INDIA                          <151 cm            319     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm       241     992
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            499    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060
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
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2651   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm           9787   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4296   16734
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
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1305    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm           5052    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2213    8570
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
![](/tmp/7d5b4dfa-c848-4ce4-91f3-ad7940475be8/d1d91078-35b8-4105-bea0-a4aa2da353f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.1024339   -1.2766473   -0.9282204
Birth       COHORTS          INDIA                          optimal              observed          -0.8639967   -0.9742144   -0.7537790
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.7369074   -0.8216260   -0.6521889
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7501291   -0.7896581   -0.7106001
Birth       Keneba           GAMBIA                         optimal              observed          -1.1799318   -1.3131733   -1.0466904
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.6978129   -0.9729810   -0.4226448
Birth       MAL-ED           BRAZIL                         optimal              observed           0.1432119   -0.8581344    1.1445582
Birth       MAL-ED           INDIA                          optimal              observed          -0.7265433   -1.1103439   -0.3427427
Birth       MAL-ED           NEPAL                          optimal              observed          -0.2114916   -1.1188092    0.6958261
Birth       MAL-ED           PERU                           optimal              observed           0.1643082   -0.0609628    0.3895793
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0830912   -0.3451210    0.1789386
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7396955    0.3540501    1.1253409
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.1587813   -1.3280023   -0.9895602
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.1876750   -1.3859900   -0.9893601
Birth       PROBIT           BELARUS                        optimal              observed          -1.2154399   -1.3938593   -1.0370206
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.3826756   -1.5530808   -1.2122704
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.7000006   -0.8752859   -0.5247154
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4510784   -0.4879781   -0.4141786
6 months    COHORTS          GUATEMALA                      optimal              observed           0.3737112    0.2438090    0.5036134
6 months    COHORTS          INDIA                          optimal              observed          -0.6000016   -0.6998403   -0.5001629
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2335684   -0.3140539   -0.1530829
6 months    Guatemala BSC    GUATEMALA                      optimal              observed           0.3581627    0.0829854    0.6333399
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5315314   -0.5735724   -0.4894903
6 months    Keneba           GAMBIA                         optimal              observed          -0.0379359   -0.1837553    0.1078835
6 months    LCNI-5           MALAWI                         optimal              observed           0.4622550    0.2864305    0.6380795
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.3475562   -0.6525412   -0.0425713
6 months    MAL-ED           BRAZIL                         optimal              observed           1.1011482    0.7128725    1.4894239
6 months    MAL-ED           INDIA                          optimal              observed          -0.5559462   -0.7704882   -0.3414042
6 months    MAL-ED           NEPAL                          optimal              observed           0.3379239    0.0368266    0.6390211
6 months    MAL-ED           PERU                           optimal              observed           1.2346838    0.9800320    1.4893357
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.3841746    0.0240586    0.7442905
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5165068    0.2440890    0.7889245
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.2496358   -0.4532030   -0.0460685
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.3126874    0.1512734    0.4741015
6 months    PROBIT           BELARUS                        optimal              observed           0.5117602    0.4150104    0.6085101
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1403044   -0.3194797    0.0388710
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5186531   -0.6568685   -0.3804377
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.1540288   -1.3652915   -0.9427661
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2646613    0.1417391    0.3875834
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.2763829    0.1914360    0.3613297
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1873155   -0.3083276   -0.0663033
24 months   COHORTS          INDIA                          optimal              observed          -0.3828776   -0.4736802   -0.2920750
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4758141   -0.5570399   -0.3945882
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1810154   -1.2388740   -1.1231568
24 months   Keneba           GAMBIA                         optimal              observed          -0.7533495   -0.9184313   -0.5882677
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0101412   -0.1864290    0.1661467
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.9662660   -1.2777843   -0.6547477
24 months   MAL-ED           BRAZIL                         optimal              observed           0.5286669    0.0480617    1.0092720
24 months   MAL-ED           INDIA                          optimal              observed          -0.6767471   -0.9067320   -0.4467621
24 months   MAL-ED           NEPAL                          optimal              observed          -0.4284559   -0.7082894   -0.1486224
24 months   MAL-ED           PERU                           optimal              observed           0.1663290   -0.0855054    0.4181635
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.2545735    0.0745291    0.4346180
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1126673   -0.0553019    0.2806366
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.8041045   -1.0039687   -0.6042403
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3758529   -0.5885718   -0.1631340
24 months   PROBIT           BELARUS                        optimal              observed           0.5173113    0.3128907    0.7217319
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8451292   -1.0262520   -0.6640065
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9119635   -1.1381400   -0.6857870


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0617914   -1.1634113   -0.9601716
Birth       COHORTS          INDIA                          observed             observed          -0.9773926   -1.0345102   -0.9202750
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7780564   -0.7970843   -0.7590285
Birth       Keneba           GAMBIA                         observed             observed          -1.2360866   -1.3011735   -1.1709998
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1930000   -0.4278634    0.0418634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        observed             observed          -1.1472369   -1.3582325   -0.9362414
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6752218   -0.8548888   -0.4955547
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4906181   -0.5214690   -0.4597672
6 months    COHORTS          GUATEMALA                      observed             observed           0.1926004    0.1207018    0.2644990
6 months    COHORTS          INDIA                          observed             observed          -0.6768114   -0.7301317   -0.6234912
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0255916   -0.1507513    0.0995680
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5932195   -0.6127714   -0.5736676
6 months    Keneba           GAMBIA                         observed             observed          -0.2053991   -0.2588843   -0.1519138
6 months    LCNI-5           MALAWI                         observed             observed           0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5782032    0.5194935    0.6369129
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0053826   -1.1208084   -0.8899568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0787757    0.0256721    0.1318793
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.2948466    0.2673139    0.3223793
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2844036   -0.3405555   -0.2282517
24 months   COHORTS          INDIA                          observed             observed          -0.5719523   -0.6185009   -0.5254037
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621
24 months   Keneba           GAMBIA                         observed             observed          -0.8101717   -0.8592463   -0.7610970
24 months   LCNI-5           MALAWI                         observed             observed          -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1712534   -1.2800940   -1.0624128


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.0406424   -0.1065127    0.1877975
Birth       COHORTS          INDIA                          optimal              observed          -0.1133959   -0.2080376   -0.0187542
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0058176   -0.0791657    0.0675304
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0279273   -0.0623044    0.0064498
Birth       Keneba           GAMBIA                         optimal              observed          -0.0561548   -0.1683096    0.0560000
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2555364   -0.5171801    0.0061073
Birth       MAL-ED           BRAZIL                         optimal              observed           0.2585914   -0.6004412    1.1176240
Birth       MAL-ED           INDIA                          optimal              observed          -0.2412616   -0.6403132    0.1577900
Birth       MAL-ED           NEPAL                          optimal              observed          -0.5569700   -1.3655733    0.2516334
Birth       MAL-ED           PERU                           optimal              observed          -0.2072947   -0.4165985    0.0020092
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1099088   -0.2325860    0.0127684
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0186231   -0.3450777    0.3823239
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.1911405   -0.3458383   -0.0364426
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0557980   -0.2349285    0.1233325
Birth       PROBIT           BELARUS                        optimal              observed           0.0682030   -0.0086892    0.1450952
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.0765776   -0.0762214    0.2293765
Birth       SAS-CompFeed     INDIA                          optimal              observed           0.0247789   -0.0649698    0.1145275
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0395398   -0.0602523   -0.0188272
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1811107   -0.2963108   -0.0659107
6 months    COHORTS          INDIA                          optimal              observed          -0.0768099   -0.1610634    0.0074437
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0602749   -0.1279425    0.0073927
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.3837543   -0.6434960   -0.1240126
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0616881   -0.0990133   -0.0243630
6 months    Keneba           GAMBIA                         optimal              observed          -0.1674632   -0.3042064   -0.0307199
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0107000   -0.1721137    0.1507138
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.2098799   -0.0451774    0.4649372
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.1290708   -0.4866974    0.2285557
6 months    MAL-ED           INDIA                          optimal              observed          -0.1474687   -0.3414127    0.0464753
6 months    MAL-ED           NEPAL                          optimal              observed          -0.2274931   -0.5048696    0.0498834
6 months    MAL-ED           PERU                           optimal              observed          -0.1798248   -0.4100265    0.0503770
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.1449754   -0.2043951    0.4943458
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0197145   -0.2278472    0.2672763
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1977680   -0.3709216   -0.0246145
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.2829252   -0.4281780   -0.1376724
6 months    PROBIT           BELARUS                        optimal              observed           0.0664430   -0.0196088    0.1524948
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0584027   -0.2176236    0.1008182
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1239774   -0.2063631   -0.0415916
6 months    SAS-FoodSuppl    INDIA                          optimal              observed           0.1486462   -0.0246049    0.3218973
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1858856   -0.2974599   -0.0743113
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0184638   -0.0615828    0.0985104
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0970881   -0.2095128    0.0153365
24 months   COHORTS          INDIA                          optimal              observed          -0.1890747   -0.2644055   -0.1137440
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.1341451   -0.2068045   -0.0614857
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1160488   -0.1697867   -0.0623109
24 months   Keneba           GAMBIA                         optimal              observed          -0.0568222   -0.2119977    0.0983534
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0367305   -0.1846754    0.1112144
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.1469735   -0.1275420    0.4214891
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0660436   -0.4516121    0.3195250
24 months   MAL-ED           INDIA                          optimal              observed          -0.2751777   -0.4835692   -0.0667861
24 months   MAL-ED           NEPAL                          optimal              observed           0.0535436   -0.2018983    0.3089856
24 months   MAL-ED           PERU                           optimal              observed          -0.0551309   -0.2926104    0.1823487
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.1370682   -0.0005839    0.2747203
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0578698   -0.1757046    0.0599650
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.1074745   -0.2846866    0.0697375
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.2344973   -0.4277855   -0.0412090
24 months   PROBIT           BELARUS                        optimal              observed           0.1818101    0.0199639    0.3436563
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0463068   -0.2061787    0.1135651
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2592899   -0.4708570   -0.0477229
