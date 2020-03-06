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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
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

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
6 months    LCNI-5           MALAWI                         >=58 kg          114     837
6 months    LCNI-5           MALAWI                         <52 kg           504     837
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208
6 months    MAL-ED           BRAZIL                         <52 kg            37     208
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208
6 months    MAL-ED           INDIA                          >=58 kg           40     235
6 months    MAL-ED           INDIA                          <52 kg           146     235
6 months    MAL-ED           INDIA                          [52-58) kg        49     235
6 months    MAL-ED           NEPAL                          >=58 kg           79     236
6 months    MAL-ED           NEPAL                          <52 kg            75     236
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236
6 months    MAL-ED           PERU                           >=58 kg          100     272
6 months    MAL-ED           PERU                           <52 kg           107     272
6 months    MAL-ED           PERU                           [52-58) kg        65     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066
6 months    PROBIT           BELARUS                        <52 kg          1083   13066
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603
6 months    SAS-CompFeed     INDIA                          >=58 kg           99    1330
6 months    SAS-CompFeed     INDIA                          <52 kg          1019    1330
6 months    SAS-CompFeed     INDIA                          [52-58) kg       212    1330
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
24 months   LCNI-5           MALAWI                         >=58 kg           77     578
24 months   LCNI-5           MALAWI                         <52 kg           348     578
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168
24 months   MAL-ED           BRAZIL                         <52 kg            28     168
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168
24 months   MAL-ED           INDIA                          >=58 kg           38     226
24 months   MAL-ED           INDIA                          <52 kg           141     226
24 months   MAL-ED           INDIA                          [52-58) kg        47     226
24 months   MAL-ED           NEPAL                          >=58 kg           76     228
24 months   MAL-ED           NEPAL                          <52 kg            74     228
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228
24 months   MAL-ED           PERU                           >=58 kg           77     201
24 months   MAL-ED           PERU                           <52 kg            75     201
24 months   MAL-ED           PERU                           [52-58) kg        49     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   PROBIT           BELARUS                        <52 kg           325    4013
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588


