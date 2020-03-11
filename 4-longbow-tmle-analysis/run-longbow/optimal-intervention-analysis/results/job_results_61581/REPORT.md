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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          427   17995
Birth       JiVitA-3         BANGLADESH                     <52 kg         16351   17995
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1217   17995
Birth       MAL-ED           BANGLADESH                     >=58 kg           37     209
Birth       MAL-ED           BANGLADESH                     <52 kg           131     209
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     209
Birth       MAL-ED           BRAZIL                         >=58 kg           33      61
Birth       MAL-ED           BRAZIL                         <52 kg            14      61
Birth       MAL-ED           BRAZIL                         [52-58) kg        14      61
Birth       MAL-ED           INDIA                          >=58 kg            6      41
Birth       MAL-ED           INDIA                          <52 kg            28      41
Birth       MAL-ED           INDIA                          [52-58) kg         7      41
Birth       MAL-ED           NEPAL                          >=58 kg            9      26
Birth       MAL-ED           NEPAL                          <52 kg             7      26
Birth       MAL-ED           NEPAL                          [52-58) kg        10      26
Birth       MAL-ED           PERU                           >=58 kg           82     221
Birth       MAL-ED           PERU                           <52 kg            81     221
Birth       MAL-ED           PERU                           [52-58) kg        58     221
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     100
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     100
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        21     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113
Birth       NIH-Birth        BANGLADESH                     >=58 kg           79     575
Birth       NIH-Birth        BANGLADESH                     <52 kg           414     575
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        82     575
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          183     704
Birth       NIH-Crypto       BANGLADESH                     <52 kg           381     704
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       140     704
Birth       PROBIT           BELARUS                        >=58 kg        10222   13694
Birth       PROBIT           BELARUS                        <52 kg          1124   13694
Birth       PROBIT           BELARUS                        [52-58) kg      2348   13694
Birth       PROVIDE          BANGLADESH                     >=58 kg           89     510
Birth       PROVIDE          BANGLADESH                     <52 kg           326     510
Birth       PROVIDE          BANGLADESH                     [52-58) kg        95     510
Birth       SAS-CompFeed     INDIA                          >=58 kg           89    1091
Birth       SAS-CompFeed     INDIA                          <52 kg           824    1091
Birth       SAS-CompFeed     INDIA                          [52-58) kg       178    1091
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286
6 months    JiVitA-3         BANGLADESH                     >=58 kg          408   16775
6 months    JiVitA-3         BANGLADESH                     <52 kg         15216   16775
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1151   16775
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
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1329
6 months    SAS-CompFeed     INDIA                          <52 kg          1011    1329
6 months    SAS-CompFeed     INDIA                          [52-58) kg       215    1329
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
24 months   JiVitA-3         BANGLADESH                     >=58 kg          195    8598
24 months   JiVitA-3         BANGLADESH                     <52 kg          7835    8598
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       568    8598
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
![](/tmp/e21cfad2-d741-42f5-b318-63f62d5f2bd0/fb52dfbe-255c-401c-848b-9df5fa4ea56d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6988856   -0.7955163   -0.6022549
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.6258649   -0.9165611   -0.3351688
Birth       MAL-ED           BRAZIL                         optimal              observed           0.6887350    0.2932865    1.0841834
Birth       MAL-ED           INDIA                          optimal              observed          -0.5569875   -1.2615727    0.1475978
Birth       MAL-ED           NEPAL                          optimal              observed          -0.4722980   -0.9814515    0.0368555
Birth       MAL-ED           PERU                           optimal              observed           0.0012025   -0.2255205    0.2279254
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3950283   -0.7678254   -0.0222313
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3828280   -0.0357291    0.8013851
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.0495742   -1.3237004   -0.7754480
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8675490   -1.0245957   -0.7105024
Birth       PROBIT           BELARUS                        optimal              observed          -1.1239755   -1.3358188   -0.9121323
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.3003733   -1.5024984   -1.0982483
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.2574734   -0.5550827    0.0401359
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3665275   -0.4069449   -0.3261101
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.4733556   -0.5583290   -0.3883821
6 months    LCNI-5           MALAWI                         optimal              observed           0.6886699    0.5129382    0.8644016
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.2176359   -0.0944555    0.5297272
6 months    MAL-ED           BRAZIL                         optimal              observed           0.9830756    0.6541816    1.3119695
6 months    MAL-ED           INDIA                          optimal              observed          -0.4259984   -0.6417208   -0.2102759
6 months    MAL-ED           NEPAL                          optimal              observed           0.3858386    0.1574445    0.6142328
6 months    MAL-ED           PERU                           optimal              observed           1.2874701    1.0799920    1.4949482
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.5740608    0.3874152    0.7607064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6875733    0.4387376    0.9364091
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1709624   -0.3811906    0.0392658
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1447502   -0.0038206    0.2933210
6 months    PROBIT           BELARUS                        optimal              observed           0.5944523    0.5354932    0.6534114
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.2217433   -0.0133344    0.4568209
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5266421   -0.8164815   -0.2368027
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1131183    0.0431409    0.1830956
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.4243773    0.3885131    0.4602416
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1747216   -1.2841618   -1.0652815
24 months   LCNI-5           MALAWI                         optimal              observed           0.2426236   -0.0043870    0.4896342
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.6377649   -0.9150807   -0.3604491
24 months   MAL-ED           BRAZIL                         optimal              observed           0.4240958    0.1451062    0.7030855
24 months   MAL-ED           INDIA                          optimal              observed          -0.5269028   -0.7950602   -0.2587453
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0969337   -0.3114331    0.1175657
24 months   MAL-ED           PERU                           optimal              observed           0.2266623    0.0338518    0.4194728
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.3643568    0.1730548    0.5556588
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0986003   -0.1070479    0.3042485
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.5618219   -0.8225281   -0.3011157
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.2898656   -0.4686193   -0.1111120
24 months   PROBIT           BELARUS                        optimal              observed           0.7379866    0.6150581    0.8609152
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.4876824   -0.6767410   -0.2986238
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0443520   -1.2286547   -0.8600493


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7780622   -0.7970926   -0.7590319
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1930000   -0.4278634    0.0418634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        observed             observed          -1.1473357   -1.3582781   -0.9363933
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6660770   -0.8389738   -0.4931801
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4824198   -0.5113303   -0.4535093
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5934435   -0.6129939   -0.5738931
6 months    LCNI-5           MALAWI                         observed             observed           0.4518519    0.3806435    0.5230602
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5788311    0.5205227    0.6371396
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6660835   -0.8034722   -0.5286949
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.2987004    0.2725093    0.3248915
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2974564   -1.3207535   -1.2741592
24 months   LCNI-5           MALAWI                         observed             observed          -0.0466281   -0.1286250    0.0353688
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6995588    0.5828687    0.8162490
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1835154   -1.2835950   -1.0834359


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0791766   -0.1734178    0.0150645
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.3274843   -0.6057747   -0.0491939
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.2869317   -0.5935803    0.0197169
Birth       MAL-ED           INDIA                          optimal              observed          -0.4108174   -1.0879161    0.2662813
Birth       MAL-ED           NEPAL                          optimal              observed          -0.2961635   -0.7727968    0.1804697
Birth       MAL-ED           PERU                           optimal              observed          -0.0441889   -0.2414533    0.1530755
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.2020283   -0.1063216    0.5103782
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3754906    0.0438742    0.7071070
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3003476   -0.5557322   -0.0449629
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.3759240   -0.5165103   -0.2353377
Birth       PROBIT           BELARUS                        optimal              observed          -0.0233602   -0.0410824   -0.0056379
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0057247   -0.1888220    0.1773725
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.4086036   -0.5971685   -0.2200386
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1158923   -0.1434636   -0.0883210
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1200880   -0.2018636   -0.0383123
6 months    LCNI-5           MALAWI                         optimal              observed          -0.2368180   -0.4026430   -0.0709931
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.3553122   -0.6413228   -0.0693016
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0182238   -0.2975944    0.2611468
6 months    MAL-ED           INDIA                          optimal              observed          -0.2774165   -0.4928393   -0.0619938
6 months    MAL-ED           NEPAL                          optimal              observed          -0.2754078   -0.4622250   -0.0885906
6 months    MAL-ED           PERU                           optimal              observed          -0.2326110   -0.3965241   -0.0686980
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0449109   -0.1592547    0.0694330
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1513520   -0.3777996    0.0750956
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.2764414   -0.4792341   -0.0736487
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1149880   -0.2471456    0.0171696
6 months    PROBIT           BELARUS                        optimal              observed          -0.0156212   -0.0318512    0.0006089
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.4204504   -0.6348456   -0.2060551
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1394414   -0.3137886    0.0349057
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0350922   -0.0802636    0.0100792
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1256770   -0.1511511   -0.1002028
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1227347   -0.2326508   -0.0128187
24 months   LCNI-5           MALAWI                         optimal              observed          -0.2892517   -0.5168531   -0.0616503
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.1815276   -0.4399152    0.0768600
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0202693   -0.1598178    0.2003564
24 months   MAL-ED           INDIA                          optimal              observed          -0.4250220   -0.6733995   -0.1766446
24 months   MAL-ED           NEPAL                          optimal              observed          -0.2779786   -0.4479283   -0.1080288
24 months   MAL-ED           PERU                           optimal              observed          -0.1154641   -0.2888700    0.0579417
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.0272849   -0.1137597    0.1683296
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0438028   -0.2244811    0.1368755
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.3497572   -0.5934402   -0.1060741
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3204846   -0.4770743   -0.1638948
24 months   PROBIT           BELARUS                        optimal              observed          -0.0384278   -0.0764736   -0.0003819
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.4037536   -0.5779440   -0.2295632
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1391635   -0.3001633    0.0218363
