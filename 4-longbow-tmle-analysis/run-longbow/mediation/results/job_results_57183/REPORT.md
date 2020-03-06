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
6 months    PROBIT           BELARUS                        >=58 kg         9739   13064
6 months    PROBIT           BELARUS                        <52 kg          1083   13064
6 months    PROBIT           BELARUS                        [52-58) kg      2242   13064
6 months    PROVIDE          BANGLADESH                     >=58 kg          108     602
6 months    PROVIDE          BANGLADESH                     <52 kg           385     602
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     602
6 months    SAS-CompFeed     INDIA                          >=58 kg           99    1328
6 months    SAS-CompFeed     INDIA                          <52 kg          1016    1328
6 months    SAS-CompFeed     INDIA                          [52-58) kg       213    1328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
24 months   LCNI-5           MALAWI                         >=58 kg           73     562
24 months   LCNI-5           MALAWI                         <52 kg           337     562
24 months   LCNI-5           MALAWI                         [52-58) kg       152     562
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
24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         2956    3948
24 months   PROBIT           BELARUS                        <52 kg           322    3948
24 months   PROBIT           BELARUS                        [52-58) kg       670    3948
24 months   PROVIDE          BANGLADESH                     >=58 kg          112     578
24 months   PROVIDE          BANGLADESH                     <52 kg           362     578
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          170     421
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           132     421
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421


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
![](/tmp/7773ba03-420f-488f-89a1-9edd316fd8d0/048934f2-c2ec-4c05-a655-6bdb6dc926b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7773ba03-420f-488f-89a1-9edd316fd8d0/048934f2-c2ec-4c05-a655-6bdb6dc926b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7773ba03-420f-488f-89a1-9edd316fd8d0/048934f2-c2ec-4c05-a655-6bdb6dc926b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.7214327    0.5449442    0.8979213
6 months    LCNI-5           MALAWI                         <52 kg               NA                 0.3791476    0.2850249    0.4732704
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                 0.4975731    0.3582730    0.6368733
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1171176   -0.4423738    0.2081385
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.2368706   -0.3914255   -0.0823157
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.2246836   -0.0910147    0.5403819
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 1.0297484    0.8205678    1.2389289
6 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.9601882    0.5913454    1.3290310
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.7191196    0.3155330    1.1227062
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.4448801   -0.6749639   -0.2147963
6 months    MAL-ED           INDIA                          <52 kg               NA                -0.8333998   -1.0074879   -0.6593116
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.5091289   -0.7694241   -0.2488338
6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.3524202    0.1224113    0.5824291
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.1819229   -0.4095858    0.0457399
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                 0.1402441   -0.0749112    0.3553995
6 months    MAL-ED           PERU                           >=58 kg              NA                 1.2598477    1.0485404    1.4711550
6 months    MAL-ED           PERU                           <52 kg               NA                 0.9834560    0.8037913    1.1631206
6 months    MAL-ED           PERU                           [52-58) kg           NA                 0.9220353    0.6496790    1.1943915
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.6251983    0.4438712    0.8065254
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.1936433   -0.6230132    0.2357267
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.4482129    0.0473267    0.8490991
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5598644    0.3448801    0.7748487
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4365343    0.2142709    0.6587976
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6991484    0.4439285    0.9543682
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2064685   -0.4130651    0.0001281
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5110213   -0.6162207   -0.4058220
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3342336   -0.6091285   -0.0593388
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2296894    0.0422571    0.4171216
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0832573   -0.1868468    0.0203322
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.1222366   -0.0666333    0.3111064
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.5923508    0.5325574    0.6521443
6 months    PROBIT           BELARUS                        <52 kg               NA                 0.4802742    0.3788747    0.5816738
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.5476765    0.4759135    0.6194395
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.1607207   -0.0767739    0.3982153
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.3249383   -0.4272747   -0.2226020
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.1297741   -0.3511038    0.0915557
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.4254804   -0.7494145   -0.1015462
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.7035589   -0.8350215   -0.5720963
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.5404310   -0.7342581   -0.3466040
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1170418    0.0495699    0.1845137
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0036638   -0.1366454    0.1293178
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0059679   -0.1230876    0.1350233
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3949553    0.3589125    0.4309981
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0695421    0.0084304    0.1306538
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2692887    0.2173504    0.3212270
24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2204531   -0.0128933    0.4537995
24 months   LCNI-5           MALAWI                         <52 kg               NA                -0.1703450   -0.2726721   -0.0680180
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0847547   -0.0694281    0.2389376
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5622815   -0.8665195   -0.2580435
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.9624628   -1.1059526   -0.8189730
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.5918318   -0.9070199   -0.2766436
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.5390501    0.2823745    0.7957257
24 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.4104099   -0.0619008    0.8827206
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0857247   -0.3930087    0.5644581
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.5450720   -0.8218707   -0.2682734
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.0863576   -1.2378618   -0.9348533
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.9295096   -1.1287070   -0.7303123
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.1111677   -0.3220093    0.0996739
24 months   MAL-ED           NEPAL                          <52 kg               NA                -0.6898887   -0.8782462   -0.5015311
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.3573492   -0.5301933   -0.1845050
24 months   MAL-ED           PERU                           >=58 kg              NA                 0.2654909    0.1044973    0.4264845
24 months   MAL-ED           PERU                           <52 kg               NA                -0.1353038   -0.3546428    0.0840353
24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.1831567   -0.0903683    0.4566817
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.4752736    0.3349206    0.6156266
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.1572479   -0.2133981    0.5278940
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.2238195   -0.0934605    0.5410996
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2181028    0.0175516    0.4186540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1392809   -0.3394085    0.0608466
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1153758   -0.1537356    0.3844871
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5426519   -0.7989763   -0.2863276
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0117120   -1.1282662   -0.8951579
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6436524   -0.8937873   -0.3935175
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3260994   -0.5299048   -0.1222940
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.7984508   -0.9191153   -0.6777863
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.4874178   -0.7234293   -0.2514063
24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.7230464    0.6062352    0.8398577
24 months   PROBIT           BELARUS                        <52 kg               NA                 0.5479694    0.3168069    0.7791318
24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.6242997    0.4793373    0.7692622
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4745843   -0.6846048   -0.2645638
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.0992742   -1.1926200   -1.0059284
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.6428150   -0.9271548   -0.3584753
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2090283   -1.3719107   -1.0461458
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2798038   -1.4576369   -1.1019706
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0427098   -1.2258793   -0.8595404


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5788311    0.5205227    0.6371396
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6674586   -0.8042294   -0.5306877
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6995588    0.5828687    0.8162490
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3422851   -0.5426930   -0.1418772
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2238596   -0.4489553    0.0012361
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1197529   -0.4806531    0.2411473
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.3418012   -0.1117640    0.7953664
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0695601   -0.4923758    0.3532555
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.3106288   -0.7645727    0.1433151
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3885197   -0.6771281   -0.0999112
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0642488   -0.4111546    0.2826569
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5343431   -0.8562822   -0.2124040
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2121761   -0.5264701    0.1021179
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.2763917   -0.5514369   -0.0013465
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3378124   -0.6848017    0.0091769
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.8188415   -1.2868296   -0.3508535
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1769854   -0.6173687    0.2633980
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1233302   -0.4325482    0.1858879
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1392840   -0.1965629    0.4751309
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3045528   -0.5357504   -0.0733553
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1277652   -0.4716902    0.2161599
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.3129467   -0.5269924   -0.0989010
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1074528   -0.3734148    0.1585092
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1120766   -0.1945710   -0.0295822
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0446743   -0.0989791    0.0096305
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.4856591   -0.7452268   -0.2260913
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2904948   -0.6150677    0.0340782
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.2780785   -0.4947427   -0.0614144
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1149507   -0.3963030    0.1664017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1207056   -0.2696403    0.0282292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1110739   -0.2565567    0.0344090
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3254131   -0.3961171   -0.2547092
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1256666   -0.1886694   -0.0626637
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3907981   -0.6437640   -0.1378323
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1356984   -0.4136849    0.1422882
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4001813   -0.7367596   -0.0636031
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0295503   -0.4686900    0.4095894
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1286402   -0.6638711    0.4065908
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.4533254   -0.9955095    0.0888588
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5412855   -0.8580376   -0.2245335
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3844376   -0.7260478   -0.0428275
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5787210   -0.8616877   -0.2957542
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2461815   -0.5188954    0.0265325
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.4007947   -0.6751529   -0.1264364
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0823342   -0.4003013    0.2356329
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.3180257   -0.7165640    0.0805127
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2514541   -0.5993287    0.0964205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3573837   -0.6409442   -0.0738232
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1027270   -0.4377928    0.2323387
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4690601   -0.7506134   -0.1875068
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1010004   -0.4592668    0.2572660
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.4723514   -0.7095756   -0.2351272
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1613184   -0.4736491    0.1510123
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1750771   -0.3838303    0.0336762
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0987467   -0.2442598    0.0467664
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.6246899   -0.8548839   -0.3944959
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1682307   -0.5214454    0.1849840
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0707755   -0.3115989    0.1700479
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1663184   -0.0781679    0.4108047


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.2695809   -0.4368258   -0.1023360
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0205587   -0.3079026    0.2667852
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0648966   -0.1813141    0.0515209
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2585348   -0.4848876   -0.0321820
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2419894   -0.4282958   -0.0556830
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2049886   -0.3717633   -0.0382139
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0960483   -0.1974703    0.0053736
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0236431   -0.1953822    0.1480960
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2409353   -0.4398492   -0.0420214
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1999271   -0.3634457   -0.0364086
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0135197   -0.0247156   -0.0023237
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3594278   -0.5781468   -0.1407088
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2419782   -0.4456566   -0.0382999
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0390157   -0.0804383    0.0024070
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0962549   -0.1219503   -0.0705596
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.2670812   -0.4820552   -0.0521073
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2570110   -0.5288976    0.0148756
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0946850   -0.2419664    0.0525964
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4068528   -0.6623081   -0.1513974
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2637446   -0.4296698   -0.0978194
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.1542927   -0.3015977   -0.0069877
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0836319   -0.1631161   -0.0041477
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1633053   -0.3216633   -0.0049473
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3689271   -0.6137100   -0.1241442
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2842508   -0.4563246   -0.1121769
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0234876   -0.0579549    0.0109797
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4168517   -0.6074020   -0.2263013
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0255128   -0.0956015    0.1466272