The following strata were considered:

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
![](/tmp/86622132-e2ae-4ee9-9c5d-2431435d9bcd/3349c26c-a1d6-41e3-b08f-23bd762c2dc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86622132-e2ae-4ee9-9c5d-2431435d9bcd/3349c26c-a1d6-41e3-b08f-23bd762c2dc1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86622132-e2ae-4ee9-9c5d-2431435d9bcd/3349c26c-a1d6-41e3-b08f-23bd762c2dc1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -1.3160513   -1.5075714   -1.1245312
6 months    LCNI-5           MALAWI                         <52 kg               NA                -1.8287331   -1.9162576   -1.7412087
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                -1.4473167   -1.5822323   -1.3124011
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.9938120   -1.2754744   -0.7121496
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -1.3634581   -1.5145208   -1.2123954
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.8448742   -1.0766379   -0.6131105
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0632715   -0.1183396    0.2448825
6 months    MAL-ED           BRAZIL                         <52 kg               NA                -0.0904731   -0.4086003    0.2276541
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0753634   -0.3193663    0.4700932
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.9520593   -1.1839527   -0.7201659
6 months    MAL-ED           INDIA                          <52 kg               NA                -1.2655430   -1.4228419   -1.1082442
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -1.2047067   -1.4798794   -0.9295340
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.3429147   -0.5252174   -0.1606120
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.9019061   -1.1194631   -0.6843490
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.4728659   -0.6448871   -0.3008447
6 months    MAL-ED           PERU                           >=58 kg              NA                -1.1552223   -1.3288919   -0.9815526
6 months    MAL-ED           PERU                           <52 kg               NA                -1.4439865   -1.6121771   -1.2757959
6 months    MAL-ED           PERU                           [52-58) kg           NA                -1.3062454   -1.5365685   -1.0759224
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.9708407   -1.1218829   -0.8197984
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.4339124   -1.8136705   -1.0541544
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.2694669   -1.6219488   -0.9169849
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2343637   -1.4310292   -1.0376982
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5817121   -1.7800131   -1.3834111
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2663307   -1.5068376   -1.0258238
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.1472072   -1.3839412   -0.9104731
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5200381   -1.6239709   -1.4161054
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.1064866   -1.2913891   -0.9215841
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.1073908   -1.2576470   -0.9571345
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.2497892   -1.3465557   -1.1530227
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1695614   -1.3573378   -0.9817850
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.1328983    0.0404926    0.2253040
6 months    PROBIT           BELARUS                        <52 kg               NA                -0.0547104   -0.1654820    0.0560611
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.0599070   -0.0479793    0.1677933
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.8532481   -1.0418547   -0.6646415
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -1.2137366   -1.3027301   -1.1247431
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.8581332   -1.0856076   -0.6306588
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.7621798   -0.9751863   -0.5491733
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -1.4926137   -1.5803286   -1.4048987
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.1627391   -1.2892097   -1.0362686
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4660319   -0.5289906   -0.4030733
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8384587   -0.9500623   -0.7268550
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5732728   -0.6809929   -0.4655527
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.7540025   -0.7893313   -0.7186737
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.1018233   -1.1575317   -1.0461150
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9599829   -1.0092787   -0.9106871
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -1.5989508   -1.7855834   -1.4123182
24 months   LCNI-5           MALAWI                         <52 kg               NA                -2.0468577   -2.1522658   -1.9414496
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                -1.6720821   -1.8289163   -1.5152478
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -1.5575068   -1.8017373   -1.3132763
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -2.2206707   -2.3818430   -2.0594984
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.5282315   -1.7800046   -1.2764584
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0018340   -0.2209685    0.2173005
24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.1025459   -0.4981995    0.2931077
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1891045   -0.2591489    0.6373579
24 months   MAL-ED           INDIA                          >=58 kg              NA                -1.5407543   -1.8268522   -1.2546565
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.9953854   -2.1478404   -1.8429303
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -1.8678970   -2.1673668   -1.5684272
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -1.0126704   -1.2140364   -0.8113044
24 months   MAL-ED           NEPAL                          <52 kg               NA                -1.6539039   -1.8701385   -1.4376694
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -1.2660396   -1.4485342   -1.0835451
24 months   MAL-ED           PERU                           >=58 kg              NA                -1.5054016   -1.6765464   -1.3342568
24 months   MAL-ED           PERU                           <52 kg               NA                -1.9843117   -2.1704503   -1.7981730
24 months   MAL-ED           PERU                           [52-58) kg           NA                -1.7606662   -2.0607652   -1.4605672
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -1.5044450   -1.6624557   -1.3464342
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -2.1624101   -2.5220627   -1.8027574
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.8502881   -2.2001501   -1.5004262
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4114276   -2.6229736   -2.1998816
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8287426   -3.0542670   -2.6032182
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.5636982   -2.8320453   -2.2953511
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7331142   -2.0197231   -1.4465053
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3568221   -2.4722860   -2.2413583
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.9856642   -2.2362286   -1.7350998
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.1006062   -1.2608168   -0.9403957
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.6036804   -1.7198068   -1.4875539
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.3905995   -1.6053401   -1.1758589
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.1059696   -0.4003726    0.1884335
24 months   PROBIT           BELARUS                        <52 kg               NA                -0.4255696   -0.8009894   -0.0501497
24 months   PROBIT           BELARUS                        [52-58) kg           NA                -0.2073723   -0.5577985    0.1430538
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -1.2433948   -1.4121077   -1.0746818
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.8260110   -1.9252419   -1.7267801
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2236176   -1.4677053   -0.9795300
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4361732   -1.5151699   -1.3571766
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9655396   -2.0917708   -1.8393085
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.6863117   -1.7985029   -1.5741205


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1064864    0.0157994    0.1971734
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4006917   -1.4821813   -1.3192022
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1439152   -0.4247957    0.1369654
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.5126818   -0.7232692   -0.3020945
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1312654   -0.3656686    0.1031378
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3696461   -0.6903144   -0.0489778
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.1489378   -0.2165735    0.5144492
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1537446   -0.5207172    0.2132280
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0120920   -0.4243644    0.4485484
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3134838   -0.5934678   -0.0334998
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2526474   -0.6133583    0.1080635
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5589914   -0.8432704   -0.2747124
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1299512   -0.3813564    0.1214540
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.2887643   -0.5293907   -0.0481378
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.1510232   -0.4391545    0.1371082
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4630718   -0.8720274   -0.0541162
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2986262   -0.6825282    0.0852758
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3473484   -0.6266510   -0.0680457
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0319670   -0.3430180    0.2790841
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3728310   -0.6289251   -0.1167368
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0407205   -0.2578424    0.3392835
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1423985   -0.3215777    0.0367808
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0621706   -0.3028890    0.1785477
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1876087   -0.2648522   -0.1103652
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0729913   -0.1316943   -0.0142883
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.3604885   -0.5687077   -0.1522692
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0048851   -0.2998486    0.2900785
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.7304338   -0.9404960   -0.5203717
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.4005593   -0.6839686   -0.1171501
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3724267   -0.4996404   -0.2452130
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1072409   -0.2308945    0.0164128
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3478209   -0.4122915   -0.2833503
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2059804   -0.2650584   -0.1469025
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4479069   -0.6623380   -0.2334757
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0731313   -0.3170284    0.1707659
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.6631639   -0.9563528   -0.3699750
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0292753   -0.3219985    0.3805492
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1007119   -0.5528606    0.3514368
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1909385   -0.3088477    0.6907247
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4546310   -0.7796402   -0.1296219
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3271427   -0.7406923    0.0864070
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6412335   -0.9374694   -0.3449977
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2533692   -0.5255187    0.0187802
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.4789101   -0.7296704   -0.2281498
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2552646   -0.6012072    0.0906779
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6579651   -1.0519235   -0.2640067
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3458431   -0.7299855    0.0382992
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4173149   -0.7268238   -0.1078061
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1522706   -0.4957146    0.1911734
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6237080   -0.9306404   -0.3167755
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2525500   -0.6301516    0.1250515
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5030742   -0.7023192   -0.3038291
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.2899933   -0.5584559   -0.0215306
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3196000   -0.6064117   -0.0327883
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1014028   -0.4302071    0.2274015
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5826162   -0.7767993   -0.3884332
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0197771   -0.2754050    0.3149592
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5293664   -0.6781030   -0.3806298
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2501385   -0.3869767   -0.1133003


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.3424194   -0.5211723   -0.1636666
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2111811   -0.4691080    0.0467458
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0135198   -0.1180880    0.0910483
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2538982   -0.4772167   -0.0305796
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2186672   -0.3734738   -0.0638607
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.1688801   -0.3082120   -0.0295481
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1019037   -0.1877228   -0.0160845
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1343813   -0.2893889    0.0206263
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2601749   -0.4787537   -0.0415961
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0912876   -0.2250310    0.0424559
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0264119   -0.0397470   -0.0130768
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.2362820   -0.4108579   -0.0617061
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.6385119   -0.8393780   -0.4376458
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0764446   -0.1130688   -0.0398204
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1245170   -0.1484683   -0.1005658
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.2865163   -0.4662614   -0.1067712
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.4208894   -0.6569762   -0.1848026
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0077467   -0.1221557    0.1376491
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.3437147   -0.6088934   -0.0785360
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2949173   -0.4627658   -0.1270689
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.2470694   -0.3951847   -0.0989541
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1387780   -0.2289691   -0.0485868
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2341331   -0.4070983   -0.0611679
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4859437   -0.7508591   -0.2210284
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3406584   -0.4877933   -0.1935234
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0379456   -0.0887094    0.0128181
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3568652   -0.5155693   -0.1981611
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1708765   -0.2266343   -0.1151188
