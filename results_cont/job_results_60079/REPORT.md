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
![](/tmp/1a2a46dd-1ee0-4d79-9c05-047390ddd266/f21c10d7-ec2e-4d8d-8c62-0756572f73fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1a2a46dd-1ee0-4d79-9c05-047390ddd266/f21c10d7-ec2e-4d8d-8c62-0756572f73fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1a2a46dd-1ee0-4d79-9c05-047390ddd266/f21c10d7-ec2e-4d8d-8c62-0756572f73fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2463892   -0.8634083    0.3706300
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.2141882   -0.8419045    0.4135282
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7260506   -1.0900223   -0.3620790
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -1.4514965   -1.5761671   -1.3268259
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -0.2433826   -0.5144826    0.0277173
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8605216   -1.0394628   -0.6815805
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.2356419   -1.2949246   -1.1763592
Birth       COHORTS          INDIA                          <48 cm               NA                -0.7707746   -0.8212599   -0.7202893
Birth       COHORTS          INDIA                          [48-50) cm           NA                -1.0463220   -1.0927168   -0.9999271
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1224220   -1.1929453   -1.0518987
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -0.3526877   -0.4570125   -0.2483629
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5866948   -0.6554602   -0.5179294
Birth       EE               PAKISTAN                       >=50 cm              NA                -0.7851852   -1.4439694   -0.1264010
Birth       EE               PAKISTAN                       <48 cm               NA                -0.2040576   -0.4471992    0.0390839
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.3966958   -0.7425579   -0.0508338
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3666771   -1.5605685   -1.1727858
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -0.9794651   -1.1113513   -0.8475789
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1902730   -1.3300797   -1.0504664
Birth       IRC              INDIA                          >=50 cm              NA                -2.0223400   -2.3127415   -1.7319386
Birth       IRC              INDIA                          <48 cm               NA                -0.1874233   -0.5576705    0.1828239
Birth       IRC              INDIA                          [48-50) cm           NA                -0.6215175   -0.8751714   -0.3678636
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.0714463   -1.1305009   -1.0123916
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -0.7236687   -0.7461411   -0.7011963
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.8454946   -0.8783552   -0.8126341
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9377642   -1.1755888   -0.6999397
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -0.6422840   -0.7077848   -0.5767831
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.7303622   -0.8264587   -0.6342658
Birth       Keneba           GAMBIA                         >=50 cm              NA                -1.5932106   -1.6754645   -1.5109568
Birth       Keneba           GAMBIA                         <48 cm               NA                -0.5862396   -0.7471311   -0.4253481
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -1.0080817   -1.1076233   -0.9085401
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.1694392   -1.5379248   -0.8009536
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -0.8969669   -1.1191276   -0.6748061
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.9142686   -1.1480673   -0.6804700
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.2704502   -0.1524909    0.6933914
Birth       MAL-ED           BRAZIL                         <48 cm               NA                 0.6181309   -0.0941862    1.3304479
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1996807   -0.4334176    0.8327790
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       MAL-ED           INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       MAL-ED           NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       MAL-ED           PERU                           >=50 cm              NA                -0.1271484   -0.3786562    0.1243594
Birth       MAL-ED           PERU                           <48 cm               NA                 0.0826697   -0.1335352    0.2988747
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.0800831   -0.2645207    0.1043546
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.3238150   -0.6886952    0.0410651
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2547369   -0.1962256    0.7056995
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.3835095   -0.7098034   -0.0572156
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.6027553    0.2891182    0.9163923
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.1704714    0.7362154    1.6047274
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.7958736    0.5207963    1.0709509
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5742934   -1.7613211   -1.3872656
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2901118   -1.4565298   -1.1236938
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2664612   -1.4075294   -1.1253931
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.4695808   -1.6293946   -1.3097670
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.0939486   -1.2326203   -0.9552769
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.2465734   -1.3846992   -1.1084475
Birth       PROBIT           BELARUS                        >=50 cm              NA                -1.2036201   -1.4168427   -0.9903975
Birth       PROBIT           BELARUS                        <48 cm               NA                 0.0805627   -0.0148874    0.1760129
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.6819782   -0.8795485   -0.4844079
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.3465075   -1.5036752   -1.1893398
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.3366334   -1.4680319   -1.2052348
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.2454354   -1.3673614   -1.1235094
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -0.9930691   -1.5980385   -0.3880997
Birth       ResPak           PAKISTAN                       <48 cm               NA                -0.0404788   -1.0216395    0.9406818
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.0896895   -0.7992887    0.6199097
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -0.9445078   -1.2513269   -0.6376887
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -0.5857132   -0.8168786   -0.3545478
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.7154350   -0.8081278   -0.6227423
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1313055   -1.1750122   -1.0875987
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0495501   -0.0010013    0.1001014
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4489925   -0.4867459   -0.4112392
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1314228   -1.0624881    1.3253336
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5328634   -0.9528608   -0.1128661
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6110360   -0.9766030   -0.2454691
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.2780659    0.1624444    0.3936875
6 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.0821138   -0.1355996    0.2998271
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2062838    0.0404111    0.3721565
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.4778138   -0.5366868   -0.4189409
6 months    COHORTS          INDIA                          <48 cm               NA                -0.8445176   -0.8912193   -0.7978158
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.6569340   -0.7048324   -0.6090356
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2510009   -0.3177774   -0.1842244
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -0.3595507   -0.4452461   -0.2738554
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2937424   -0.3621637   -0.2253211
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.8105624   -1.3330738   -0.2880510
6 months    EE               PAKISTAN                       <48 cm               NA                -0.9127714   -1.0719810   -0.7535618
6 months    EE               PAKISTAN                       [48-50) cm           NA                -0.6884102   -0.9863507   -0.3904697
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3215813   -0.5428125   -0.1003500
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -0.6917894   -0.8105459   -0.5730330
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6294512   -0.7828309   -0.4760715
6 months    IRC              INDIA                          >=50 cm              NA                -0.6844513   -0.8997464   -0.4691563
6 months    IRC              INDIA                          <48 cm               NA                -0.4924868   -0.7696644   -0.2153092
6 months    IRC              INDIA                          [48-50) cm           NA                -0.6779977   -0.9246481   -0.4313474
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.4953160   -0.5763429   -0.4142892
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -0.6396377   -0.6640712   -0.6152043
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.5418684   -0.5822305   -0.5015064
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.3427755   -0.4200239   -0.2655271
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -0.4072049   -0.4732491   -0.3411606
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.3621819   -0.4422223   -0.2821414
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.1562634   -0.2416484   -0.0708784
6 months    Keneba           GAMBIA                         <48 cm               NA                -0.1863392   -0.3291883   -0.0434902
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -0.2600008   -0.3779015   -0.1421001
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0501910   -0.3653461    0.4657281
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -0.2939696   -0.4629639   -0.1249752
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0423451   -0.2807388    0.1960486
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 1.0934793    0.6640506    1.5229080
6 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.6401877   -0.0059849    1.2863603
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.9017830    0.1364244    1.6671417
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    MAL-ED           INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    MAL-ED           PERU                           >=50 cm              NA                 1.1691422    0.8707383    1.4675461
6 months    MAL-ED           PERU                           <48 cm               NA                 1.0415613    0.7957269    1.2873958
6 months    MAL-ED           PERU                           [48-50) cm           NA                 1.0393188    0.8307812    1.2478563
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5742915    0.1400745    1.0085084
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 1.0751088    0.5390198    1.6111978
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0659058   -0.4701034    0.3382919
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8678352    0.4497902    1.2858803
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2984719    0.0176450    0.5792987
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4828689    0.2159212    0.7498166
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3190325   -0.5181238   -0.1199412
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5509381   -0.7033468   -0.3985293
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4747062   -0.6120402   -0.3373723
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1183933   -0.0436257    0.2804123
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0258869   -0.1099758    0.1617495
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0161880   -0.1391042    0.1067282
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.5827851    0.5224935    0.6430768
6 months    PROBIT           BELARUS                        <48 cm               NA                 0.5600717    0.4510616    0.6690817
6 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.4856143    0.3778476    0.5933811
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1361622   -0.0408055    0.3131298
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -0.4775119   -0.6135285   -0.3414954
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.1623364   -0.2885963   -0.0360765
6 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.1845769   -0.4373007    0.8064546
6 months    ResPak           PAKISTAN                       <48 cm               NA                 0.3156816   -0.2065653    0.8379285
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.0477911   -0.9933606    1.0889428
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5396605   -0.7240904   -0.3552306
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -0.7379995   -0.8785741   -0.5974250
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.5984527   -0.7480156   -0.4488899
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3960111    0.3483475    0.4436748
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2329232    0.1856207    0.2802257
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3036200    0.2621887    0.3450513
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1061178   -0.5846996    0.3724639
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6641393   -0.9251962   -0.4030824
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3750746   -0.6670777   -0.0830715
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0613695   -0.1604147    0.0376756
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.4617167   -0.6459183   -0.2775152
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2311051   -0.3521213   -0.1100888
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.2968884   -0.3588710   -0.2349057
24 months   COHORTS          INDIA                          <48 cm               NA                -0.7946227   -0.8402312   -0.7490142
24 months   COHORTS          INDIA                          [48-50) cm           NA                -0.5556076   -0.6028383   -0.5083768
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4497894   -0.5070305   -0.3925483
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -0.8482574   -0.9229731   -0.7735416
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6050976   -0.6652102   -0.5449849
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.3973021   -0.9329517    0.1383475
24 months   EE               PAKISTAN                       <48 cm               NA                -1.0838810   -1.3047147   -0.8630474
24 months   EE               PAKISTAN                       [48-50) cm           NA                -0.9655836   -1.3544449   -0.5767223
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8543473   -1.0786027   -0.6300920
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -1.2570319   -1.3769221   -1.1371417
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1385902   -1.3040133   -0.9731670
24 months   IRC              INDIA                          >=50 cm              NA                -0.6372160   -0.7958148   -0.4786171
24 months   IRC              INDIA                          <48 cm               NA                -0.8946067   -1.0658734   -0.7233400
24 months   IRC              INDIA                          [48-50) cm           NA                -0.7111758   -0.8708247   -0.5515270
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.9263818   -1.0484477   -0.8043159
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -1.3921581   -1.4216465   -1.3626697
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.1252793   -1.1738886   -1.0766699
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.1068059   -1.1752752   -1.0383366
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -1.3529284   -1.4036284   -1.3022284
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.1524409   -1.2222606   -1.0826213
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.6725408   -0.7555530   -0.5895285
24 months   Keneba           GAMBIA                         <48 cm               NA                -0.9213456   -1.0667670   -0.7759242
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.9044833   -1.0135766   -0.7953900
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.5929382   -0.9223289   -0.2635476
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -1.0546152   -1.2323770   -0.8768534
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.7583880   -0.9646318   -0.5521443
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.4928581    0.0527915    0.9329247
24 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0477588   -0.9127535    1.0082711
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3372008   -0.6560367    1.3304384
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   MAL-ED           INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.5555070    0.2255786    0.8854354
24 months   MAL-ED           PERU                           <48 cm               NA                -0.1315645   -0.3780597    0.1149307
24 months   MAL-ED           PERU                           [48-50) cm           NA                 0.0251843   -0.1884838    0.2388524
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5806284    0.3090391    0.8522178
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.7828370    0.3412997    1.2243743
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2675170   -0.0337531    0.5687871
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3832230   -0.0000382    0.7664841
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0973518   -0.4751158    0.2804122
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0663574   -0.3380119    0.2052972
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6479580   -0.8252264   -0.4706895
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9638225   -1.1383313   -0.7893137
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9924838   -1.1600390   -0.8249285
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.4171559   -0.6090200   -0.2252917
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.7308336   -0.8742659   -0.5874013
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.5944500   -0.7532926   -0.4356073
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.7219104    0.6081534    0.8356674
24 months   PROBIT           BELARUS                        <48 cm               NA                 0.5195185    0.1915220    0.8475151
24 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.4418309    0.2796084    0.6040533
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.6283362   -0.8135980   -0.4430743
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -1.1837547   -1.3082232   -1.0592862
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.8045477   -0.9396374   -0.6694580
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3479024   -1.6563416   -1.0394631
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0789453   -1.2030333   -0.9548572
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3267716   -1.5270191   -1.1265241


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4931429   -0.7890257   -0.1972601
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.2193904    0.1338361    0.3049448
6 months    COHORTS          INDIA                          NA                   NA                -0.6983940   -0.7275858   -0.6692022
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2943461   -0.3357404   -0.2529517
6 months    EE               PAKISTAN                       NA                   NA                -0.8527871   -0.9897809   -0.7157933
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          NA                   NA                -0.6409340   -0.7788045   -0.5030635
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.6072473   -0.6281750   -0.5863195
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3757033   -0.4185197   -0.3328869
6 months    Keneba           GAMBIA                         NA                   NA                -0.1974657   -0.2592285   -0.1357029
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1458294   -0.2842227   -0.0074361
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.8580508    0.5394364    1.1766653
6 months    MAL-ED           INDIA                          NA                   NA                -0.6644715   -0.9812646   -0.3476785
6 months    MAL-ED           NEPAL                          NA                   NA                -0.4072436   -0.7125541   -0.1019331
6 months    MAL-ED           PERU                           NA                   NA                 1.0510698    0.9102569    1.1918826
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4017921    0.1396820    0.6639023
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5110593    0.3321196    0.6899991
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6674924   -0.8047012   -0.5302836
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3089671    0.2831612    0.3347730
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4529088   -0.6339053   -0.2719123
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2016312   -0.2740358   -0.1292266
24 months   COHORTS          INDIA                          NA                   NA                -0.5945743   -0.6244188   -0.5647299
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6103189   -0.6471371   -0.5735006
24 months   EE               PAKISTAN                       NA                   NA                -0.9929439   -1.1707082   -0.8151796
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          NA                   NA                -0.7536624   -0.8467166   -0.6606082
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.3046571   -1.3299587   -1.2793555
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2411122   -1.2752162   -1.2070083
24 months   Keneba           GAMBIA                         NA                   NA                -0.7949018   -0.8551887   -0.7346150
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8296257   -0.9583167   -0.7009347
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.2347222   -0.1702799    0.6397243
24 months   MAL-ED           INDIA                          NA                   NA                -1.1144872   -1.3842438   -0.8447305
24 months   MAL-ED           NEPAL                          NA                   NA                -0.8921154   -1.1547051   -0.6295257
24 months   MAL-ED           PERU                           NA                   NA                 0.0490417   -0.0909855    0.1890689
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3919414    0.2031981    0.5806847
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1324519   -0.0568428    0.3217466
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1803052   -1.2806626   -1.0799477


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0322010   -0.8509038    0.9153058
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.4796615   -1.1994631    0.2401402
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2081139    0.9100837    1.5061440
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5909749    0.3730283    0.8089214
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm            0.4648673    0.3871559    0.5425786
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1893199    0.1141701    0.2644698
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7697344    0.6445040    0.8949647
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5357273    0.4378269    0.6336276
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm            0.5811276   -0.1213144    1.2835695
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3884894   -0.3553178    1.1322965
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3872121    0.1531490    0.6212751
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1764041   -0.0616296    0.4144378
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm            1.8349167    1.3636875    2.3061459
Birth       IRC              INDIA                          [48-50) cm           >=50 cm            1.4008226    1.0135044    1.7881407
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.3477776    0.2860117    0.4095435
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.2259516    0.1601376    0.2917657
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.2954802    0.0482878    0.5426727
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.2074020   -0.0490659    0.4638699
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm            1.0069710    0.8264829    1.1874592
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5851289    0.4563909    0.7138670
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.2724724   -0.1603766    0.7053213
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.2551706   -0.1824769    0.6928181
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.3476806   -0.4857653    1.1811265
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0707696   -0.8403102    0.6987711
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm            0.2098181   -0.1278027    0.5474390
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0470653   -0.2663115    0.3604422
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.5785520   -0.0009461    1.1580500
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0596944   -0.5474071    0.4280182
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.5677161    0.0255686    1.1098637
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1931183   -0.2207881    0.6070248
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2841815    0.0342294    0.5341337
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.3078321    0.0737009    0.5419634
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.3756322    0.1638219    0.5874425
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.2230075    0.0124210    0.4335940
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm            1.2841828    1.0566136    1.5117521
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.5216419    0.2965259    0.7467580
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0098741   -0.1949914    0.2147396
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.1010721   -0.0977620    0.2999061
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm            0.9525903   -0.2163934    2.1215740
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.9033796   -0.0197822    1.8265415
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.3587947    0.1922425    0.5253468
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.2290728   -0.0061450    0.4642906
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1808556    1.1141681    1.2475430
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6823129    0.6248195    0.7398064
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6642862   -1.9337373    0.6051648
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.7424588   -1.9934970    0.5085794
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1959522   -0.4424267    0.0505223
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0717822   -0.2740629    0.1304985
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.3667037   -0.4417692   -0.2916382
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1791202   -0.2548783   -0.1033621
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1085498   -0.2171895    0.0000899
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0427415   -0.1384490    0.0529660
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -0.1022090   -0.6492868    0.4448688
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1221522   -0.4802079    0.7245122
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3702081   -0.6212098   -0.1192065
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3078699   -0.5770865   -0.0386534
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm            0.1919645   -0.1591828    0.5431118
6 months    IRC              INDIA                          [48-50) cm           >=50 cm            0.0064536   -0.3245384    0.3374455
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.1443217   -0.2277341   -0.0609093
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0465524   -0.1348016    0.0416967
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0644294   -0.1646386    0.0357798
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0194064   -0.1274742    0.0886614
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0300758   -0.1962835    0.1361319
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1037374   -0.2490855    0.0416106
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.3441605   -0.7931486    0.1048276
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0925361   -0.5719177    0.3868456
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.4532916   -1.2305949    0.3240116
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1916963   -1.0924680    0.7090754
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.1275809   -0.5152248    0.2600630
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1298235   -0.4937115    0.2340645
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.5008174   -0.1840100    1.1856447
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6401972   -1.2331681   -0.0472263
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5693634   -1.0740180   -0.0647087
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3849664   -0.8827627    0.1128300
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2319056   -0.4821410    0.0183298
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1556737   -0.3964944    0.0851470
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0925065   -0.3035996    0.1185866
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1345814   -0.3380442    0.0688815
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0227135   -0.1350867    0.0896598
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0971708   -0.1886565   -0.0056852
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.6136741   -0.8377006   -0.3896476
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.2984986   -0.5161236   -0.0808736
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1311047   -0.6888648    0.9510741
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.1367859   -1.3619825    1.0884108
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.1983390   -0.2933676   -0.1033105
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0587922   -0.2012629    0.0836784
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1630880   -0.2302422   -0.0959338
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0923912   -0.1555237   -0.0292587
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.5580215   -1.1038683   -0.0121747
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2689567   -0.8307254    0.2928119
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.4003472   -0.6096037   -0.1910908
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1697356   -0.3263395   -0.0131317
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -0.4977343   -0.5742494   -0.4212192
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2587192   -0.3361478   -0.1812906
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.3984680   -0.4925375   -0.3043985
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1553082   -0.2382711   -0.0723452
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.6865789   -1.2671775   -0.1059802
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.5682815   -1.2311010    0.0945380
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4026846   -0.6571979   -0.1481714
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.2842429   -0.5658395   -0.0026462
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.2573907   -0.4928601   -0.0219214
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0739599   -0.2974562    0.1495364
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.4657763   -0.5922788   -0.3392738
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.1988975   -0.3292450   -0.0685499
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.2461225   -0.3311405   -0.1611045
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0456351   -0.1450452    0.0537750
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2488049   -0.4163085   -0.0813013
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2319425   -0.3690911   -0.0947940
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.4616769   -0.8367888   -0.0865650
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.1654498   -0.5536491    0.2227496
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.4450993   -1.4890743    0.5988757
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1556573   -1.2562814    0.9449668
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.6870715   -1.1087268   -0.2654162
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.5303227   -0.9328475   -0.1277979
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.2022086   -0.3262026    0.7306197
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3131115   -0.7225589    0.0963360
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.4805747   -1.0299724    0.0688229
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.4495803   -0.9236617    0.0245010
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3158645   -0.5649647   -0.0667643
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3445258   -0.5891413   -0.0999103
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.3136777   -0.5527960   -0.0745594
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1772941   -0.4240062    0.0694180
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2023919   -0.5219889    0.1172051
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2800796   -0.4453818   -0.1147773
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5554186   -0.7786977   -0.3321394
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.1762115   -0.4054108    0.0529877
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2689571   -0.0635196    0.6014338
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0211308   -0.3467364    0.3889979


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2184364   -0.8301930    0.3933202
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 0.3893536    0.2932714    0.4854359
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.2508962    0.1974027    0.3043898
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3796970    0.3225355    0.4368584
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.4518801   -0.1669431    1.0707033
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2502341    0.0717847    0.4286835
Birth       IRC              INDIA                          >=50 cm              NA                 1.0117569    0.7634903    1.2600236
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.2936190    0.2373010    0.3499370
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2491373    0.0225558    0.4757188
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.3588489    0.2972560    0.4204417
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2275788   -0.1037777    0.5589352
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.1324530   -0.2079015    0.4728074
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.0751309   -0.1531449    0.3034066
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1312317   -0.1624357    0.4248991
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1596795   -0.1268344    0.4461934
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2243716    0.0591922    0.3895511
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2254295    0.0808441    0.3700148
Birth       PROBIT           BELARUS                        >=50 cm              NA                 0.0544419    0.0296588    0.0792250
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0480488   -0.0920985    0.1881962
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.6267533    0.0935513    1.1599554
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2744625    0.1120072    0.4369178
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.6158158    0.5782509    0.6533807
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.6245656   -1.6727050    0.4235737
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.0586755   -0.1432167    0.0258656
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.2205802   -0.2738466   -0.1673138
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0433452   -0.0975761    0.0108858
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.0422247   -0.5289072    0.4444577
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2811037   -0.4817074   -0.0805001
6 months    IRC              INDIA                          >=50 cm              NA                 0.0435173   -0.1386911    0.2257257
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.1119313   -0.1892668   -0.0345957
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0329278   -0.0999796    0.0341240
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0412023   -0.1033192    0.0209146
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1960204   -0.5538457    0.1618050
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.2354285   -0.6050186    0.1341616
6 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.1180725   -0.3811248    0.1449798
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1724993   -0.5330849    0.1880863
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3567759   -0.7043084   -0.0092435
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1446435   -0.3163828    0.0270958
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0886311   -0.2318093    0.0545471
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0086752   -0.0177448    0.0003944
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3352528   -0.4900681   -0.1804376
6 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0330701   -0.5608399    0.6269802
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.1278319   -0.2235222   -0.0321417
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0870441   -0.1276313   -0.0464568
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3467910   -0.7960854    0.1025035
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.1402617   -0.2177114   -0.0628120
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.2976860   -0.3524503   -0.2429217
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1605295   -0.2077826   -0.1132764
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.5956418   -1.1190889   -0.0721947
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2793427   -0.4835985   -0.0750868
24 months   IRC              INDIA                          >=50 cm              NA                -0.1164464   -0.2434961    0.0106032
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.3782753   -0.4966063   -0.2599442
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.1343063   -0.1934857   -0.0751270
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.1223611   -0.1829261   -0.0617960
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.2366874   -0.5187537    0.0453789
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.2581359   -0.6980043    0.1817325
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.5064653   -0.8192885   -0.1936421
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1886870   -0.4385830    0.0612089
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2507710   -0.5956068    0.0940648
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2589871   -0.4231690   -0.0948053
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.1931943   -0.3574047   -0.0289840
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0237698   -0.0428859   -0.0046536
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.2645309   -0.4251596   -0.1039021
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1675972   -0.1292208    0.4644153
