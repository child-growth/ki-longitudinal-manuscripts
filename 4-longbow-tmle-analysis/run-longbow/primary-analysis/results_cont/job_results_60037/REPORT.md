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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1e91adf6-fae8-47d0-8ed2-564bf58ecc1e/72c003c0-247d-4d70-8713-57ff3497d4ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e91adf6-fae8-47d0-8ed2-564bf58ecc1e/72c003c0-247d-4d70-8713-57ff3497d4ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e91adf6-fae8-47d0-8ed2-564bf58ecc1e/72c003c0-247d-4d70-8713-57ff3497d4ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.4347866    0.1726566    0.6969167
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.9131511   -2.1599859   -1.6663163
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.4753824   -0.5753277   -0.3754372
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 1.0569668    0.9917465    1.1221872
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -1.6901749   -1.8235759   -1.5567740
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2958635   -0.3404883   -0.2512388
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.8400431    0.8048063    0.8752798
Birth       COHORTS          INDIA                          <48 cm               NA                -1.7332207   -1.7625574   -1.7038840
Birth       COHORTS          INDIA                          [48-50) cm           NA                -0.3387482   -0.3528231   -0.3246732
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.7936282    0.7591267    0.8281297
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -1.6604945   -1.7154830   -1.6055059
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.3385163   -0.3583700   -0.3186626
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.6207796    0.1064005    1.1351587
Birth       EE               PAKISTAN                       <48 cm               NA                -2.5667722   -2.7370743   -2.3964701
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.8476547   -0.9566480   -0.7386614
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4638605    0.3766193    0.5511016
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -1.8572435   -1.9314497   -1.7830373
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.5644256   -0.6143481   -0.5145030
Birth       IRC              INDIA                          >=50 cm              NA                 1.2673955    1.0864839    1.4483071
Birth       IRC              INDIA                          <48 cm               NA                -2.0850949   -2.2905442   -1.8796457
Birth       IRC              INDIA                          [48-50) cm           NA                -0.5321423   -0.5884761   -0.4758086
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.6460311    0.6011441    0.6909181
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -2.0920720   -2.1086476   -2.0754965
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.4827253   -0.4942200   -0.4712307
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.4074511    0.3141476    0.5007546
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0554412   -2.0971525   -2.0137298
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.5884947   -0.6200886   -0.5569007
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.9752157    0.9204918    1.0299395
Birth       Keneba           GAMBIA                         <48 cm               NA                -1.8035608   -1.9235218   -1.6835998
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -0.3582263   -0.3903152   -0.3261373
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.3207960    0.1946698    0.4469223
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -1.9125137   -2.0538564   -1.7711709
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.6996226   -0.7862515   -0.6129938
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.2944620    0.0860592    0.5028648
Birth       MAL-ED           BRAZIL                         <48 cm               NA                -1.9742934   -2.3425974   -1.6059895
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                -0.8374603   -0.9911689   -0.6837516
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.0666667   -0.1235118    0.2568452
Birth       MAL-ED           INDIA                          <48 cm               NA                -2.1210000   -2.4586774   -1.7833226
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.8194444   -0.9860051   -0.6528838
Birth       MAL-ED           NEPAL                          >=50 cm              NA                 0.2687500    0.0580716    0.4794284
Birth       MAL-ED           NEPAL                          <48 cm               NA                -1.6850000   -1.9901516   -1.3798484
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.7100000   -0.9522102   -0.4677898
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.2573281    0.1067732    0.4078829
Birth       MAL-ED           PERU                           <48 cm               NA                -1.7845643   -1.9012440   -1.6678845
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.6557036   -0.7218696   -0.5895375
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.3646964    0.1872117    0.5421811
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.8583831   -2.2269455   -1.4898207
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.7192395   -0.8073653   -0.6311137
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0711442   -0.0914555    0.2337438
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.4113442   -2.7253061   -2.0973822
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.8570197   -0.9554298   -0.7586095
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4928466    0.3757718    0.6099215
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.9644770   -2.0508465   -1.8781075
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.7111726   -0.7600599   -0.6622854
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.3573316    0.2756709    0.4389924
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.8433138   -1.9146208   -1.7720067
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6834111   -0.7280494   -0.6387728
Birth       PROBIT           BELARUS                        >=50 cm              NA                 1.4948390    1.3584846    1.6311934
Birth       PROBIT           BELARUS                        <48 cm               NA                -1.5962836   -1.6365370   -1.5560302
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.3879564   -0.4136965   -0.3622163
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.3009522    0.2054122    0.3964922
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.7731462   -1.8371742   -1.7091181
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.7398616   -0.7861970   -0.6935262
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.9600674    0.4869776    1.4331572
Birth       ResPak           PAKISTAN                       <48 cm               NA                -2.3940014   -2.7088048   -2.0791980
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.7200136   -0.9877460   -0.4522813
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.4130264    0.3455310    0.4805217
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -2.1273082   -2.1994174   -2.0551991
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.6685305   -0.6931748   -0.6438863
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.8383238    0.8149577    0.8616899
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.8461183   -1.8720624   -1.8201742
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4182450   -0.4277204   -0.4087696
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.2143176   -1.9383797   -0.4902556
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -1.5625935   -1.9419276   -1.1832593
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -1.0788839   -1.4867161   -0.6710517
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -1.2310940   -1.3223638   -1.1398242
6 months    COHORTS          GUATEMALA                      <48 cm               NA                -2.6601885   -2.8085915   -2.5117856
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                -2.0583546   -2.1879556   -1.9287537
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.1472077   -0.2014170   -0.0929985
6 months    COHORTS          INDIA                          <48 cm               NA                -1.6147074   -1.6585316   -1.5708832
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.8091843   -0.8486881   -0.7696804
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.6242251   -0.6867068   -0.5617435
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -1.8317960   -1.9122220   -1.7513700
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -1.1829532   -1.2432504   -1.1226559
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.6728292   -0.9664279   -0.3792305
6 months    EE               PAKISTAN                       <48 cm               NA                -2.4911124   -2.6671354   -2.3150894
6 months    EE               PAKISTAN                       [48-50) cm           NA                -1.5917815   -1.8227316   -1.3608315
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.5799317   -0.7550194   -0.4048441
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -1.7434742   -1.8432909   -1.6436575
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1160765   -1.2260835   -1.0060694
6 months    IRC              INDIA                          >=50 cm              NA                -0.7473923   -0.9633629   -0.5314218
6 months    IRC              INDIA                          <48 cm               NA                -1.8573704   -2.1331027   -1.5816381
6 months    IRC              INDIA                          [48-50) cm           NA                -1.2305968   -1.4309309   -1.0302627
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0215121   -0.0920070    0.0489829
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -1.6516953   -1.6762036   -1.6271870
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.6658375   -0.7017991   -0.6298759
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9412187   -1.0159731   -0.8664642
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -1.7701517   -1.8282722   -1.7120312
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.0138271   -1.0862924   -0.9413619
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.5381613   -0.6164195   -0.4599030
6 months    Keneba           GAMBIA                         <48 cm               NA                -1.5141659   -1.6424201   -1.3859117
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -1.1442129   -1.2323388   -1.0560871
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.3550291   -0.5852124   -0.1248459
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -1.6691257   -1.8440519   -1.4941995
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.0322865   -1.1881766   -0.8763963
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.5595981    0.3319545    0.7872417
6 months    MAL-ED           BRAZIL                         <48 cm               NA                -0.6373029   -1.1377360   -0.1368698
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                -0.2288503   -0.7854060    0.3277054
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.4658333   -0.7214587   -0.2102080
6 months    MAL-ED           INDIA                          <48 cm               NA                -1.9712963   -2.3236492   -1.6189433
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -1.5112222   -1.9292582   -1.0931863
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1406250   -0.3527411    0.0714911
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.9272727   -1.3107187   -0.5438267
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.8650000   -1.4941733   -0.2358267
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.6849026   -0.9093648   -0.4604405
6 months    MAL-ED           PERU                           <48 cm               NA                -1.8127593   -1.9885921   -1.6369264
6 months    MAL-ED           PERU                           [48-50) cm           NA                -1.1319673   -1.2979228   -0.9660119
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.6669960   -0.9756911   -0.3583009
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.8629264   -2.4089141   -1.3169388
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.1056841   -1.4125398   -0.7988285
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6705719   -0.9418250   -0.3993187
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -1.9293698   -2.2222277   -1.6365119
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -1.2753132   -1.4991071   -1.0515193
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6363565   -0.8153713   -0.4573417
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -2.0103824   -2.1470000   -1.8737649
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2676643   -1.3767769   -1.1585517
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4068568   -0.5141941   -0.2995195
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.7496731   -1.8564605   -1.6428857
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.1326995   -1.2329890   -1.0324100
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.1781577    0.0819690    0.2743464
6 months    PROBIT           BELARUS                        <48 cm               NA                -1.0686030   -1.1806740   -0.9565320
6 months    PROBIT           BELARUS                        [48-50) cm           NA                -0.6504645   -0.8024223   -0.4985067
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3159356   -0.4483190   -0.1835521
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -1.7214240   -1.8285237   -1.6143242
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.9959432   -1.0890809   -0.9028054
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -1.2396337   -2.1937670   -0.2855005
6 months    ResPak           PAKISTAN                       <48 cm               NA                -2.0644925   -3.0626949   -1.0662901
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                -1.0909570   -2.3968509    0.2149368
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5651429   -0.7583030   -0.3719828
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -1.8790901   -1.9421103   -1.8160699
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.9843791   -1.0800339   -0.8887243
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4613558   -0.5051409   -0.4175708
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.3067965   -1.3524504   -1.2611425
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.8319651   -0.8716099   -0.7923204
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -2.1253329   -2.5567513   -1.6939146
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -2.5614830   -2.7789761   -2.3439899
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -2.4073451   -2.6854623   -2.1292279
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -2.5305407   -2.6474506   -2.4136307
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -3.5309463   -3.7145292   -3.3473634
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -3.1576218   -3.3101170   -3.0051265
24 months   COHORTS          INDIA                          >=50 cm              NA                -1.3986330   -1.4673336   -1.3299324
24 months   COHORTS          INDIA                          <48 cm               NA                -2.6044960   -2.6557252   -2.5532668
24 months   COHORTS          INDIA                          [48-50) cm           NA                -2.0157562   -2.0669407   -1.9645717
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -1.9645560   -2.0344767   -1.8946353
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -2.9561815   -3.0436989   -2.8686642
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -2.4938816   -2.5606977   -2.4270655
24 months   EE               PAKISTAN                       >=50 cm              NA                -1.8518763   -2.2856979   -1.4180548
24 months   EE               PAKISTAN                       <48 cm               NA                -2.8180239   -3.0367692   -2.5992786
24 months   EE               PAKISTAN                       [48-50) cm           NA                -2.5040552   -2.8470361   -2.1610743
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -1.4299547   -1.6419510   -1.2179583
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -2.1595060   -2.2739386   -2.0450733
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.7002727   -1.8385391   -1.5620063
24 months   IRC              INDIA                          >=50 cm              NA                -1.5943026   -1.7573365   -1.4312687
24 months   IRC              INDIA                          <48 cm               NA                -2.1071463   -2.2889371   -1.9253555
24 months   IRC              INDIA                          [48-50) cm           NA                -1.7352030   -1.8855005   -1.5849056
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.1676676   -1.2801208   -1.0552145
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -2.2676889   -2.3002904   -2.2350874
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.5368333   -1.5834156   -1.4902510
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.4836862   -1.5533219   -1.4140504
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -2.0429971   -2.0982671   -1.9877272
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.5502001   -1.6197457   -1.4806545
24 months   Keneba           GAMBIA                         >=50 cm              NA                -1.2861918   -1.3728321   -1.1995516
24 months   Keneba           GAMBIA                         <48 cm               NA                -1.9286582   -2.0603182   -1.7969981
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -1.7479086   -1.8554358   -1.6403814
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4717904   -1.7293801   -1.2142008
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -2.3787694   -2.5795630   -2.1779758
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -1.8690010   -2.0554937   -1.6825084
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.3289502   -0.1233303    0.7812306
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.2778126   -1.0636460    0.5080207
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                -0.3066090   -0.9645260    0.3513080
24 months   MAL-ED           INDIA                          >=50 cm              NA                -1.3825000   -1.7660213   -0.9989787
24 months   MAL-ED           INDIA                          <48 cm               NA                -2.5138889   -2.9435277   -2.0842500
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -2.1410000   -2.4856619   -1.7963381
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -1.0575000   -1.3098335   -0.8051665
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.6331818   -2.2000387   -1.0663249
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -1.9007143   -2.5143042   -1.2871243
24 months   MAL-ED           PERU                           >=50 cm              NA                -1.4042916   -1.6987552   -1.1098281
24 months   MAL-ED           PERU                           <48 cm               NA                -2.0903931   -2.2887778   -1.8920085
24 months   MAL-ED           PERU                           [48-50) cm           NA                -1.5561373   -1.7413523   -1.3709223
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -1.4215110   -1.7810275   -1.0619945
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -1.7118192   -2.1120825   -1.3115558
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -1.6192222   -2.0598928   -1.1785516
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -2.0592635   -2.3469873   -1.7715397
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -2.8604090   -3.1800591   -2.5407588
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -2.6428411   -2.9532667   -2.3324155
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5672542   -1.7702617   -1.3642467
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -2.7738751   -2.9296662   -2.6180840
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -2.0888866   -2.2353781   -1.9423950
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.9357473   -1.0594002   -0.8120944
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.7961225   -1.9309727   -1.6612722
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.4058747   -1.5440216   -1.2677279
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.1140340   -0.4024265    0.1743584
24 months   PROBIT           BELARUS                        <48 cm               NA                -0.5473085   -1.0103084   -0.0843085
24 months   PROBIT           BELARUS                        [48-50) cm           NA                -0.4546560   -0.7426558   -0.1666562
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -1.0155438   -1.1617300   -0.8693576
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -2.1841609   -2.3101302   -2.0581916
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.4406570   -1.5567480   -1.3245660
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1138883   -1.2343991   -0.9933774
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.9002018   -1.9869311   -1.8134725
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.4661351   -1.5585847   -1.3736855


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.2953686   -1.5534398   -1.0372973
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7553052   -1.8330182   -1.6775923
6 months    COHORTS          INDIA                          NA                   NA                -0.9973610   -1.0266429   -0.9680792
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1429137   -1.1848624   -1.1009651
6 months    EE               PAKISTAN                       NA                   NA                -2.1264619   -2.2795142   -1.9734095
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          NA                   NA                -1.2263582   -1.3620220   -1.0906944
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3303469   -1.3544501   -1.3062437
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3464316   -1.3887462   -1.3041170
6 months    Keneba           GAMBIA                         NA                   NA                -0.9034101   -0.9602836   -0.8465366
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2087678   -1.3332048   -1.0843307
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0564689   -0.1983718    0.3113097
6 months    MAL-ED           INDIA                          NA                   NA                -1.5092276   -1.7906712   -1.2277841
6 months    MAL-ED           NEPAL                          NA                   NA                -0.6684615   -0.9484552   -0.3884679
6 months    MAL-ED           PERU                           NA                   NA                -1.2930271   -1.4141974   -1.1718569
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0985125   -1.3092915   -0.8877336
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3305226   -1.5032169   -1.1578283
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4030363   -1.4821426   -1.3239299
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8671231   -0.8928063   -0.8414399
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.4800629   -2.6380751   -2.3220507
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9426964   -3.0309681   -2.8544248
24 months   COHORTS          INDIA                          NA                   NA                -2.1193232   -2.1537519   -2.0848946
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4157330   -2.4606528   -2.3708132
24 months   EE               PAKISTAN                       NA                   NA                -2.6323899   -2.8110257   -2.4537542
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          NA                   NA                -1.7882863   -1.8843577   -1.6922149
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0375014   -2.0671576   -2.0078452
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7719162   -1.8104910   -1.7333415
24 months   Keneba           GAMBIA                         NA                   NA                -1.5564333   -1.6186769   -1.4941898
24 months   MAL-ED           BANGLADESH                     NA                   NA                -2.0004545   -2.1320336   -1.8688755
24 months   MAL-ED           BRAZIL                         NA                   NA                -0.0901587   -0.4299024    0.2495849
24 months   MAL-ED           INDIA                          NA                   NA                -2.1964103   -2.4711826   -1.9216379
24 months   MAL-ED           NEPAL                          NA                   NA                -1.5280769   -1.8563546   -1.1997992
24 months   MAL-ED           PERU                           NA                   NA                -1.7565208   -1.8888943   -1.6241474
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.5850366   -1.8154417   -1.3546316
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5537500   -2.7412414   -2.3662586
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6032245   -1.6608525   -1.5455965


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -2.3479377   -2.7103958   -1.9854796
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.9101691   -1.1921221   -0.6282160
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm           -2.7471418   -2.8972534   -2.5970302
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -1.3528304   -1.4312100   -1.2744507
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm           -2.5732637   -2.6190224   -2.5275050
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm           -1.1787912   -1.2163989   -1.1411836
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -2.4541227   -2.5189291   -2.3893162
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -1.1321446   -1.1716733   -1.0926158
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm           -3.1875518   -3.7298206   -2.6452830
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm           -1.4684343   -1.9945321   -0.9423365
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -2.3211040   -2.4358819   -2.2063261
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -1.0282860   -1.1282267   -0.9283454
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm           -3.3524904   -3.6256867   -3.0792941
Birth       IRC              INDIA                          [48-50) cm           >=50 cm           -1.7995379   -1.9886211   -1.6104546
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -2.7381031   -2.7866292   -2.6895770
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -1.1287564   -1.1745295   -1.0829833
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -2.4628923   -2.5649707   -2.3608138
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.9959458   -1.0960303   -0.8958612
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm           -2.7787765   -2.9107994   -2.6467536
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm           -1.3334419   -1.3965003   -1.2703836
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -2.2333097   -2.4228465   -2.0437728
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -1.0204186   -1.1734472   -0.8673901
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm           -2.2687554   -2.6922567   -1.8452541
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -1.1319223   -1.3994878   -0.8643567
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm           -2.1876667   -2.5752152   -1.8001181
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8861111   -1.1389160   -0.6333063
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -1.9537500   -2.3245638   -1.5829362
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.9787500   -1.2997658   -0.6577342
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm           -2.0418923   -2.2309215   -1.8528632
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.9130316   -1.0763573   -0.7497060
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -2.2230795   -2.6344767   -1.8116824
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -1.0839359   -1.2835173   -0.8843544
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -2.4824883   -2.8358413   -2.1291353
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.9281638   -1.1202344   -0.7360933
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -2.4573236   -2.6022971   -2.3123502
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -1.2040193   -1.3305446   -1.0774940
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -2.2006454   -2.3088985   -2.0923923
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -1.0407427   -1.1335188   -0.9479666
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm           -3.0911226   -3.2471718   -2.9350734
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm           -1.8827954   -2.0197696   -1.7458212
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -2.0740984   -2.1891946   -1.9590021
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -1.0408138   -1.1462657   -0.9353619
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm           -3.3540688   -3.9214585   -2.7866790
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -1.6800810   -2.2296245   -1.1305375
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -2.5403346   -2.6071348   -2.4735343
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -1.0815569   -1.1529197   -1.0101941
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -2.6844421   -2.7194530   -2.6494313
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -1.2565688   -1.2815228   -1.2316148
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.3482758   -1.1676160    0.4710643
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1354338   -0.7008366    0.9717041
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.4290945   -1.6036707   -1.2545183
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.8272606   -0.9848113   -0.6697099
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -1.4674997   -1.5373205   -1.3976789
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6619765   -0.7291071   -0.5948460
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -1.2075708   -1.3093689   -1.1057727
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5587280   -0.6455297   -0.4719264
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -1.8182832   -2.1610988   -1.4754676
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.9189523   -1.2927823   -0.5451224
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -1.1635424   -1.3649557   -0.9621292
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.5361447   -0.7427597   -0.3295298
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm           -1.1099780   -1.4576673   -0.7622888
6 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.4832045   -0.7774861   -0.1889229
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.6301833   -1.7026222   -1.5577444
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.6443254   -0.7212474   -0.5674035
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.8289331   -0.9239790   -0.7338871
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0726085   -0.1736598    0.0284428
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.9760046   -1.1262045   -0.8258048
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.6060517   -0.7238815   -0.4882218
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -1.3140966   -1.6040020   -1.0241911
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.6772573   -0.9555506   -0.3989641
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -1.1969010   -1.7461120   -0.6476899
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.7884484   -1.3913600   -0.1855369
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -1.5054630   -1.9407754   -1.0701505
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -1.0453889   -1.5353872   -0.5553906
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7866477   -1.2248532   -0.3484422
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.7243750   -1.3883421   -0.0604079
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -1.1278566   -1.4128817   -0.8428316
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.4470647   -0.7263822   -0.1677472
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -1.1959305   -1.8306860   -0.5611749
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.4386881   -0.8843782    0.0070019
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -1.2587979   -1.6586748   -0.8589211
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.6047414   -0.9568717   -0.2526110
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.3740259   -1.5991134   -1.1489384
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.6313078   -0.8407575   -0.4218581
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -1.3428163   -1.4945633   -1.1910693
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.7258427   -0.8726509   -0.5790345
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -1.2467607   -1.3641725   -1.1293488
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.8286221   -0.9446657   -0.7125786
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.4054884   -1.5755616   -1.2354153
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.6800076   -0.8415548   -0.5184604
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.8248587   -2.2114578    0.5617403
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.1486767   -1.4821970    1.7795504
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -1.3139472   -1.5431565   -1.0847378
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.4192362   -0.6689208   -0.1695516
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.8454406   -0.9085703   -0.7823110
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3706093   -0.4295683   -0.3116503
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.4361500   -0.9196297    0.0473297
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2820121   -0.7983365    0.2343122
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -1.0004057   -1.2175855   -0.7832258
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.6270811   -0.8182816   -0.4358807
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -1.2058631   -1.2916534   -1.1200727
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.6171232   -0.7028089   -0.5314376
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.9916255   -1.1036854   -0.8795657
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.5293256   -0.6260771   -0.4325740
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.9661476   -1.4500423   -0.4822529
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.6521789   -1.1979693   -0.1063884
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.7295513   -0.9704267   -0.4886759
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2703180   -0.5233818   -0.0172542
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.5128437   -0.7566213   -0.2690661
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.1409004   -0.3627036    0.0809027
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -1.1000213   -1.2155220   -0.9845205
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.3691657   -0.4908813   -0.2474500
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.5593110   -0.6465084   -0.4721135
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0665139   -0.1612786    0.0282507
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.6424663   -0.7990270   -0.4859057
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.4617168   -0.5986704   -0.3247632
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.9069790   -1.2337186   -0.5802394
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.3972106   -0.7126663   -0.0817550
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.6067628   -1.5189620    0.3054365
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.6355592   -1.4354836    0.1643653
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -1.1313889   -1.7073039   -0.5554738
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.7585000   -1.2741359   -0.2428641
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.5756818   -1.1961646    0.0448010
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.8432143   -1.5066635   -0.1797651
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.6861015   -1.0406366   -0.3315664
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1518456   -0.5014014    0.1977101
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.2903082   -0.8282092    0.2475928
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1977112   -0.7671167    0.3716943
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.8011455   -1.2327603   -0.3695307
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.5835776   -1.0075477   -0.1596075
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -1.2066209   -1.4611732   -0.9520687
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.5216324   -0.7704833   -0.2727816
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.8603752   -1.0436792   -0.6770711
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.4701274   -0.6552021   -0.2850527
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.4332744   -0.9299372    0.0633884
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.3406219   -0.6066727   -0.0745712
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -1.1686171   -1.3609350   -0.9762991
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.4251131   -0.6107693   -0.2394569
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.7863135   -0.9342124   -0.6384146
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.3522468   -0.5038612   -0.2006324


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -1.3959823   -1.7051403   -1.0868242
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -0.9272368   -1.0133680   -0.8411056
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.5099392   -1.5497003   -1.4701780
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.0426774   -1.0857658   -0.9995890
Birth       EE               PAKISTAN                       >=50 cm              NA                -2.4816546   -2.9830946   -1.9802145
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.5490185   -1.6568943   -1.4411427
Birth       IRC              INDIA                          >=50 cm              NA                -1.5754368   -1.7619354   -1.3889381
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -2.2354459   -2.2847737   -2.1861181
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.9307419   -2.0301029   -1.8313810
Birth       Keneba           GAMBIA                         >=50 cm              NA                -0.9444120   -1.0091206   -0.8797035
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.4388913   -1.6079728   -1.2698097
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                -0.9704620   -1.2613158   -0.6796082
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2702837   -1.6001173   -0.9404501
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -1.1220833   -1.5037131   -0.7404536
Birth       MAL-ED           PERU                           >=50 cm              NA                -1.1401178   -1.3045797   -0.9756558
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.9964037   -1.2143741   -0.7784333
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -1.2267442   -1.4666106   -0.9868777
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.4238664   -1.5477872   -1.2999455
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.2668262   -1.3610112   -1.1726412
Birth       PROBIT           BELARUS                        >=50 cm              NA                -0.1833973   -0.2230514   -0.1437432
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.1860542   -1.2909854   -1.0811231
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -1.9400674   -2.5483931   -1.3317417
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -1.8444481   -1.9376852   -1.7512110
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3385963   -1.3648679   -1.3123246
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0810509   -0.7558392    0.5937373
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.5242112   -0.6012283   -0.4471941
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.8501533   -0.9010815   -0.7992251
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.5186886   -0.5717625   -0.4656147
6 months    EE               PAKISTAN                       >=50 cm              NA                -1.4536327   -1.7579103   -1.1493550
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.7711221   -0.9337101   -0.6085342
6 months    IRC              INDIA                          >=50 cm              NA                -0.4789658   -0.6579678   -0.2999639
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.3088348   -1.3772697   -1.2404000
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.4052129   -0.4702892   -0.3401367
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.3652488   -0.4223369   -0.3081607
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.8537386   -1.0762567   -0.6312205
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.5031292   -0.7638773   -0.2423810
6 months    MAL-ED           INDIA                          >=50 cm              NA                -1.0433943   -1.3884372   -0.6983515
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.5278365   -0.8371932   -0.2184799
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.6081245   -0.8139250   -0.4023240
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4315166   -0.7166090   -0.1464241
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.6599507   -0.9177550   -0.4021465
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.7729179   -0.9330539   -0.6127820
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.7918215   -0.8986750   -0.6849680
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0801503   -0.0964167   -0.0638839
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.7757559   -0.8977167   -0.6537952
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.4681113   -1.3824673    0.4462446
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.8378933   -1.0320430   -0.6437437
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4057673   -0.4437448   -0.3677898
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3547299   -0.7557856    0.0463258
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.4121558   -0.5057947   -0.3185168
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.7206903   -0.7830162   -0.6583643
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4511770   -0.5089939   -0.3933600
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.7805136   -1.2147894   -0.3462378
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.4565340   -0.6482705   -0.2647975
24 months   IRC              INDIA                          >=50 cm              NA                -0.1939837   -0.3234117   -0.0645557
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.8698338   -0.9777462   -0.7619213
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.2882301   -0.3475545   -0.2289056
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.2702415   -0.3322967   -0.2081863
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.5286641   -0.7651610   -0.2921672
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.4191089   -0.7897240   -0.0484937
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.8139103   -1.2350164   -0.3928041
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4705769   -0.8342465   -0.1069074
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.3522292   -0.6145615   -0.0898969
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1635257   -0.4739443    0.1468929
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.4944865   -0.7653316   -0.2236414
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6596077   -0.8388733   -0.4803421
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.5055173   -0.6269922   -0.3840424
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0302551   -0.0555015   -0.0050087
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.5868783   -0.7204477   -0.4533089
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4893363   -0.5996578   -0.3790147
