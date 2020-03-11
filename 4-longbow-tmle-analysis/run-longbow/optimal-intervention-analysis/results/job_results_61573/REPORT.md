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
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm           13      86
Birth       CMC-V-BCS-2002   INDIA                          <48 cm            33      86
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm        40      86
Birth       CMIN             BANGLADESH                     >=50 cm            2      19
Birth       CMIN             BANGLADESH                     <48 cm             9      19
Birth       CMIN             BANGLADESH                     [48-50) cm         8      19
Birth       COHORTS          GUATEMALA                      >=50 cm          396     756
Birth       COHORTS          GUATEMALA                      <48 cm           132     756
Birth       COHORTS          GUATEMALA                      [48-50) cm       228     756
Birth       COHORTS          INDIA                          >=50 cm         1404    6193
Birth       COHORTS          INDIA                          <48 cm          2354    6193
Birth       COHORTS          INDIA                          [48-50) cm      2435    6193
Birth       COHORTS          PHILIPPINES                    >=50 cm         1110    2899
Birth       COHORTS          PHILIPPINES                    <48 cm           651    2899
Birth       COHORTS          PHILIPPINES                    [48-50) cm      1138    2899
Birth       CONTENT          PERU                           >=50 cm            1       2
Birth       CONTENT          PERU                           <48 cm             1       2
Birth       CONTENT          PERU                           [48-50) cm         0       2
Birth       EE               PAKISTAN                       >=50 cm           21     177
Birth       EE               PAKISTAN                       <48 cm           102     177
Birth       EE               PAKISTAN                       [48-50) cm        54     177
Birth       GMS-Nepal        NEPAL                          >=50 cm          114     641
Birth       GMS-Nepal        NEPAL                          <48 cm           319     641
Birth       GMS-Nepal        NEPAL                          [48-50) cm       208     641
Birth       IRC              INDIA                          >=50 cm          120     343
Birth       IRC              INDIA                          <48 cm            87     343
Birth       IRC              INDIA                          [48-50) cm       136     343
Birth       JiVitA-3         BANGLADESH                     >=50 cm         1243   18014
Birth       JiVitA-3         BANGLADESH                     <48 cm         11692   18014
Birth       JiVitA-3         BANGLADESH                     [48-50) cm      5079   18014
Birth       JiVitA-4         BANGLADESH                     >=50 cm          178    2396
Birth       JiVitA-4         BANGLADESH                     <48 cm          1487    2396
Birth       JiVitA-4         BANGLADESH                     [48-50) cm       731    2396
Birth       Keneba           GAMBIA                         >=50 cm          736    1465
Birth       Keneba           GAMBIA                         <48 cm           240    1465
Birth       Keneba           GAMBIA                         [48-50) cm       489    1465
Birth       MAL-ED           BANGLADESH                     >=50 cm           39     215
Birth       MAL-ED           BANGLADESH                     <48 cm            97     215
Birth       MAL-ED           BANGLADESH                     [48-50) cm        79     215
Birth       MAL-ED           BRAZIL                         >=50 cm           30      62
Birth       MAL-ED           BRAZIL                         <48 cm            14      62
Birth       MAL-ED           BRAZIL                         [48-50) cm        18      62
Birth       MAL-ED           INDIA                          >=50 cm            9      45
Birth       MAL-ED           INDIA                          <48 cm            18      45
Birth       MAL-ED           INDIA                          [48-50) cm        18      45
Birth       MAL-ED           NEPAL                          >=50 cm            8      26
Birth       MAL-ED           NEPAL                          <48 cm            11      26
Birth       MAL-ED           NEPAL                          [48-50) cm         7      26
Birth       MAL-ED           PERU                           >=50 cm           52     228
Birth       MAL-ED           PERU                           <48 cm            83     228
Birth       MAL-ED           PERU                           [48-50) cm        93     228
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm           43     120
Birth       MAL-ED           SOUTH AFRICA                   <48 cm            31     120
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm        46     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            32     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     115
Birth       NIH-Birth        BANGLADESH                     >=50 cm          136     575
Birth       NIH-Birth        BANGLADESH                     <48 cm           211     575
Birth       NIH-Birth        BANGLADESH                     [48-50) cm       228     575
Birth       NIH-Crypto       BANGLADESH                     >=50 cm          160     707
Birth       NIH-Crypto       BANGLADESH                     <48 cm           267     707
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm       280     707
Birth       PROBIT           BELARUS                        >=50 cm        12557   13817
Birth       PROBIT           BELARUS                        <48 cm           140   13817
Birth       PROBIT           BELARUS                        [48-50) cm      1120   13817
Birth       PROVIDE          BANGLADESH                     >=50 cm          121     532
Birth       PROVIDE          BANGLADESH                     <48 cm           189     532
Birth       PROVIDE          BANGLADESH                     [48-50) cm       222     532
Birth       ResPak           PAKISTAN                       >=50 cm           12      38
Birth       ResPak           PAKISTAN                       <48 cm            12      38
Birth       ResPak           PAKISTAN                       [48-50) cm        14      38
Birth       SAS-CompFeed     INDIA                          >=50 cm          116    1103
Birth       SAS-CompFeed     INDIA                          <48 cm           590    1103
Birth       SAS-CompFeed     INDIA                          [48-50) cm       397    1103
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm         3997   12917
Birth       ZVITAMBO         ZIMBABWE                       <48 cm          3641   12917
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12917
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm           16     105
6 months    CMC-V-BCS-2002   INDIA                          <48 cm            49     105
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        40     105
6 months    CMIN             BANGLADESH                     >=50 cm            0      12
6 months    CMIN             BANGLADESH                     <48 cm             6      12
6 months    CMIN             BANGLADESH                     [48-50) cm         6      12
6 months    COHORTS          GUATEMALA                      >=50 cm          351     689
6 months    COHORTS          GUATEMALA                      <48 cm           134     689
6 months    COHORTS          GUATEMALA                      [48-50) cm       204     689
6 months    COHORTS          INDIA                          >=50 cm         1329    6127
6 months    COHORTS          INDIA                          <48 cm          2527    6127
6 months    COHORTS          INDIA                          [48-50) cm      2271    6127
6 months    COHORTS          PHILIPPINES                    >=50 cm          989    2699
6 months    COHORTS          PHILIPPINES                    <48 cm           677    2699
6 months    COHORTS          PHILIPPINES                    [48-50) cm      1033    2699
6 months    CONTENT          PERU                           >=50 cm            1       2
6 months    CONTENT          PERU                           <48 cm             1       2
6 months    CONTENT          PERU                           [48-50) cm         0       2
6 months    EE               PAKISTAN                       >=50 cm           24     238
6 months    EE               PAKISTAN                       <48 cm           162     238
6 months    EE               PAKISTAN                       [48-50) cm        52     238
6 months    GMS-Nepal        NEPAL                          >=50 cm           96     563
6 months    GMS-Nepal        NEPAL                          <48 cm           296     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm       171     563
6 months    IRC              INDIA                          >=50 cm          141     389
6 months    IRC              INDIA                          <48 cm           110     389
6 months    IRC              INDIA                          [48-50) cm       138     389
6 months    JiVitA-3         BANGLADESH                     >=50 cm          826   13899
6 months    JiVitA-3         BANGLADESH                     <48 cm          9806   13899
6 months    JiVitA-3         BANGLADESH                     [48-50) cm      3267   13899
6 months    JiVitA-4         BANGLADESH                     >=50 cm         1101    4024
6 months    JiVitA-4         BANGLADESH                     <48 cm          1927    4024
6 months    JiVitA-4         BANGLADESH                     [48-50) cm       996    4024
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
6 months    PROBIT           BELARUS                        >=50 cm        14292   15757
6 months    PROBIT           BELARUS                        <48 cm           172   15757
6 months    PROBIT           BELARUS                        [48-50) cm      1293   15757
6 months    PROVIDE          BANGLADESH                     >=50 cm          143     603
6 months    PROVIDE          BANGLADESH                     <48 cm           213     603
6 months    PROVIDE          BANGLADESH                     [48-50) cm       247     603
6 months    ResPak           PAKISTAN                       >=50 cm           10      34
6 months    ResPak           PAKISTAN                       <48 cm            13      34
6 months    ResPak           PAKISTAN                       [48-50) cm        11      34
6 months    SAS-CompFeed     INDIA                          >=50 cm          196    1322
6 months    SAS-CompFeed     INDIA                          <48 cm           708    1322
6 months    SAS-CompFeed     INDIA                          [48-50) cm       418    1322
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm         2461    8413
6 months    ZVITAMBO         ZIMBABWE                       <48 cm          2657    8413
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      3295    8413
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           16     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm            50     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        40     106
24 months   CMIN             BANGLADESH                     >=50 cm            0      11
24 months   CMIN             BANGLADESH                     <48 cm             5      11
24 months   CMIN             BANGLADESH                     [48-50) cm         6      11
24 months   COHORTS          GUATEMALA                      >=50 cm          264     564
24 months   COHORTS          GUATEMALA                      <48 cm           122     564
24 months   COHORTS          GUATEMALA                      [48-50) cm       178     564
24 months   COHORTS          INDIA                          >=50 cm         1035    4722
24 months   COHORTS          INDIA                          <48 cm          1928    4722
24 months   COHORTS          INDIA                          [48-50) cm      1759    4722
24 months   COHORTS          PHILIPPINES                    >=50 cm          895    2446
24 months   COHORTS          PHILIPPINES                    <48 cm           609    2446
24 months   COHORTS          PHILIPPINES                    [48-50) cm       942    2446
24 months   CONTENT          PERU                           >=50 cm            1       2
24 months   CONTENT          PERU                           <48 cm             1       2
24 months   CONTENT          PERU                           [48-50) cm         0       2
24 months   EE               PAKISTAN                       >=50 cm           10     107
24 months   EE               PAKISTAN                       <48 cm            72     107
24 months   EE               PAKISTAN                       [48-50) cm        25     107
24 months   GMS-Nepal        NEPAL                          >=50 cm           84     486
24 months   GMS-Nepal        NEPAL                          <48 cm           249     486
24 months   GMS-Nepal        NEPAL                          [48-50) cm       153     486
24 months   IRC              INDIA                          >=50 cm          142     390
24 months   IRC              INDIA                          <48 cm           110     390
24 months   IRC              INDIA                          [48-50) cm       138     390
24 months   JiVitA-3         BANGLADESH                     >=50 cm          404    7159
24 months   JiVitA-3         BANGLADESH                     <48 cm          5050    7159
24 months   JiVitA-3         BANGLADESH                     [48-50) cm      1705    7159
24 months   JiVitA-4         BANGLADESH                     >=50 cm         1074    3974
24 months   JiVitA-4         BANGLADESH                     <48 cm          1937    3974
24 months   JiVitA-4         BANGLADESH                     [48-50) cm       963    3974
24 months   Keneba           GAMBIA                         >=50 cm          535    1066
24 months   Keneba           GAMBIA                         <48 cm           197    1066
24 months   Keneba           GAMBIA                         [48-50) cm       334    1066
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
24 months   NIH-Birth        BANGLADESH                     >=50 cm           99     413
24 months   NIH-Birth        BANGLADESH                     <48 cm           160     413
24 months   NIH-Birth        BANGLADESH                     [48-50) cm       154     413
24 months   NIH-Crypto       BANGLADESH                     >=50 cm          128     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm           200     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       186     514
24 months   PROBIT           BELARUS                        >=50 cm         3622    3970
24 months   PROBIT           BELARUS                        <48 cm            44    3970
24 months   PROBIT           BELARUS                        [48-50) cm       304    3970
24 months   PROVIDE          BANGLADESH                     >=50 cm          139     579
24 months   PROVIDE          BANGLADESH                     <48 cm           206     579
24 months   PROVIDE          BANGLADESH                     [48-50) cm       234     579
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm           42     426
24 months   ZVITAMBO         ZIMBABWE                       <48 cm           258     426
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       126     426


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
![](/tmp/783ac6a4-85ef-4642-bf52-afe612475d67/d5e5bcbf-3495-4762-bb4d-7d7b1e01eb84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4354385   -1.2791578    0.4082808
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.2713812   -0.5356470   -0.0071155
Birth       COHORTS          INDIA                          optimal              observed          -0.7670587   -0.8176388   -0.7164787
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3740048   -0.4799597   -0.2680499
Birth       EE               PAKISTAN                       optimal              observed          -0.1983613   -0.4446083    0.0478857
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.9795126   -1.1100691   -0.8489561
Birth       IRC              INDIA                          optimal              observed          -0.1993758   -0.5724599    0.1737083
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7274004   -0.7499040   -0.7048968
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6382900   -0.7037533   -0.5728266
Birth       Keneba           GAMBIA                         optimal              observed          -0.5886969   -0.7513474   -0.4260465
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.1395137   -1.3704314   -0.9085961
Birth       MAL-ED           BRAZIL                         optimal              observed           0.6739718   -0.1006618    1.4486053
Birth       MAL-ED           INDIA                          optimal              observed          -0.6266568   -1.1042610   -0.1490526
Birth       MAL-ED           NEPAL                          optimal              observed          -0.7204476   -1.3041600   -0.1367352
Birth       MAL-ED           PERU                           optimal              observed           0.1543053   -0.0185830    0.3271936
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.2500354   -0.1728325    0.6729033
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0959604    0.7172023    1.4747184
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.4161736   -1.5710827   -1.2612644
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.0949671   -1.2353453   -0.9545889
Birth       PROBIT           BELARUS                        optimal              observed           0.0832461   -0.0161636    0.1826557
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2414141   -1.3618085   -1.1210196
Birth       ResPak           PAKISTAN                       optimal              observed          -0.7278529   -1.4601107    0.0044049
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.5838888   -0.8159575   -0.3518201
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.0508054    0.0000473    0.1015634
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0223400   -1.2381182    1.1934382
6 months    COHORTS          GUATEMALA                      optimal              observed           0.2776201    0.1576685    0.3975718
6 months    COHORTS          INDIA                          optimal              observed          -0.4839478   -0.5431048   -0.4247908
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2331490   -0.2997069   -0.1665912
6 months    EE               PAKISTAN                       optimal              observed          -1.0066219   -1.4984344   -0.5148093
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.3072717   -0.5171923   -0.0973510
6 months    IRC              INDIA                          optimal              observed          -0.3982445   -0.6701033   -0.1263858
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.4940366   -0.5625416   -0.4255317
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3043896   -0.3798939   -0.2288852
6 months    Keneba           GAMBIA                         optimal              observed          -0.1551927   -0.2405239   -0.0698616
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0553155   -0.4638182    0.3531871
6 months    MAL-ED           BRAZIL                         optimal              observed           0.8645943    0.3586749    1.3705137
6 months    MAL-ED           INDIA                          optimal              observed          -1.0550595   -1.5312153   -0.5789037
6 months    MAL-ED           NEPAL                          optimal              observed          -0.6762844   -1.2564505   -0.0961184
6 months    MAL-ED           PERU                           optimal              observed           1.2242866    0.9631638    1.4854095
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           1.0002888    0.4751309    1.5254467
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8613342    0.4604619    1.2622064
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3188166   -0.5176234   -0.1200099
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1661458    0.0045682    0.3277234
6 months    PROBIT           BELARUS                        optimal              observed           0.5701261    0.4782999    0.6619523
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.1345897   -0.0407763    0.3099557
6 months    ResPak           PAKISTAN                       optimal              observed           0.3559238   -0.4496956    1.1615431
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.6244183   -0.7901539   -0.4586827
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3971411    0.3491324    0.4451498
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0390319   -0.4898939    0.4118301
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0557371   -0.1543820    0.0429078
24 months   COHORTS          INDIA                          optimal              observed          -0.2928963   -0.3556508   -0.2301419
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4450285   -0.5023031   -0.3877539
24 months   EE               PAKISTAN                       optimal              observed          -0.4426598   -0.9289069    0.0435873
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.8101434   -1.0195292   -0.6007576
24 months   IRC              INDIA                          optimal              observed          -0.6693118   -0.8309377   -0.5076860
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.9331622   -1.0424291   -0.8238952
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1109708   -1.1830817   -1.0388599
24 months   Keneba           GAMBIA                         optimal              observed          -0.6693446   -0.7533746   -0.5853146
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.5864433   -0.9022694   -0.2706173
24 months   MAL-ED           BRAZIL                         optimal              observed           0.1395083   -0.3856078    0.6646244
24 months   MAL-ED           INDIA                          optimal              observed          -0.5859382   -1.5472216    0.3753451
24 months   MAL-ED           NEPAL                          optimal              observed          -0.4558906   -0.9908991    0.0791179
24 months   MAL-ED           PERU                           optimal              observed           0.5594260    0.3012681    0.8175839
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.4305706    0.0410761    0.8200651
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4483678    0.0796017    0.8171338
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.6364136   -0.8126033   -0.4602239
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.4718120   -0.6616058   -0.2820181
24 months   PROBIT           BELARUS                        optimal              observed           0.6862561    0.5768867    0.7956256
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.6369333   -0.8128036   -0.4610630
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1007059   -1.2550000   -0.9464119


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         observed             observed          -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       observed             observed          -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.4931429   -0.7890257   -0.1972601
6 months    COHORTS          GUATEMALA                      observed             observed           0.2193904    0.1338361    0.3049448
6 months    COHORTS          INDIA                          observed             observed          -0.6983940   -0.7275858   -0.6692022
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2943461   -0.3357404   -0.2529517
6 months    EE               PAKISTAN                       observed             observed          -0.8527871   -0.9897809   -0.7157933
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          observed             observed          -0.6409340   -0.7788045   -0.5030635
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.6072473   -0.6281750   -0.5863195
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3757033   -0.4185197   -0.3328869
6 months    Keneba           GAMBIA                         observed             observed          -0.1974657   -0.2592285   -0.1357029
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1458294   -0.2842227   -0.0074361
6 months    MAL-ED           BRAZIL                         observed             observed           0.8580508    0.5394364    1.1766653
6 months    MAL-ED           INDIA                          observed             observed          -0.6644715   -0.9812646   -0.3476785
6 months    MAL-ED           NEPAL                          observed             observed          -0.4072436   -0.7125541   -0.1019331
6 months    MAL-ED           PERU                           observed             observed           1.0510698    0.9102569    1.1918826
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.4017921    0.1396820    0.6639023
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5110593    0.3321196    0.6899991
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       observed             observed           0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6674924   -0.8047012   -0.5302836
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3089671    0.2831612    0.3347730
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.4529088   -0.6339053   -0.2719123
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2016312   -0.2740358   -0.1292266
24 months   COHORTS          INDIA                          observed             observed          -0.5945743   -0.6244188   -0.5647299
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6103189   -0.6471371   -0.5735006
24 months   EE               PAKISTAN                       observed             observed          -0.9929439   -1.1707082   -0.8151796
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          observed             observed          -0.7536624   -0.8467166   -0.6606082
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.3046571   -1.3299587   -1.2793555
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2411122   -1.2752162   -1.2070083
24 months   Keneba           GAMBIA                         observed             observed          -0.7949018   -0.8551887   -0.7346150
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8296257   -0.9583167   -0.7009347
24 months   MAL-ED           BRAZIL                         observed             observed           0.2347222   -0.1702799    0.6397243
24 months   MAL-ED           INDIA                          observed             observed          -1.1144872   -1.3842438   -0.8447305
24 months   MAL-ED           NEPAL                          observed             observed          -0.8921154   -1.1547051   -0.6295257
24 months   MAL-ED           PERU                           observed             observed           0.0490417   -0.0909855    0.1890689
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.3919414    0.2031981    0.5806847
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1324519   -0.0568428    0.3217466
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1803052   -1.2806626   -1.0799477


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0293871   -0.7000173    0.6412432
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.7907616   -1.0288293   -0.5526939
Birth       COHORTS          INDIA                          optimal              observed          -0.2176870   -0.2567737   -0.1786002
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3687202   -0.4601871   -0.2772534
Birth       EE               PAKISTAN                       optimal              observed          -0.1349438   -0.2996433    0.0297558
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1369305   -0.2240724   -0.0497885
Birth       IRC              INDIA                          optimal              observed          -0.8112073   -1.1376516   -0.4847630
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0504269   -0.0630996   -0.0377542
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0503369   -0.0931103   -0.0075635
Birth       Keneba           GAMBIA                         optimal              observed          -0.6456648   -0.7936611   -0.4976686
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.1976533    0.0219242    0.3733823
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.2710685   -0.9425144    0.4003774
Birth       MAL-ED           INDIA                          optimal              observed          -0.3057876   -0.6756866    0.0641113
Birth       MAL-ED           NEPAL                          optimal              observed          -0.0480139   -0.6096595    0.5136316
Birth       MAL-ED           PERU                           optimal              observed          -0.2063229   -0.3578937   -0.0547520
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4426187   -0.8096788   -0.0755586
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3335256   -0.6510307   -0.0160205
Birth       NIH-Birth        BANGLADESH                     optimal              observed           0.0662519   -0.0545293    0.1870330
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.1491842   -0.2593081   -0.0390604
Birth       PROBIT           BELARUS                        optimal              observed          -1.2324242   -1.4585163   -1.0063322
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0570446   -0.1492322    0.0351430
Birth       ResPak           PAKISTAN                       optimal              observed           0.3615371   -0.3230253    1.0460995
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0861565   -0.1508652   -0.0214479
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5662950   -0.6095014   -0.5230887
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4708029   -1.5371300    0.5955242
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0582297   -0.1481395    0.0316801
6 months    COHORTS          INDIA                          optimal              observed          -0.2144462   -0.2679068   -0.1609857
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0611970   -0.1153176   -0.0070764
6 months    EE               PAKISTAN                       optimal              observed           0.1538348   -0.2848092    0.5924788
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.2954133   -0.4857277   -0.1050990
6 months    IRC              INDIA                          optimal              observed          -0.2426895   -0.4652456   -0.0201334
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1132107   -0.1774324   -0.0489889
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0713137   -0.1364939   -0.0061335
6 months    Keneba           GAMBIA                         optimal              observed          -0.0422730   -0.1043719    0.0198260
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0905139   -0.4424355    0.2614078
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0065434   -0.4465691    0.4334823
6 months    MAL-ED           INDIA                          optimal              observed           0.3905879    0.0073335    0.7738424
6 months    MAL-ED           NEPAL                          optimal              observed           0.2690409   -0.2212391    0.7593208
6 months    MAL-ED           PERU                           optimal              observed          -0.1732168   -0.4007140    0.0542803
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5984967   -1.0707810   -0.1262125
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3502748   -0.6827904   -0.0177593
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1448594   -0.3162168    0.0264980
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1363835   -0.2710945   -0.0016726
6 months    PROBIT           BELARUS                        optimal              observed           0.0039838   -0.0777364    0.0857041
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.3336803   -0.4867331   -0.1806276
6 months    ResPak           PAKISTAN                       optimal              observed          -0.1382767   -0.7812317    0.5046783
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0430741   -0.0932538    0.0071056
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0881740   -0.1291642   -0.0471838
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4138769   -0.8308804    0.0031266
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1458941   -0.2231587   -0.0686295
24 months   COHORTS          INDIA                          optimal              observed          -0.3016780   -0.3573111   -0.2460449
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.1652904   -0.2125937   -0.1179871
24 months   EE               PAKISTAN                       optimal              observed          -0.5502841   -1.0271767   -0.0733916
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.3235466   -0.5143705   -0.1327226
24 months   IRC              INDIA                          optimal              observed          -0.0843506   -0.2129295    0.0442283
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.3714949   -0.4779362   -0.2650536
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1301414   -0.1927812   -0.0675016
24 months   Keneba           GAMBIA                         optimal              observed          -0.1255572   -0.1869800   -0.0641345
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.2431823   -0.5203635    0.0339988
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0952139   -0.4047868    0.5952146
24 months   MAL-ED           INDIA                          optimal              observed          -0.5285489   -1.4124180    0.3553202
24 months   MAL-ED           NEPAL                          optimal              observed          -0.4362248   -0.8910308    0.0185812
24 months   MAL-ED           PERU                           optimal              observed          -0.5103843   -0.7571913   -0.2635774
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0386292   -0.3812279    0.3039695
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3159159   -0.6382080    0.0063763
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.2705315   -0.4327199   -0.1083432
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1385382   -0.2986940    0.0216175
24 months   PROBIT           BELARUS                        optimal              observed           0.0118845   -0.0182953    0.0420643
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.2559337   -0.4070033   -0.1048640
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0795992   -0.2041966    0.0449981
