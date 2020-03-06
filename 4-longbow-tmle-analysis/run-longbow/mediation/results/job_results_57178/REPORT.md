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
![](/tmp/76d1e18c-3d2c-4ffc-98d3-c05a04f9bb72/915d3fd3-ea3c-4528-9dd3-c5a5dae08019/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/76d1e18c-3d2c-4ffc-98d3-c05a04f9bb72/915d3fd3-ea3c-4528-9dd3-c5a5dae08019/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/76d1e18c-3d2c-4ffc-98d3-c05a04f9bb72/915d3fd3-ea3c-4528-9dd3-c5a5dae08019/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -1.2024114   -1.4043734   -1.0004493
6 months    COHORTS          GUATEMALA                      <151 cm              NA                -1.9533860   -2.0373227   -1.8694492
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6348040   -1.7881537   -1.4814542
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5266576   -0.6230234   -0.4302918
6 months    COHORTS          INDIA                          <151 cm              NA                -1.2042298   -1.2832645   -1.1251951
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.9123387   -1.0099616   -0.8147159
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7549822   -0.8476679   -0.6622964
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -1.3417141   -1.3993776   -1.2840506
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0411061   -1.1203256   -0.9618866
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3115437   -1.6521048   -0.9709826
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6506728   -1.8197063   -1.4816393
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4933692   -1.7390419   -1.2476964
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.8487875   -0.9013491   -0.7962258
6 months    Keneba           GAMBIA                         <151 cm              NA                -1.4230833   -1.6616933   -1.1844733
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -1.2326644   -1.3650331   -1.1002958
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -1.4641355   -1.5514255   -1.3768456
6 months    LCNI-5           MALAWI                         <151 cm              NA                -2.1907469   -2.3633208   -2.0181730
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                -1.8045519   -1.9419693   -1.6671345
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.9127869   -1.2282791   -0.5972947
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -1.3712254   -1.5252638   -1.2171869
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.9127145   -1.1044807   -0.7209482
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.1457975   -0.0432069    0.3348020
6 months    MAL-ED           BRAZIL                         <151 cm              NA                -0.3640310   -0.5942877   -0.1337743
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 0.0886894   -0.2987417    0.4761206
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.8970239   -1.1137845   -0.6802633
6 months    MAL-ED           INDIA                          <151 cm              NA                -1.4636369   -1.6448871   -1.2823866
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -1.0051677   -1.2029445   -0.8073909
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0519305   -0.2713529    0.1674920
6 months    MAL-ED           NEPAL                          <151 cm              NA                -0.7957269   -0.9436564   -0.6477975
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.4177391   -0.6329184   -0.2025598
6 months    MAL-ED           PERU                           >=155 cm             NA                -1.1197889   -1.3366289   -0.9029490
6 months    MAL-ED           PERU                           <151 cm              NA                -1.4445262   -1.5935059   -1.2955466
6 months    MAL-ED           PERU                           [151-155) cm         NA                -1.2029610   -1.4231319   -0.9827900
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.9817764   -1.1274233   -0.8361295
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.3802956   -1.7923844   -0.9682068
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.0655988   -1.4020352   -0.7291623
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1897578   -1.3373968   -1.0421187
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8482675   -2.1500083   -1.5465266
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4680813   -1.7257879   -1.2103746
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9853766   -1.1797714   -0.7909818
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6419818   -1.7505277   -1.5334360
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1459846   -1.3225163   -0.9694529
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9335303   -1.0992088   -0.7678518
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.3347312   -1.4267917   -1.2426706
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.1017871   -1.2509076   -0.9526665
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.1220956    0.0310825    0.2131088
6 months    PROBIT           BELARUS                        <151 cm              NA                -0.3921942   -0.4761631   -0.3082254
6 months    PROBIT           BELARUS                        [151-155) cm         NA                -0.2140024   -0.3489322   -0.0790725
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6936152   -0.8544631   -0.5327673
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -1.2799750   -1.3763201   -1.1836300
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.0048807   -1.1484927   -0.8612688
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -1.1303701   -1.2164877   -1.0442525
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -1.6914975   -1.8207643   -1.5622308
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.4709065   -1.6715823   -1.2702307
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.4098242   -1.6356498   -1.1839987
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -2.1418345   -2.2868720   -1.9967970
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.7406691   -1.9702836   -1.5110546
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3666525   -0.4286222   -0.3046828
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9455813   -1.0634027   -0.8277599
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7707132   -0.8755994   -0.6658270
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8116439   -0.8416804   -0.7816075
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4142474   -1.5155871   -1.3129078
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.0400447   -1.1057126   -0.9743768
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -2.2498532   -2.4293056   -2.0704007
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -3.1150991   -3.1937971   -3.0364011
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9393719   -3.1127487   -2.7659951
24 months   COHORTS          INDIA                          >=155 cm             NA                -1.5723203   -1.6698086   -1.4748319
24 months   COHORTS          INDIA                          <151 cm              NA                -2.3937270   -2.4706817   -2.3167724
24 months   COHORTS          INDIA                          [151-155) cm         NA                -2.1174136   -2.2182925   -2.0165348
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9899255   -2.0873848   -1.8924661
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -2.6469041   -2.7081426   -2.5856656
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2844066   -2.3689565   -2.1998568
24 months   Keneba           GAMBIA                         >=155 cm             NA                -1.5119655   -1.5681742   -1.4557568
24 months   Keneba           GAMBIA                         <151 cm              NA                -2.3026405   -2.5336871   -2.0715939
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -1.8301293   -1.9623642   -1.6978943
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -1.6665921   -1.7639371   -1.5692472
24 months   LCNI-5           MALAWI                         <151 cm              NA                -2.4119083   -2.6258644   -2.1979522
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -2.0821320   -2.2446084   -1.9196555
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -1.5923259   -1.9893207   -1.1953312
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -2.1782885   -2.3339644   -2.0226126
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -1.6250908   -1.8629429   -1.3872388
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0746410   -0.1605498    0.3098318
24 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0442372   -0.3337415    0.2452671
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0947309   -0.5367982    0.3473365
24 months   MAL-ED           INDIA                          >=155 cm             NA                -1.4897375   -1.7412659   -1.2382090
24 months   MAL-ED           INDIA                          <151 cm              NA                -2.1613515   -2.3506752   -1.9720278
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -1.8238986   -2.0109458   -1.6368514
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.7493624   -0.9864048   -0.5123199
24 months   MAL-ED           NEPAL                          <151 cm              NA                -1.5813635   -1.7320006   -1.4307265
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -1.0871849   -1.3270992   -0.8472707
24 months   MAL-ED           PERU                           >=155 cm             NA                -1.3227048   -1.5577780   -1.0876315
24 months   MAL-ED           PERU                           <151 cm              NA                -1.9526117   -2.1027731   -1.8024504
24 months   MAL-ED           PERU                           [151-155) cm         NA                -1.6731700   -1.8949262   -1.4514139
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -1.5559849   -1.7082465   -1.4037233
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -2.0228928   -2.4590409   -1.5867447
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.9125634   -2.3270093   -1.4981174
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4314135   -2.5990446   -2.2637824
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.2390868   -3.5331202   -2.9450535
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7698034   -3.0589478   -2.4806590
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.6128334   -1.8483109   -1.3773558
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4976794   -2.6176519   -2.3777069
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -2.0262364   -2.2239713   -1.8285015
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9570466   -1.1176353   -0.7964579
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.6349956   -1.7466406   -1.5233506
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.3956858   -1.5609796   -1.2303919
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.1199211   -0.4104473    0.1706050
24 months   PROBIT           BELARUS                        <151 cm              NA                -1.3744646   -1.5166226   -1.2323066
24 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.6260604   -0.9342938   -0.3178269
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -1.1897221   -1.3652383   -1.0142060
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -1.7999317   -1.9045615   -1.6953019
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.5312538   -1.6982761   -1.3642314
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4834402   -1.5518085   -1.4150719
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2332837   -2.4434591   -2.0231084
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9184645   -2.0826287   -1.7543003


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8116225   -1.8800533   -1.7431916
6 months    COHORTS          INDIA                          NA                   NA                -0.9254151   -0.9779952   -0.8728349
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5599206   -1.6885363   -1.4313049
6 months    Keneba           GAMBIA                         NA                   NA                -0.9159303   -0.9650776   -0.8667830
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1077908    0.0170166    0.1985649
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8882058   -1.9998264   -1.7765852
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424553   -0.5916933   -0.4932174
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8803077   -0.9076731   -0.8529423
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9963380   -3.0630990   -2.9295770
24 months   COHORTS          INDIA                          NA                   NA                -2.0710720   -2.1255079   -2.0166362
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   Keneba           GAMBIA                         NA                   NA                -1.5829641   -1.6348134   -1.5311148
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5981623   -1.6603107   -1.5360139


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7509746   -0.9702839   -0.5316653
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4323926   -0.6860594   -0.1787258
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.6775722   -0.8026879   -0.5524565
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3856812   -0.5231434   -0.2482189
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5867319   -0.6964884   -0.4769754
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2861240   -0.4086935   -0.1635544
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3391291   -0.7199419    0.0416837
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1818255   -0.6029727    0.2393218
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5742958   -0.8176022   -0.3309893
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3838770   -0.5242921   -0.2434618
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7266114   -0.9201907   -0.5330320
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3404164   -0.5033680   -0.1774647
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.4584385   -0.8097491   -0.1071278
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0000724   -0.3690839    0.3692288
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.5098286   -0.8077187   -0.2119384
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0571081   -0.4883632    0.3741470
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.5666130   -0.8490564   -0.2841695
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1081438   -0.4018238    0.1855362
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.7437964   -1.0084769   -0.4791159
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3658086   -0.6734114   -0.0582059
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.3247373   -0.5879993   -0.0614753
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0831721   -0.3923362    0.2259921
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.3985191   -0.8345079    0.0374696
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0838223   -0.4478761    0.2802314
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6585097   -0.9941678   -0.3228517
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2783235   -0.5731739    0.0165269
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.6566052   -0.8775628   -0.4356477
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.1606080   -0.4209393    0.0997232
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.4012009   -0.5910300   -0.2113717
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1682568   -0.3907486    0.0542351
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          -0.5142898   -0.5889292   -0.4396505
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3360980   -0.4724285   -0.1997675
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5863598   -0.7735548   -0.3991648
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3112655   -0.5267777   -0.0957534
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.5611274   -0.6687865   -0.4534684
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3405364   -0.5833541   -0.0977187
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.7320102   -1.0007346   -0.4632859
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.3308449   -0.6530598   -0.0086300
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5789288   -0.7120162   -0.4458414
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4040607   -0.5256093   -0.2825121
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6026035   -0.7071980   -0.4980089
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.2284008   -0.2991267   -0.1576748
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.8652460   -1.0609271   -0.6695649
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.6895187   -0.9388850   -0.4401524
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.8214068   -0.9454965   -0.6973170
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5450934   -0.6850706   -0.4051162
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6569786   -0.7725966   -0.5413607
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2944812   -0.4241051   -0.1648573
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.7906750   -1.0279375   -0.5534125
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3181638   -0.4604941   -0.1758334
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7453162   -0.9807516   -0.5098808
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4155399   -0.6049515   -0.2261282
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.5859626   -1.0135738   -0.1583514
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0327649   -0.4967241    0.4311943
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1188782   -0.4910243    0.2532679
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.1693719   -0.6717637    0.3330200
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.6716140   -0.9862775   -0.3569506
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.3341612   -0.6469753   -0.0213470
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.8320012   -1.1132457   -0.5507566
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3378226   -0.6756355   -0.0000097
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.6299069   -0.9072354   -0.3525784
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.3504652   -0.6686655   -0.0322650
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.4669078   -0.9295875   -0.0042281
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3565784   -0.7981541    0.0849973
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.8076733   -1.1463301   -0.4690166
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3383899   -0.6725735   -0.0042063
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.8848460   -1.1472712   -0.6224208
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4134030   -0.7178344   -0.1089717
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.6779490   -0.8741220   -0.4817759
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.4386391   -0.6688960   -0.2083823
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -1.2545435   -1.5821445   -0.9269425
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.5061393   -0.9342700   -0.0780085
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.6102096   -0.8137798   -0.4066394
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3415316   -0.5819850   -0.1010783
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7498435   -0.9702999   -0.5293871
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4350243   -0.6120196   -0.2580291


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.6092111   -0.7998604   -0.4185619
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.3987575   -0.4811925   -0.3163225
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3855902   -0.4698791   -0.3013013
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2483769   -0.5610772    0.0643233
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0671428   -0.0886852   -0.0456005
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.1936396   -0.2501549   -0.1371243
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2922062   -0.5989358    0.0145235
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0982218   -0.2209119    0.0244684
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.3089335   -0.5077187   -0.1101483
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.5096515   -0.7218857   -0.2974172
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.2043134   -0.4027191   -0.0059077
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0909679   -0.1673743   -0.0145615
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1789872   -0.2814993   -0.0764751
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4220055   -0.5977205   -0.2462905
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2651480   -0.4152478   -0.1150482
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0143048   -0.0189116   -0.0096981
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.3959149   -0.5385182   -0.2533116
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.2765192   -0.3350426   -0.2179957
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.4783816   -0.6880055   -0.2687576
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1758028   -0.2143711   -0.1372346
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0686637   -0.0815885   -0.0557390
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.7464849   -0.9145039   -0.5784658
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4987518   -0.5807985   -0.4167050
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4241890   -0.5128398   -0.3355383
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0709986   -0.0933059   -0.0486914
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.2185899   -0.2857626   -0.1514171
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.3860703   -0.7724515    0.0003109
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0685266   -0.2176327    0.0805795
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.3947316   -0.6175541   -0.1719091
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.5582254   -0.7876566   -0.3287941
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.4297662   -0.6340235   -0.2255088
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0872380   -0.1662109   -0.0082651
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2141473   -0.3296436   -0.0986510
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6062245   -0.8190764   -0.3933727
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.4842180   -0.6357202   -0.3327158
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0244938   -0.0372344   -0.0117532
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.4105378   -0.5665204   -0.2545553
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1147221   -0.1476941   -0.0817501
