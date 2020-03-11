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

**Intervention Variable:** mbmi

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

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight     10934   17935
Birth       JiVitA-3         BANGLADESH                     Underweight        7001   17935
Birth       MAL-ED           BANGLADESH                     Normal weight       183     209
Birth       MAL-ED           BANGLADESH                     Underweight          26     209
Birth       MAL-ED           BRAZIL                         Normal weight        56      61
Birth       MAL-ED           BRAZIL                         Underweight           5      61
Birth       MAL-ED           INDIA                          Normal weight        33      41
Birth       MAL-ED           INDIA                          Underweight           8      41
Birth       MAL-ED           NEPAL                          Normal weight        26      26
Birth       MAL-ED           NEPAL                          Underweight           0      26
Birth       MAL-ED           PERU                           Normal weight       216     221
Birth       MAL-ED           PERU                           Underweight           5     221
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        97     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           6     113
Birth       NIH-Birth        BANGLADESH                     Normal weight       483     575
Birth       NIH-Birth        BANGLADESH                     Underweight          92     575
Birth       NIH-Crypto       BANGLADESH                     Normal weight       639     704
Birth       NIH-Crypto       BANGLADESH                     Underweight          65     704
Birth       PROBIT           BELARUS                        Normal weight     13130   13651
Birth       PROBIT           BELARUS                        Underweight         521   13651
Birth       PROVIDE          BANGLADESH                     Normal weight       411     510
Birth       PROVIDE          BANGLADESH                     Underweight          99     510
Birth       SAS-CompFeed     INDIA                          Normal weight       735     992
Birth       SAS-CompFeed     INDIA                          Underweight         257     992
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight         456    9030
6 months    JiVitA-3         BANGLADESH                     Normal weight     10303   16733
6 months    JiVitA-3         BANGLADESH                     Underweight        6430   16733
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
6 months    PROBIT           BELARUS                        Normal weight     12518   13023
6 months    PROBIT           BELARUS                        Underweight         505   13023
6 months    PROVIDE          BANGLADESH                     Normal weight       497     602
6 months    PROVIDE          BANGLADESH                     Underweight         105     602
6 months    SAS-CompFeed     INDIA                          Normal weight       902    1226
6 months    SAS-CompFeed     INDIA                          Underweight         324    1226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight         372    7253
24 months   JiVitA-3         BANGLADESH                     Normal weight      5272    8570
24 months   JiVitA-3         BANGLADESH                     Underweight        3298    8570
24 months   LCNI-5           MALAWI                         Normal weight       467     561
24 months   LCNI-5           MALAWI                         Underweight          94     561
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
24 months   NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3799    3940
24 months   PROBIT           BELARUS                        Underweight         141    3940
24 months   PROVIDE          BANGLADESH                     Normal weight       478     578
24 months   PROVIDE          BANGLADESH                     Underweight         100     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight          27     366


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
![](/tmp/2f1feed7-f886-4d5b-a389-34a7a4d90e76/399915ba-09ff-49ed-b67a-da502624f1fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7758402   -0.8002210   -0.7514595
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.9614608   -1.2025859   -0.7203356
Birth       MAL-ED           BRAZIL                         optimal              observed           0.0410412   -0.5900858    0.6721682
Birth       MAL-ED           INDIA                          optimal              observed          -0.9196687   -1.2483693   -0.5909682
Birth       MAL-ED           PERU                           optimal              observed          -0.0279514   -0.1524156    0.0965128
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4878265   -0.0191596    0.9948126
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.2897637   -1.3945600   -1.1849674
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.3670216   -1.5868924   -1.1471509
Birth       PROBIT           BELARUS                        optimal              observed          -1.1438300   -1.3554452   -0.9322148
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2564487   -1.3433687   -1.1695286
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.6021087   -0.7787134   -0.4255040
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4688129   -0.5005754   -0.4370505
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5669151   -0.5898107   -0.5440195
6 months    LCNI-5           MALAWI                         optimal              observed           0.5305558    0.4524365    0.6086750
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.0204801   -0.1109349    0.1518951
6 months    MAL-ED           BRAZIL                         optimal              observed           0.9785378    0.8102308    1.1468448
6 months    MAL-ED           INDIA                          optimal              observed          -0.6130496   -0.7553438   -0.4707554
6 months    MAL-ED           PERU                           optimal              observed           0.8735039    0.7486417    0.9983660
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.4115002    0.2296326    0.5933678
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6896037    0.1033307    1.2758766
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3908080   -0.4946354   -0.2869805
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1716717    0.0740347    0.2693088
6 months    PROBIT           BELARUS                        optimal              observed           0.5861575    0.5280335    0.6442815
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1088938   -0.1983521   -0.0194354
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5905180   -0.7083892   -0.4726467
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1261678    0.0486846    0.2036510
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3152468    0.2870996    0.3433940
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2653280   -1.2968059   -1.2338502
24 months   LCNI-5           MALAWI                         optimal              observed           0.1345555    0.0416470    0.2274639
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.7806378   -0.9227823   -0.6384934
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0307705   -0.6362945    0.5747535
24 months   MAL-ED           INDIA                          optimal              observed          -0.9299596   -1.0666728   -0.7932465
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.3490015   -0.2747520    0.9727549
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2145807   -0.6142633    0.1851018
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.8166606   -0.9199293   -0.7133920
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.6212606   -0.8039228   -0.4385984
24 months   PROBIT           BELARUS                        optimal              observed           0.7541459    0.6554615    0.8528304
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.7981189   -0.8877880   -0.7084499
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0074678   -1.1191971   -0.8957385


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7781583   -0.7971779   -0.7591388
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        observed             observed          -1.1472584   -1.3582745   -0.9362424
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6752218   -0.8548888   -0.4955547
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4905338   -0.5214551   -0.4596125
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5931545   -0.6127055   -0.5736036
6 months    LCNI-5           MALAWI                         observed             observed           0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5785149    0.5197782    0.6372516
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.2948332    0.2672524    0.3224139
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621
24 months   LCNI-5           MALAWI                         observed             observed          -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1718579   -1.2809898   -1.0627260


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0023181   -0.0168047    0.0121685
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.0081115   -0.1719689    0.1881918
Birth       MAL-ED           BRAZIL                         optimal              observed           0.3607621   -0.1843718    0.9058960
Birth       MAL-ED           INDIA                          optimal              observed          -0.0481361   -0.1818223    0.0855500
Birth       MAL-ED           PERU                           optimal              observed          -0.0150350   -0.0347537    0.0046836
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2704921   -0.2363355    0.7773196
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0601580   -0.0985309   -0.0217852
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.1235486   -0.0792726    0.3263698
Birth       PROBIT           BELARUS                        optimal              observed          -0.0034285   -0.0115748    0.0047179
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0496494   -0.0878469   -0.0114519
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0731131   -0.1185292   -0.0276969
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0217208   -0.0292521   -0.0141895
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0262395   -0.0402134   -0.0122656
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0790008   -0.1120420   -0.0459596
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1581564   -0.2445121   -0.0718007
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0136860   -0.0483440    0.0209720
6 months    MAL-ED           INDIA                          optimal              observed          -0.0903653   -0.1906060    0.0098753
6 months    MAL-ED           PERU                           optimal              observed           0.1813552    0.1161591    0.2465513
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.1176497    0.0237079    0.2115915
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1533823   -0.7196676    0.4129029
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0565958   -0.1105555   -0.0026361
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1419095   -0.2131722   -0.0706468
6 months    PROBIT           BELARUS                        optimal              observed          -0.0076425   -0.0119738   -0.0033112
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0898133   -0.1308366   -0.0487900
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0521125   -0.0724616   -0.0317635
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0486506   -0.1048545    0.0075534
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0204136   -0.0274940   -0.0133332
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0317361   -0.0524468   -0.0110255
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1814271   -0.2430934   -0.1197609
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0386546   -0.1069537    0.0296444
24 months   MAL-ED           BRAZIL                         optimal              observed           0.4751356   -0.1034129    1.0536841
24 months   MAL-ED           INDIA                          optimal              observed          -0.0219651   -0.1176510    0.0737207
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.0426403   -0.5740500    0.6593306
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2693782   -0.1046614    0.6434179
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0949184   -0.1491293   -0.0407075
24 months   NIH-Crypto       BANGLADESH                     optimal              observed           0.0109105   -0.1359885    0.1578094
24 months   PROBIT           BELARUS                        optimal              observed          -0.0550245   -0.1125078    0.0024587
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0933171   -0.1345229   -0.0521112
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1643901   -0.2302572   -0.0985230
