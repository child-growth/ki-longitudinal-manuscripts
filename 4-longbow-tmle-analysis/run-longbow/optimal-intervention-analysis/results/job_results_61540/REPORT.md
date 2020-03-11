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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight     13720   22355
Birth       JiVitA-3         BANGLADESH                     Underweight        8635   22355
Birth       MAL-ED           BANGLADESH                     Normal weight       194     222
Birth       MAL-ED           BANGLADESH                     Underweight          28     222
Birth       MAL-ED           BRAZIL                         Normal weight        59      64
Birth       MAL-ED           BRAZIL                         Underweight           5      64
Birth       MAL-ED           INDIA                          Normal weight        35      43
Birth       MAL-ED           INDIA                          Underweight           8      43
Birth       MAL-ED           NEPAL                          Normal weight        27      27
Birth       MAL-ED           NEPAL                          Underweight           0      27
Birth       MAL-ED           PERU                           Normal weight       221     226
Birth       MAL-ED           PERU                           Underweight           5     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        98     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           7     122
Birth       NIH-Birth        BANGLADESH                     Normal weight       506     608
Birth       NIH-Birth        BANGLADESH                     Underweight         102     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight       663     729
Birth       NIH-Crypto       BANGLADESH                     Underweight          66     729
Birth       PROBIT           BELARUS                        Normal weight     13203   13726
Birth       PROBIT           BELARUS                        Underweight         523   13726
Birth       PROVIDE          BANGLADESH                     Normal weight       418     517
Birth       PROVIDE          BANGLADESH                     Underweight          99     517
Birth       SAS-CompFeed     INDIA                          Normal weight       830    1135
Birth       SAS-CompFeed     INDIA                          Underweight         305    1135
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight         510    9672
6 months    JiVitA-3         BANGLADESH                     Normal weight     10311   16760
6 months    JiVitA-3         BANGLADESH                     Underweight        6449   16760
6 months    LCNI-5           MALAWI                         Normal weight       691     836
6 months    LCNI-5           MALAWI                         Underweight         145     836
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241
6 months    MAL-ED           BANGLADESH                     Underweight          32     241
6 months    MAL-ED           BRAZIL                         Normal weight       199     208
6 months    MAL-ED           BRAZIL                         Underweight           9     208
6 months    MAL-ED           INDIA                          Normal weight       186     235
6 months    MAL-ED           INDIA                          Underweight          49     235
6 months    MAL-ED           NEPAL                          Normal weight       236     236
6 months    MAL-ED           NEPAL                          Underweight           0     236
6 months    MAL-ED           PERU                           Normal weight       267     272
6 months    MAL-ED           PERU                           Underweight           5     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715
6 months    PROBIT           BELARUS                        Normal weight     12520   13025
6 months    PROBIT           BELARUS                        Underweight         505   13025
6 months    PROVIDE          BANGLADESH                     Normal weight       498     603
6 months    PROVIDE          BANGLADESH                     Underweight         105     603
6 months    SAS-CompFeed     INDIA                          Normal weight       904    1228
6 months    SAS-CompFeed     INDIA                          Underweight         324    1228
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight         376    7375
24 months   JiVitA-3         BANGLADESH                     Normal weight      5289    8599
24 months   JiVitA-3         BANGLADESH                     Underweight        3310    8599
24 months   LCNI-5           MALAWI                         Normal weight       482     577
24 months   LCNI-5           MALAWI                         Underweight          95     577
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212
24 months   MAL-ED           BANGLADESH                     Underweight          29     212
24 months   MAL-ED           BRAZIL                         Normal weight       162     168
24 months   MAL-ED           BRAZIL                         Underweight           6     168
24 months   MAL-ED           INDIA                          Normal weight       180     226
24 months   MAL-ED           INDIA                          Underweight          46     226
24 months   MAL-ED           NEPAL                          Normal weight       228     228
24 months   MAL-ED           NEPAL                          Underweight           0     228
24 months   MAL-ED           PERU                           Normal weight       197     201
24 months   MAL-ED           PERU                           Underweight           4     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3863    4005
24 months   PROBIT           BELARUS                        Underweight         142    4005
24 months   PROVIDE          BANGLADESH                     Normal weight       477     577
24 months   PROVIDE          BANGLADESH                     Underweight         100     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight          61    1373


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/e389e7ae-2d59-4165-9bd0-ff3c17f90c42/87a7e9da-8ce9-45d6-80e2-db9414a1bf65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5453100   -1.5732453   -1.5173747
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.0865531   -1.2319259   -0.9411803
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.6219516   -0.9112785   -0.3326247
Birth       MAL-ED           INDIA                          optimal              observed          -1.3030369   -1.9240826   -0.6819912
Birth       MAL-ED           PERU                           optimal              observed          -0.8867001   -1.0063170   -0.7670833
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0902812   -1.3049823   -0.8755800
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.8605138   -0.9556343   -0.7653933
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.9205893   -1.0511386   -0.7900399
Birth       PROBIT           BELARUS                        optimal              observed           1.3153561    1.1487152    1.4819969
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8764058   -0.9699885   -0.7828232
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.3735982   -1.4693848   -1.2778115
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4612231   -0.4862983   -0.4361479
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2434394   -1.2738664   -1.2130124
6 months    LCNI-5           MALAWI                         optimal              observed          -1.6457557   -1.7240445   -1.5674669
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1657821   -1.2910305   -1.0405337
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0704474   -0.0785783    0.2194730
6 months    MAL-ED           INDIA                          optimal              observed          -1.2977208   -1.4531097   -1.1423319
6 months    MAL-ED           PERU                           optimal              observed          -1.3102019   -1.4186155   -1.2017884
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.0470818   -1.1781844   -0.9159793
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3520410   -1.4759969   -1.2280851
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.3463231   -1.4413742   -1.2512720
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1627058   -1.2368031   -1.0886085
6 months    PROBIT           BELARUS                        optimal              observed           0.1272155    0.0142715    0.2401595
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0465393   -1.1299460   -0.9631326
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.3557066   -1.4534862   -1.2579269
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5922350   -0.6785670   -0.5059031
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8680845   -0.8962748   -0.8398941
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9426342   -1.9824172   -1.9028512
24 months   LCNI-5           MALAWI                         optimal              observed          -1.7674374   -1.9015395   -1.6333353
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.9107544   -2.0418821   -1.7796268
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0261715   -0.1438094    0.1961524
24 months   MAL-ED           INDIA                          optimal              observed          -1.9722601   -2.1633988   -1.7811213
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.6125210   -1.7500860   -1.4749559
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.1968857   -3.3541870   -3.0395843
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.1266851   -2.2398878   -2.0134824
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.4045007   -1.4909979   -1.3180036
24 months   PROBIT           BELARUS                        optimal              observed          -0.1599580   -0.6302805    0.3103645
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.5318970   -1.6216611   -1.4421328
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.6374058   -1.8074109   -1.4674007


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5893196   -1.6086080   -1.5700313
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        observed             observed           1.3118585    1.1523374    1.4713797
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4438150   -1.5337502   -1.3538797
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4764413   -0.5009156   -0.4519670
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3140048   -1.3371141   -1.2908955
6 months    LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.1076224    0.0168411    0.1984037
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5405711   -0.5899965   -0.4911457
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8800508   -0.9074511   -0.8526506
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0137632   -2.0415122   -1.9860142
24 months   LCNI-5           MALAWI                         observed             observed          -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.5983212   -1.6605141   -1.5361283


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0440096   -0.0643042   -0.0237150
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.0086702   -0.0429679    0.0603083
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.0664859   -0.1535518    0.0205800
Birth       MAL-ED           INDIA                          optimal              observed           0.0728043   -0.4953320    0.6409407
Birth       MAL-ED           PERU                           optimal              observed          -0.0184326   -0.0410674    0.0042021
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0461942   -0.1100059    0.0176174
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0705059   -0.1139572   -0.0270546
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0116730   -0.0978082    0.1211542
Birth       PROBIT           BELARUS                        optimal              observed          -0.0034976   -0.0219532    0.0149581
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0161087   -0.0734502    0.0412328
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0702168   -0.0932117   -0.0472220
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0152182   -0.0212845   -0.0091519
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0705654   -0.0911071   -0.0500237
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0120194   -0.0419962    0.0179574
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0392110   -0.0838103    0.0053883
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0206958   -0.0454964    0.0041049
6 months    MAL-ED           INDIA                          optimal              observed           0.0917633   -0.0182528    0.2017795
6 months    MAL-ED           PERU                           optimal              observed          -0.0139004   -0.0381395    0.0103387
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0256625   -0.0513486    0.0000237
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0167039   -0.0524738    0.0190659
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0610589   -0.1047186   -0.0173993
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0359725   -0.0625574   -0.0093876
6 months    PROBIT           BELARUS                        optimal              observed          -0.0195931   -0.0590565    0.0198703
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0429908   -0.0756406   -0.0103410
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0511827   -0.0888962   -0.0134692
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0516639   -0.0206521    0.1239799
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0119664   -0.0182399   -0.0056929
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0711290   -0.1007204   -0.0415376
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1177446   -0.2315001   -0.0039891
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0676418   -0.1246679   -0.0106158
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0202588   -0.0642726    0.0237550
24 months   MAL-ED           INDIA                          optimal              observed           0.0877910   -0.0352947    0.2108768
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0307020   -0.0592637   -0.0021403
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5513249    0.3991087    0.7035411
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0923728   -0.1421487   -0.0425970
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0367638   -0.0648347   -0.0086929
24 months   PROBIT           BELARUS                        optimal              observed           0.0155431   -0.3087852    0.3398714
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0683630   -0.1092202   -0.0275057
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.0390846   -0.1202405    0.1984098
