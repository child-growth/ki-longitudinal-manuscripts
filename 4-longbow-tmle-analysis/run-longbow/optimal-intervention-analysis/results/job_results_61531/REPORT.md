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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        birthlen      n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm           14      92
Birth       CMC-V-BCS-2002   INDIA                          <48 cm            38      92
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm        40      92
Birth       CMIN             BANGLADESH                     >=50 cm            2      26
Birth       CMIN             BANGLADESH                     <48 cm            16      26
Birth       CMIN             BANGLADESH                     [48-50) cm         8      26
Birth       COHORTS          GUATEMALA                      >=50 cm          437     852
Birth       COHORTS          GUATEMALA                      <48 cm           163     852
Birth       COHORTS          GUATEMALA                      [48-50) cm       252     852
Birth       COHORTS          INDIA                          >=50 cm         1426    6640
Birth       COHORTS          INDIA                          <48 cm          2774    6640
Birth       COHORTS          INDIA                          [48-50) cm      2440    6640
Birth       COHORTS          PHILIPPINES                    >=50 cm         1129    3050
Birth       COHORTS          PHILIPPINES                    <48 cm           762    3050
Birth       COHORTS          PHILIPPINES                    [48-50) cm      1159    3050
Birth       CONTENT          PERU                           >=50 cm            1       2
Birth       CONTENT          PERU                           <48 cm             1       2
Birth       CONTENT          PERU                           [48-50) cm         0       2
Birth       EE               PAKISTAN                       >=50 cm           24     240
Birth       EE               PAKISTAN                       <48 cm           162     240
Birth       EE               PAKISTAN                       [48-50) cm        54     240
Birth       GMS-Nepal        NEPAL                          >=50 cm          115     696
Birth       GMS-Nepal        NEPAL                          <48 cm           373     696
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     696
Birth       IRC              INDIA                          >=50 cm          142     388
Birth       IRC              INDIA                          <48 cm           108     388
Birth       IRC              INDIA                          [48-50) cm       138     388
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1258   22455
Birth       JiVitA-3         BANGLADESH                     <48 cm         16109   22455
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5088   22455
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2823
Birth       JiVitA-4         BANGLADESH                     <48 cm          1913    2823
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       732    2823
Birth       Keneba           GAMBIA                         >=50 cm          763    1543
Birth       Keneba           GAMBIA                         <48 cm           285    1543
Birth       Keneba           GAMBIA                         [48-50) cm       495    1543
Birth       MAL-ED           BANGLADESH                     >=50 cm           39     231
Birth       MAL-ED           BANGLADESH                     <48 cm           113     231
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     231
Birth       MAL-ED           BRAZIL                         >=50 cm           30      65
Birth       MAL-ED           BRAZIL                         <48 cm            17      65
Birth       MAL-ED           BRAZIL                         [48-50) cm        18      65
Birth       MAL-ED           INDIA                          >=50 cm            9      47
Birth       MAL-ED           INDIA                          <48 cm            20      47
Birth       MAL-ED           INDIA                          [48-50) cm        18      47
Birth       MAL-ED           NEPAL                          >=50 cm            8      27
Birth       MAL-ED           NEPAL                          <48 cm            12      27
Birth       MAL-ED           NEPAL                          [48-50) cm         7      27
Birth       MAL-ED           PERU                           >=50 cm           52     233
Birth       MAL-ED           PERU                           <48 cm            88     233
Birth       MAL-ED           PERU                           [48-50) cm        93     233
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           44     123
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            33     123
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        46     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            42     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     125
Birth       NIH-Birth        BANGLADESH                     >=50 cm          139     608
Birth       NIH-Birth        BANGLADESH                     <48 cm           240     608
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       229     608
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          161     732
Birth       NIH-Crypto       BANGLADESH                     <48 cm           287     732
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       284     732
Birth       PROBIT           BELARUS                        >=50 cm        12626   13893
Birth       PROBIT           BELARUS                        <48 cm           147   13893
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13893
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     539
Birth       PROVIDE          BANGLADESH                     <48 cm           196     539
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     539
Birth       ResPak           PAKISTAN                       >=50 cm           12      42
Birth       ResPak           PAKISTAN                       <48 cm            16      42
Birth       ResPak           PAKISTAN                       [48-50) cm        14      42
Birth       SAS-CompFeed     INDIA                          >=50 cm          116    1252
Birth       SAS-CompFeed     INDIA                          <48 cm           738    1252
Birth       SAS-CompFeed     INDIA                          [48-50) cm       398    1252
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm         4125   13875
Birth       ZVITAMBO         ZIMBABWE                       <48 cm          4409   13875
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm      5341   13875
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm           16     104
6 months    CMC-V-BCS-2002   INDIA                          <48 cm            48     104
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104
6 months    CMIN             BANGLADESH                     >=50 cm            0      12
6 months    CMIN             BANGLADESH                     <48 cm             6      12
6 months    CMIN             BANGLADESH                     [48-50) cm         6      12
6 months    COHORTS          GUATEMALA                      >=50 cm          351     688
6 months    COHORTS          GUATEMALA                      <48 cm           133     688
6 months    COHORTS          GUATEMALA                      [48-50) cm       204     688
6 months    COHORTS          INDIA                          >=50 cm         1330    6135
6 months    COHORTS          INDIA                          <48 cm          2530    6135
6 months    COHORTS          INDIA                          [48-50) cm      2275    6135
6 months    COHORTS          PHILIPPINES                    >=50 cm          990    2701
6 months    COHORTS          PHILIPPINES                    <48 cm           677    2701
6 months    COHORTS          PHILIPPINES                    [48-50) cm      1034    2701
6 months    CONTENT          PERU                           >=50 cm            1       2
6 months    CONTENT          PERU                           <48 cm             1       2
6 months    CONTENT          PERU                           [48-50) cm         0       2
6 months    EE               PAKISTAN                       >=50 cm           24     236
6 months    EE               PAKISTAN                       <48 cm           160     236
6 months    EE               PAKISTAN                       [48-50) cm        52     236
6 months    GMS-Nepal        NEPAL                          >=50 cm           96     563
6 months    GMS-Nepal        NEPAL                          <48 cm           296     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563
6 months    IRC              INDIA                          >=50 cm          142     389
6 months    IRC              INDIA                          <48 cm           109     389
6 months    IRC              INDIA                          [48-50) cm       138     389
6 months    JiVitA-3         BANGLADESH                     >=50 cm          827   13924
6 months    JiVitA-3         BANGLADESH                     <48 cm          9817   13924
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3280   13924
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4020
6 months    JiVitA-4         BANGLADESH                     <48 cm          1923    4020
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4020
6 months    Keneba           GAMBIA                         >=50 cm          677    1347
6 months    Keneba           GAMBIA                         <48 cm           234    1347
6 months    Keneba           GAMBIA                         [48-50) cm       436    1347
6 months    MAL-ED           BANGLADESH                     >=50 cm           39     211
6 months    MAL-ED           BANGLADESH                     <48 cm            98     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm        74     211
6 months    MAL-ED           BRAZIL                         >=50 cm           28      59
6 months    MAL-ED           BRAZIL                         <48 cm            15      59
6 months    MAL-ED           BRAZIL                         [48-50) cm        16      59
6 months    MAL-ED           INDIA                          >=50 cm            8      41
6 months    MAL-ED           INDIA                          <48 cm            18      41
6 months    MAL-ED           INDIA                          [48-50) cm        15      41
6 months    MAL-ED           NEPAL                          >=50 cm            8      26
6 months    MAL-ED           NEPAL                          <48 cm            11      26
6 months    MAL-ED           NEPAL                          [48-50) cm         7      26
6 months    MAL-ED           PERU                           >=50 cm           48     215
6 months    MAL-ED           PERU                           <48 cm            84     215
6 months    MAL-ED           PERU                           [48-50) cm        83     215
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm           34      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm            21      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        38      93
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            39     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        48     118
6 months    NIH-Birth        BANGLADESH                     >=50 cm          120     518
6 months    NIH-Birth        BANGLADESH                     <48 cm           199     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm       199     518
6 months    NIH-Crypto       BANGLADESH                     >=50 cm          164     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm           270     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm       281     715
6 months    PROBIT           BELARUS                        >=50 cm        14295   15760
6 months    PROBIT           BELARUS                        <48 cm           172   15760
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15760
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     604
6 months    PROVIDE          BANGLADESH                     <48 cm           213     604
6 months    PROVIDE          BANGLADESH                     [48-50) cm       248     604
6 months    ResPak           PAKISTAN                       >=50 cm           10      34
6 months    ResPak           PAKISTAN                       <48 cm            13      34
6 months    ResPak           PAKISTAN                       [48-50) cm        11      34
6 months    SAS-CompFeed     INDIA                          >=50 cm          196    1324
6 months    SAS-CompFeed     INDIA                          <48 cm           709    1324
6 months    SAS-CompFeed     INDIA                          [48-50) cm       419    1324
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm         2538    8577
6 months    ZVITAMBO         ZIMBABWE                       <48 cm          2680    8577
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      3359    8577
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           16     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm            50     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106
24 months   CMIN             BANGLADESH                     >=50 cm            0      11
24 months   CMIN             BANGLADESH                     <48 cm             5      11
24 months   CMIN             BANGLADESH                     [48-50) cm         6      11
24 months   COHORTS          GUATEMALA                      >=50 cm          263     560
24 months   COHORTS          GUATEMALA                      <48 cm           120     560
24 months   COHORTS          GUATEMALA                      [48-50) cm       177     560
24 months   COHORTS          INDIA                          >=50 cm         1047    4758
24 months   COHORTS          INDIA                          <48 cm          1934    4758
24 months   COHORTS          INDIA                          [48-50) cm      1777    4758
24 months   COHORTS          PHILIPPINES                    >=50 cm          897    2442
24 months   COHORTS          PHILIPPINES                    <48 cm           604    2442
24 months   COHORTS          PHILIPPINES                    [48-50) cm       941    2442
24 months   CONTENT          PERU                           >=50 cm            1       2
24 months   CONTENT          PERU                           <48 cm             1       2
24 months   CONTENT          PERU                           [48-50) cm         0       2
24 months   EE               PAKISTAN                       >=50 cm           10     106
24 months   EE               PAKISTAN                       <48 cm            71     106
24 months   EE               PAKISTAN                       [48-50) cm        25     106
24 months   GMS-Nepal        NEPAL                          >=50 cm           84     487
24 months   GMS-Nepal        NEPAL                          <48 cm           249     487
24 months   GMS-Nepal        NEPAL                          [48-50) cm       154     487
24 months   IRC              INDIA                          >=50 cm          142     390
24 months   IRC              INDIA                          <48 cm           110     390
24 months   IRC              INDIA                          [48-50) cm       138     390
24 months   JiVitA-3         BANGLADESH                     >=50 cm          404    7184
24 months   JiVitA-3         BANGLADESH                     <48 cm          5067    7184
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1713    7184
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1077    3987
24 months   JiVitA-4         BANGLADESH                     <48 cm          1944    3987
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       966    3987
24 months   Keneba           GAMBIA                         >=50 cm          535    1065
24 months   Keneba           GAMBIA                         <48 cm           196    1065
24 months   Keneba           GAMBIA                         [48-50) cm       334    1065
24 months   MAL-ED           BANGLADESH                     >=50 cm           39     187
24 months   MAL-ED           BANGLADESH                     <48 cm            80     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm        68     187
24 months   MAL-ED           BRAZIL                         >=50 cm           20      42
24 months   MAL-ED           BRAZIL                         <48 cm            10      42
24 months   MAL-ED           BRAZIL                         [48-50) cm        12      42
24 months   MAL-ED           INDIA                          >=50 cm            6      39
24 months   MAL-ED           INDIA                          <48 cm            18      39
24 months   MAL-ED           INDIA                          [48-50) cm        15      39
24 months   MAL-ED           NEPAL                          >=50 cm            8      26
24 months   MAL-ED           NEPAL                          <48 cm            11      26
24 months   MAL-ED           NEPAL                          [48-50) cm         7      26
24 months   MAL-ED           PERU                           >=50 cm           34     160
24 months   MAL-ED           PERU                           <48 cm            67     160
24 months   MAL-ED           PERU                           [48-50) cm        59     160
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           32      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm            21      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        38      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        41     104
24 months   NIH-Birth        BANGLADESH                     >=50 cm           99     414
24 months   NIH-Birth        BANGLADESH                     <48 cm           160     414
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       155     414
24 months   NIH-Crypto       BANGLADESH                     >=50 cm          128     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm           200     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       186     514
24 months   PROBIT           BELARUS                        >=50 cm         3683    4035
24 months   PROBIT           BELARUS                        <48 cm            44    4035
24 months   PROBIT           BELARUS                        [48-50) cm       308    4035
24 months   PROVIDE          BANGLADESH                     >=50 cm          139     578
24 months   PROVIDE          BANGLADESH                     <48 cm           206     578
24 months   PROVIDE          BANGLADESH                     [48-50) cm       233     578
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm          312    1608
24 months   ZVITAMBO         ZIMBABWE                       <48 cm           711    1608
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       585    1608


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU

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
![](/tmp/1e8d7849-f490-4334-a14b-a573dbd9fb9e/a56d6038-b33d-410e-b4e8-a0f8b682157f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.3595007    0.0608754    0.6581261
Birth       COHORTS          GUATEMALA                      optimal              observed           1.0545519    0.9884703    1.1206335
Birth       COHORTS          INDIA                          optimal              observed           0.8506519    0.8135539    0.8877498
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.7924221    0.7579324    0.8269118
Birth       EE               PAKISTAN                       optimal              observed           0.5589267    0.0275467    1.0903067
Birth       GMS-Nepal        NEPAL                          optimal              observed           0.4736960    0.3867700    0.5606220
Birth       IRC              INDIA                          optimal              observed           1.2621057    1.0812129    1.4429985
Birth       JiVitA-3         BANGLADESH                     optimal              observed           0.6711661    0.6114883    0.7308440
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.3666747    0.2706145    0.4627349
Birth       Keneba           GAMBIA                         optimal              observed           0.9735638    0.9188165    1.0283112
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.3101885    0.1764311    0.4439460
Birth       MAL-ED           BRAZIL                         optimal              observed           0.2827228    0.0683247    0.4971210
Birth       MAL-ED           INDIA                          optimal              observed          -0.0085922   -0.2327029    0.2155184
Birth       MAL-ED           NEPAL                          optimal              observed           0.2497285    0.0277614    0.4716957
Birth       MAL-ED           PERU                           optimal              observed           0.2481029    0.0989048    0.3973009
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.3605592    0.1807295    0.5403889
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0458091   -0.1182502    0.2098684
Birth       NIH-Birth        BANGLADESH                     optimal              observed           0.4779586    0.3600831    0.5958341
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.3464200    0.2612490    0.4315909
Birth       PROBIT           BELARUS                        optimal              observed           1.4946218    1.3587036    1.6305400
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.2870547    0.1918400    0.3822695
Birth       ResPak           PAKISTAN                       optimal              observed           0.5305870   -0.0292839    1.0904579
Birth       SAS-CompFeed     INDIA                          optimal              observed           0.4195312    0.3495308    0.4895317
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.8419446    0.8181662    0.8657230
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0783486   -1.4950814   -0.6616157
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.2351645   -1.3270518   -1.1432773
6 months    COHORTS          INDIA                          optimal              observed          -0.1411370   -0.1958663   -0.0864077
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.6259907   -0.6886293   -0.5633522
6 months    EE               PAKISTAN                       optimal              observed          -0.7662787   -1.0884569   -0.4441005
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.5542660   -0.7212926   -0.3872395
6 months    IRC              INDIA                          optimal              observed          -0.7455653   -0.9561969   -0.5349336
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1202909   -0.1954401   -0.0451417
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.9590456   -1.0429243   -0.8751669
6 months    Keneba           GAMBIA                         optimal              observed          -0.5391384   -0.6183358   -0.4599411
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.3586811   -0.5924461   -0.1249160
6 months    MAL-ED           BRAZIL                         optimal              observed           0.4492514    0.1949795    0.7035233
6 months    MAL-ED           INDIA                          optimal              observed          -0.5993436   -0.9108445   -0.2878428
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1903748   -0.4544048    0.0736551
6 months    MAL-ED           PERU                           optimal              observed          -0.6778146   -0.9079531   -0.4476761
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7260658   -1.0324350   -0.4196967
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6578149   -0.9274532   -0.3881765
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.6364018   -0.8135594   -0.4592443
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.4056248   -0.5135517   -0.2976979
6 months    PROBIT           BELARUS                        optimal              observed           0.1778939    0.0818710    0.2739167
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.3216206   -0.4545042   -0.1887370
6 months    ResPak           PAKISTAN                       optimal              observed          -1.4843038   -2.4615192   -0.5070885
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5769426   -0.7555469   -0.3983382
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4531968   -0.4972249   -0.4091687
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2645637   -2.7240398   -1.8050876
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.5349505   -2.6502561   -2.4196449
24 months   COHORTS          INDIA                          optimal              observed          -1.3921921   -1.4618584   -1.3225257
24 months   COHORTS          PHILIPPINES                    optimal              observed          -1.9658666   -2.0357943   -1.8959388
24 months   EE               PAKISTAN                       optimal              observed          -1.7225654   -2.0810658   -1.3640650
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.4305186   -1.6449092   -1.2161279
24 months   IRC              INDIA                          optimal              observed          -1.5888219   -1.7519177   -1.4257262
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1793792   -1.2882483   -1.0705101
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.4518590   -1.5246873   -1.3790307
24 months   Keneba           GAMBIA                         optimal              observed          -1.2841849   -1.3725963   -1.1957734
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.4565527   -1.7238116   -1.1892939
24 months   MAL-ED           BRAZIL                         optimal              observed           0.2999224   -0.1447184    0.7445632
24 months   MAL-ED           INDIA                          optimal              observed          -1.4626479   -1.9285986   -0.9966971
24 months   MAL-ED           NEPAL                          optimal              observed          -1.1278319   -1.4217027   -0.8339611
24 months   MAL-ED           PERU                           optimal              observed          -1.6094271   -1.8997641   -1.3190902
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.5638755   -1.9345211   -1.1932299
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0195336   -2.3085243   -1.7305430
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.5850752   -1.7915927   -1.3785577
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.9312335   -1.0544010   -0.8080660
24 months   PROBIT           BELARUS                        optimal              observed          -0.1163586   -0.4048190    0.1721018
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.0209207   -1.1660110   -0.8758304
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1259416   -1.2479769   -1.0039063


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.2953686   -1.5534398   -1.0372973
6 months    COHORTS          GUATEMALA                      observed             observed          -1.7553052   -1.8330182   -1.6775923
6 months    COHORTS          INDIA                          observed             observed          -0.9973610   -1.0266429   -0.9680792
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1429137   -1.1848624   -1.1009651
6 months    EE               PAKISTAN                       observed             observed          -2.1264619   -2.2795142   -1.9734095
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          observed             observed          -1.2263582   -1.3620220   -1.0906944
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3303469   -1.3544501   -1.3062437
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3464316   -1.3887462   -1.3041170
6 months    Keneba           GAMBIA                         observed             observed          -0.9034101   -0.9602836   -0.8465366
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2087678   -1.3332048   -1.0843307
6 months    MAL-ED           BRAZIL                         observed             observed           0.0564689   -0.1983718    0.3113097
6 months    MAL-ED           INDIA                          observed             observed          -1.5092276   -1.7906712   -1.2277841
6 months    MAL-ED           NEPAL                          observed             observed          -0.6684615   -0.9484552   -0.3884679
6 months    MAL-ED           PERU                           observed             observed          -1.2930271   -1.4141974   -1.1718569
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0985125   -1.3092915   -0.8877336
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3305226   -1.5032169   -1.1578283
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4030363   -1.4821426   -1.3239299
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8671231   -0.8928063   -0.8414399
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.4800629   -2.6380751   -2.3220507
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9426964   -3.0309681   -2.8544248
24 months   COHORTS          INDIA                          observed             observed          -2.1193232   -2.1537519   -2.0848946
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4157330   -2.4606528   -2.3708132
24 months   EE               PAKISTAN                       observed             observed          -2.6323899   -2.8110257   -2.4537542
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          observed             observed          -1.7882863   -1.8843577   -1.6922149
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0375014   -2.0671576   -2.0078452
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7719162   -1.8104910   -1.7333415
24 months   Keneba           GAMBIA                         observed             observed          -1.5564333   -1.6186769   -1.4941898
24 months   MAL-ED           BANGLADESH                     observed             observed          -2.0004545   -2.1320336   -1.8688755
24 months   MAL-ED           BRAZIL                         observed             observed          -0.0901587   -0.4299024    0.2495849
24 months   MAL-ED           INDIA                          observed             observed          -2.1964103   -2.4711826   -1.9216379
24 months   MAL-ED           NEPAL                          observed             observed          -1.5280769   -1.8563546   -1.1997992
24 months   MAL-ED           PERU                           observed             observed          -1.7565208   -1.8888943   -1.6241474
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.5850366   -1.8154417   -1.3546316
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5537500   -2.7412414   -2.3662586
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6032245   -1.6608525   -1.5455965


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3206964   -1.6516178   -0.9897750
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.9248219   -1.0118739   -0.8377698
Birth       COHORTS          INDIA                          optimal              observed          -1.5205479   -1.5622631   -1.4788328
Birth       COHORTS          PHILIPPINES                    optimal              observed          -1.0414713   -1.0844990   -0.9984435
Birth       EE               PAKISTAN                       optimal              observed          -2.4198017   -2.9393974   -1.9002060
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.5588540   -1.6678775   -1.4498305
Birth       IRC              INDIA                          optimal              observed          -1.5701469   -1.7565331   -1.3837607
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -2.2605810   -2.3243765   -2.1967854
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.8899655   -1.9925444   -1.7873867
Birth       Keneba           GAMBIA                         optimal              observed          -0.9427602   -1.0074908   -0.8780296
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.4282837   -1.6019902   -1.2545772
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.9587228   -1.2451081   -0.6723376
Birth       MAL-ED           INDIA                          optimal              observed          -1.1950248   -1.5374684   -0.8525812
Birth       MAL-ED           NEPAL                          optimal              observed          -1.1030619   -1.4874869   -0.7186369
Birth       MAL-ED           PERU                           optimal              observed          -1.1308926   -1.2938732   -0.9679119
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9922665   -1.2101057   -0.7744272
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2014091   -1.4406540   -0.9621641
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.4089783   -1.5332926   -1.2846641
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.2559145   -1.3535740   -1.1582550
Birth       PROBIT           BELARUS                        optimal              observed          -0.1831801   -0.2231260   -0.1432341
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.1721568   -1.2761807   -1.0681328
Birth       ResPak           PAKISTAN                       optimal              observed          -1.5105870   -2.0939165   -0.9272574
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.8509530   -1.9437276   -1.7581784
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3422170   -1.3689478   -1.3154863
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2170200   -0.5473773    0.1133372
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.5201407   -0.5971648   -0.4431167
6 months    COHORTS          INDIA                          optimal              observed          -0.8562241   -0.9078365   -0.8046117
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.5169230   -0.5701216   -0.4637244
6 months    EE               PAKISTAN                       optimal              observed          -1.3601832   -1.6879643   -1.0324020
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.7967878   -0.9524074   -0.6411683
6 months    IRC              INDIA                          optimal              observed          -0.4807929   -0.6551966   -0.3063893
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2100560   -1.2830717   -1.1370403
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3873860   -0.4590956   -0.3156764
6 months    Keneba           GAMBIA                         optimal              observed          -0.3642717   -0.4221717   -0.3063716
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.8500867   -1.0753119   -0.6248615
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.3927825   -0.6879406   -0.0976244
6 months    MAL-ED           INDIA                          optimal              observed          -0.9098840   -1.2849988   -0.5347692
6 months    MAL-ED           NEPAL                          optimal              observed          -0.4780867   -0.8110857   -0.1450877
6 months    MAL-ED           PERU                           optimal              observed          -0.6152125   -0.8251990   -0.4052261
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3724467   -0.6412643   -0.1036291
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6727077   -0.9291522   -0.4162632
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.7728726   -0.9313233   -0.6144220
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.7930535   -0.9003484   -0.6857587
6 months    PROBIT           BELARUS                        optimal              observed          -0.0798865   -0.0968432   -0.0629297
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.7700709   -0.8920700   -0.6480718
6 months    ResPak           PAKISTAN                       optimal              observed          -0.2234413   -1.0918413    0.6449587
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.8260937   -1.0036666   -0.6485208
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4139263   -0.4521240   -0.3757286
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2154992   -0.6386475    0.2076491
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.4077459   -0.5001199   -0.3153719
24 months   COHORTS          INDIA                          optimal              observed          -0.7271312   -0.7904615   -0.6638009
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4498664   -0.5076767   -0.3920561
24 months   EE               PAKISTAN                       optimal              observed          -0.9098245   -1.2819608   -0.5376882
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.4559701   -0.6498122   -0.2621281
24 months   IRC              INDIA                          optimal              observed          -0.1994644   -0.3292500   -0.0696787
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.8581222   -0.9627200   -0.7535244
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.3200572   -0.3823424   -0.2577720
24 months   Keneba           GAMBIA                         optimal              observed          -0.2722485   -0.3354854   -0.2090115
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.5439018   -0.7903619   -0.2974418
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.3900811   -0.7521897   -0.0279724
24 months   MAL-ED           INDIA                          optimal              observed          -0.7337624   -1.2258215   -0.2417033
24 months   MAL-ED           NEPAL                          optimal              observed          -0.4002450   -0.7900465   -0.0104435
24 months   MAL-ED           PERU                           optimal              observed          -0.1470937   -0.4061206    0.1119332
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0211611   -0.3380936    0.2957714
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5342164   -0.8089695   -0.2594632
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.6417867   -0.8239943   -0.4595792
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.5100311   -0.6309770   -0.3890852
24 months   PROBIT           BELARUS                        optimal              observed          -0.0279305   -0.0536006   -0.0022605
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.5815014   -0.7141927   -0.4488102
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4772829   -0.5886448   -0.3659211
