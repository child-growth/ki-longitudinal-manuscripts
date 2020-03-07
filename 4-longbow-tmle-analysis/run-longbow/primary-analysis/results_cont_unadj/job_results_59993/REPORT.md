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

unadjusted

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
![](/tmp/c6995e07-9bbb-41e2-ad49-42ea5700b4ee/c5251f5f-6a61-4ffe-82f7-d65ef34b1302/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c6995e07-9bbb-41e2-ad49-42ea5700b4ee/c5251f5f-6a61-4ffe-82f7-d65ef34b1302/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c6995e07-9bbb-41e2-ad49-42ea5700b4ee/c5251f5f-6a61-4ffe-82f7-d65ef34b1302/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3384615   -0.8818955    0.2049724
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.1471212   -0.7495108    0.4552684
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.7680000   -1.1128570   -0.4231430
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                -1.4448232   -1.5718248   -1.3178216
Birth       COHORTS          GUATEMALA                      <48 cm               NA                -0.2734091   -0.5286876   -0.0181306
Birth       COHORTS          GUATEMALA                      [48-50) cm           NA                -0.8541228   -1.0289048   -0.6793408
Birth       COHORTS          INDIA                          >=50 cm              NA                -1.2200356   -1.2783658   -1.1617054
Birth       COHORTS          INDIA                          <48 cm               NA                -0.7811088   -0.8314490   -0.7307685
Birth       COHORTS          INDIA                          [48-50) cm           NA                -1.0459425   -1.0919794   -0.9999056
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                -1.1170090   -1.1879177   -1.0461003
Birth       COHORTS          PHILIPPINES                    <48 cm               NA                -0.3857143   -0.4917023   -0.2797263
Birth       COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.5818805   -0.6503863   -0.5133747
Birth       EE               PAKISTAN                       >=50 cm              NA                -0.8554762   -1.4095415   -0.3014109
Birth       EE               PAKISTAN                       <48 cm               NA                -0.2100980   -0.4510886    0.0308925
Birth       EE               PAKISTAN                       [48-50) cm           NA                -0.3629630   -0.7021837   -0.0237423
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                -1.3596491   -1.5536959   -1.1656024
Birth       GMS-Nepal        NEPAL                          <48 cm               NA                -0.9884639   -1.1202790   -0.8566489
Birth       GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1794231   -1.3191089   -1.0397373
Birth       IRC              INDIA                          >=50 cm              NA                -2.0526667   -2.3371437   -1.7681896
Birth       IRC              INDIA                          <48 cm               NA                -0.1867816   -0.5436225    0.1700593
Birth       IRC              INDIA                          [48-50) cm           NA                -0.6180882   -0.8687692   -0.3674072
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                -1.0489622   -1.1138514   -0.9840730
Birth       JiVitA-3         BANGLADESH                     <48 cm               NA                -0.7277078   -0.7499287   -0.7054870
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.8268478   -0.8584941   -0.7952015
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.9480337   -1.1833717   -0.7126957
Birth       JiVitA-4         BANGLADESH                     <48 cm               NA                -0.6328379   -0.6978100   -0.5678659
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.7389466   -0.8330729   -0.6448204
Birth       Keneba           GAMBIA                         >=50 cm              NA                -1.5854755   -1.6684173   -1.5025338
Birth       Keneba           GAMBIA                         <48 cm               NA                -0.5988125   -0.7586614   -0.4389636
Birth       Keneba           GAMBIA                         [48-50) cm           NA                -1.0178221   -1.1165278   -0.9191164
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                -1.1580769   -1.5150308   -0.8011231
Birth       MAL-ED           BANGLADESH                     <48 cm               NA                -0.8800515   -1.0956250   -0.6644781
Birth       MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.9110127   -1.1422529   -0.6797724
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.3166667   -0.0905229    0.7238563
Birth       MAL-ED           BRAZIL                         <48 cm               NA                 0.7164286    0.0031725    1.4296846
Birth       MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3027778   -0.3089596    0.9145152
Birth       MAL-ED           INDIA                          >=50 cm              NA                -1.2755556   -1.7237003   -0.8274108
Birth       MAL-ED           INDIA                          <48 cm               NA                -1.1033333   -1.5325846   -0.6740821
Birth       MAL-ED           INDIA                          [48-50) cm           NA                -0.5900000   -1.0271837   -0.1528163
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.7287500   -1.3613469   -0.0961531
Birth       MAL-ED           NEPAL                          <48 cm               NA                -0.9354545   -1.5903488   -0.2805603
Birth       MAL-ED           NEPAL                          [48-50) cm           NA                -0.5514286   -0.9073681   -0.1954890
Birth       MAL-ED           PERU                           >=50 cm              NA                -0.1398077   -0.3678968    0.0882814
Birth       MAL-ED           PERU                           <48 cm               NA                 0.0213253   -0.1899537    0.2326043
Birth       MAL-ED           PERU                           [48-50) cm           NA                -0.0683871   -0.2556868    0.1189126
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.3727907   -0.7315077   -0.0140737
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2293548   -0.1948297    0.6535394
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.3084783   -0.6249328    0.0079763
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4646875    0.1612226    0.7681524
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 1.0393750    0.6232596    1.4554904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.7754902    0.5036867    1.0472937
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                -1.5792279   -1.7668280   -1.3916279
Birth       NIH-Birth        BANGLADESH                     <48 cm               NA                -1.2909005   -1.4575347   -1.1242662
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           NA                -1.2677632   -1.4086436   -1.1268827
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                -1.5033125   -1.6662814   -1.3403436
Birth       NIH-Crypto       BANGLADESH                     <48 cm               NA                -1.0987079   -1.2354652   -0.9619506
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -1.2347500   -1.3706222   -1.0988778
Birth       PROBIT           BELARUS                        >=50 cm              NA                -1.1986147   -1.4120671   -0.9851623
Birth       PROBIT           BELARUS                        <48 cm               NA                 0.0615000   -0.0379858    0.1609858
Birth       PROBIT           BELARUS                        [48-50) cm           NA                -0.7462500   -0.9360770   -0.5564230
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                -1.3388430   -1.4935129   -1.1841730
Birth       PROVIDE          BANGLADESH                     <48 cm               NA                -1.3443915   -1.4760874   -1.2126956
Birth       PROVIDE          BANGLADESH                     [48-50) cm           NA                -1.2373423   -1.3560777   -1.1186069
Birth       ResPak           PAKISTAN                       >=50 cm              NA                -0.9066667   -1.5718761   -0.2414573
Birth       ResPak           PAKISTAN                       <48 cm               NA                -0.1366667   -0.8630622    0.5897288
Birth       ResPak           PAKISTAN                       [48-50) cm           NA                -0.1000000   -0.7092410    0.5092410
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                -0.8902586   -1.1913426   -0.5891746
Birth       SAS-CompFeed     INDIA                          <48 cm               NA                -0.5920169   -0.8101687   -0.3738652
Birth       SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.7216625   -0.8221177   -0.6212072
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.1038929   -1.1477142   -1.0600717
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0370915   -0.0121682    0.0863511
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.4511025   -0.4885336   -0.4136714
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0671875   -1.0763704    1.2107454
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.5599660   -0.9691919   -0.1507400
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.6354167   -0.9932456   -0.2775877
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.2649003    0.1493035    0.3804971
6 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.1079851   -0.1033040    0.3192742
6 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2142647    0.0578908    0.3706386
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.4673439   -0.5262994   -0.4083883
6 months    COHORTS          INDIA                          <48 cm               NA                -0.8612505   -0.9075675   -0.8149335
6 months    COHORTS          INDIA                          [48-50) cm           NA                -0.6523910   -0.6998240   -0.6049581
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.2488473   -0.3151786   -0.1825161
6 months    COHORTS          PHILIPPINES                    <48 cm               NA                -0.3546233   -0.4399312   -0.2693155
6 months    COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.2984027   -0.3656506   -0.2311548
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.8192361   -1.3484462   -0.2900260
6 months    EE               PAKISTAN                       <48 cm               NA                -0.9158128   -1.0751057   -0.7565198
6 months    EE               PAKISTAN                       [48-50) cm           NA                -0.6719231   -0.9614525   -0.3823936
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3153646   -0.5292845   -0.1014447
6 months    GMS-Nepal        NEPAL                          <48 cm               NA                -0.6759403   -0.7932222   -0.5586584
6 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.6371832   -0.7910594   -0.4833071
6 months    IRC              INDIA                          >=50 cm              NA                -0.6904728   -0.8981637   -0.4827819
6 months    IRC              INDIA                          <48 cm               NA                -0.4933030   -0.7635304   -0.2230757
6 months    IRC              INDIA                          [48-50) cm           NA                -0.7079952   -0.9507479   -0.4652424
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.4586199   -0.5419342   -0.3753055
6 months    JiVitA-3         BANGLADESH                     <48 cm               NA                -0.6443688   -0.6682955   -0.6204420
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.5334037   -0.5737532   -0.4930542
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.3209582   -0.3945726   -0.2473438
6 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -0.4180384   -0.4820800   -0.3539968
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.3543122   -0.4292921   -0.2793324
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.1615851   -0.2462551   -0.0769151
6 months    Keneba           GAMBIA                         <48 cm               NA                -0.1770000   -0.3185296   -0.0354704
6 months    Keneba           GAMBIA                         [48-50) cm           NA                -0.2641632   -0.3794730   -0.1488535
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0439744   -0.3724803    0.4604290
6 months    MAL-ED           BANGLADESH                     <48 cm               NA                -0.3008673   -0.4681029   -0.1336318
6 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0405405   -0.2756215    0.1945404
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.9975000    0.6055078    1.3894922
6 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.6053333   -0.0384359    1.2491026
6 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.8509375    0.1280328    1.5738422
6 months    MAL-ED           INDIA                          >=50 cm              NA                -0.7502083   -1.4517037   -0.0487129
6 months    MAL-ED           INDIA                          <48 cm               NA                -0.5703704   -1.0696501   -0.0710906
6 months    MAL-ED           INDIA                          [48-50) cm           NA                -0.7316667   -1.2274927   -0.2358406
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.2881250   -0.8678030    0.2915530
6 months    MAL-ED           NEPAL                          <48 cm               NA                -0.6550000   -1.0447672   -0.2652328
6 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.1540476   -0.7631832    0.4550880
6 months    MAL-ED           PERU                           >=50 cm              NA                 1.1526736    0.8530049    1.4523423
6 months    MAL-ED           PERU                           <48 cm               NA                 1.0194643    0.7768187    1.2621099
6 months    MAL-ED           PERU                           [48-50) cm           NA                 1.0242972    0.8185029    1.2300915
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.5626961    0.1626938    0.9626983
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.9728571    0.4581363    1.4875780
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0577632   -0.4579239    0.3423976
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.8394624    0.4441500    1.2347748
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2860256    0.0098531    0.5621982
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4818056    0.2191989    0.7444122
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.3057083   -0.5058320   -0.1055846
6 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -0.5677178   -0.7187346   -0.4167009
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.4548911   -0.5913881   -0.3183941
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1121341   -0.0502020    0.2744703
6 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0255185   -0.1090627    0.1600997
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0142349   -0.1348860    0.1064162
6 months    PROBIT           BELARUS                        >=50 cm              NA                 0.5820994    0.5217461    0.6424528
6 months    PROBIT           BELARUS                        <48 cm               NA                 0.5569186    0.4430008    0.6708364
6 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.4880858    0.3927390    0.5834327
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1350350   -0.0379567    0.3080266
6 months    PROVIDE          BANGLADESH                     <48 cm               NA                -0.4471362   -0.5822237   -0.3120486
6 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.1786302   -0.3024310   -0.0548295
6 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.2780000   -0.3138743    0.8698743
6 months    ResPak           PAKISTAN                       <48 cm               NA                 0.3458974   -0.1493737    0.8411686
6 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.0112121   -0.9738413    0.9962656
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.5260204   -0.7179963   -0.3340445
6 months    SAS-CompFeed     INDIA                          <48 cm               NA                -0.7565678   -0.8986483   -0.6144872
6 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.5829545   -0.7247697   -0.4411394
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3960727    0.3492478    0.4428977
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2364753    0.1898939    0.2830568
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.3023642    0.2611843    0.3435440
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0180208   -0.4359101    0.3998684
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.6578000   -0.9179473   -0.3976527
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.3707500   -0.6593554   -0.0821446
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0644318   -0.1627402    0.0338766
24 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.4449180   -0.6255040   -0.2643321
24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.2383708   -0.3589664   -0.1177751
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.2913913   -0.3545454   -0.2282372
24 months   COHORTS          INDIA                          <48 cm               NA                -0.7997251   -0.8458987   -0.7535515
24 months   COHORTS          INDIA                          [48-50) cm           NA                -0.5481069   -0.5955710   -0.5006427
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.4452067   -0.5026039   -0.3878095
24 months   COHORTS          PHILIPPINES                    <48 cm               NA                -0.8420361   -0.9167339   -0.7673384
24 months   COHORTS          PHILIPPINES                    [48-50) cm           NA                -0.6173885   -0.6772745   -0.5575026
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.4280000   -0.8772687    0.0212687
24 months   EE               PAKISTAN                       <48 cm               NA                -1.0793056   -1.2956764   -0.8629347
24 months   EE               PAKISTAN                       [48-50) cm           NA                -0.9702000   -1.3376808   -0.6027192
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.8139484   -1.0359763   -0.5919205
24 months   GMS-Nepal        NEPAL                          <48 cm               NA                -1.2398260   -1.3576426   -1.1220094
24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -1.1365033   -1.2990930   -0.9739135
24 months   IRC              INDIA                          >=50 cm              NA                -0.6742606   -0.8291072   -0.5194139
24 months   IRC              INDIA                          <48 cm               NA                -0.8860303   -1.0491618   -0.7228988
24 months   IRC              INDIA                          [48-50) cm           NA                -0.7298551   -0.8919518   -0.5677583
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.9670792   -1.0884156   -0.8457428
24 months   JiVitA-3         BANGLADESH                     <48 cm               NA                -1.3853426   -1.4145366   -1.3561486
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           NA                -1.1456657   -1.1929661   -1.0983653
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -1.0958007   -1.1625601   -1.0290414
24 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -1.3553795   -1.4049290   -1.3058299
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -1.1733333   -1.2382468   -1.1084199
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.6699411   -0.7527413   -0.5871409
24 months   Keneba           GAMBIA                         <48 cm               NA                -0.9379865   -1.0826991   -0.7932739
24 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.9106692   -1.0182121   -0.8031262
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.5535897   -0.8871953   -0.2199842
24 months   MAL-ED           BANGLADESH                     <48 cm               NA                -1.0454375   -1.2178214   -0.8730536
24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.7340441   -0.9375007   -0.5305875
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.4317500    0.0262636    0.8372364
24 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.2445000   -1.0684034    0.5794034
24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3056944   -0.6920929    1.3034817
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.4358333   -1.1701735    0.2985068
24 months   MAL-ED           INDIA                          <48 cm               NA                -1.2241667   -1.6277760   -0.8205574
24 months   MAL-ED           INDIA                          [48-50) cm           NA                -1.2543333   -1.5915308   -0.9171358
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4606250   -0.9226786    0.0014286
24 months   MAL-ED           NEPAL                          <48 cm               NA                -1.1881818   -1.4731126   -0.9032511
24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.9200000   -1.4410066   -0.3989934
24 months   MAL-ED           PERU                           >=50 cm              NA                 0.5570588    0.3214342    0.7926835
24 months   MAL-ED           PERU                           <48 cm               NA                -0.1477612   -0.3863658    0.0908434
24 months   MAL-ED           PERU                           [48-50) cm           NA                -0.0202260   -0.2187273    0.1782753
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.4980208    0.2242461    0.7717956
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.6390476    0.2148315    1.0632638
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1660526   -0.1281415    0.4602468
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.4172414    0.0845664    0.7499163
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0091176   -0.3728259    0.3545907
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.0484146   -0.2282607    0.3250900
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.6397306   -0.8151770   -0.4642843
24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.9999948   -1.1712917   -0.8286979
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.9820509   -1.1435161   -0.8205856
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.3990625   -0.5935932   -0.2045318
24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.7500500   -0.8929680   -0.6071320
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.6055376   -0.7662485   -0.4448268
24 months   PROBIT           BELARUS                        >=50 cm              NA                 0.7215664    0.6078191    0.8353136
24 months   PROBIT           BELARUS                        <48 cm               NA                 0.5282955    0.1975513    0.8590396
24 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.4436184    0.2866649    0.6005720
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.6276978   -0.8030097   -0.4523860
24 months   PROVIDE          BANGLADESH                     <48 cm               NA                -1.1685437   -1.2884814   -1.0486060
24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.8076923   -0.9415625   -0.6738221
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -1.3497619   -1.6365519   -1.0629719
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -1.0732558   -1.1959004   -0.9506112
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -1.3430159   -1.5457565   -1.1402753


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
Birth       CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1913403   -0.6199511    1.0026317
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.4295385   -1.0731585    0.2140816
Birth       COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.1714141    0.8862887    1.4565396
Birth       COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.5907004    0.3746491    0.8067517
Birth       COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <48 cm               >=50 cm            0.4389269    0.3618778    0.5159759
Birth       COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1740931    0.0997842    0.2484020
Birth       COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <48 cm               >=50 cm            0.7312947    0.6037741    0.8588153
Birth       COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            0.5351285    0.4365330    0.6337241
Birth       EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       <48 cm               >=50 cm            0.6453782    0.0411722    1.2495841
Birth       EE               PAKISTAN                       [48-50) cm           >=50 cm            0.4925132   -0.1571475    1.1421739
Birth       GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.3711852    0.1366018    0.6057685
Birth       GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1802260   -0.0588686    0.4193207
Birth       IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <48 cm               >=50 cm            1.8658851    1.4095270    2.3222431
Birth       IRC              INDIA                          [48-50) cm           >=50 cm            1.4345784    1.0554107    1.8137462
Birth       JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.3212544    0.2543590    0.3881497
Birth       JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.2221144    0.1520478    0.2921809
Birth       JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.3151958    0.0708967    0.5594949
Birth       JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.2090871   -0.0439621    0.4621363
Birth       Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <48 cm               >=50 cm            0.9866630    0.8065769    1.1667491
Birth       Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.5676535    0.4387265    0.6965804
Birth       MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.2780254   -0.1389734    0.6950241
Birth       MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.2470643   -0.1782451    0.6723736
Birth       MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.3997619   -0.4215404    1.2210642
Birth       MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0138889   -0.7487535    0.7209757
Birth       MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <48 cm               >=50 cm            0.1722222   -0.4483343    0.7927787
Birth       MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.6855556    0.0594859    1.3116252
Birth       MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.2067045   -1.1172348    0.7038257
Birth       MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1773214   -0.5485380    0.9031808
Birth       MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <48 cm               >=50 cm            0.1611330   -0.1497745    0.4720405
Birth       MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0714206   -0.2237164    0.3665576
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.6021455    0.0466184    1.1576727
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0643124   -0.4140403    0.5426652
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.5746875    0.0596700    1.0897050
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.3108027   -0.0965891    0.7181945
Birth       NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.2883275    0.0374077    0.5392473
Birth       NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.3114648    0.0768565    0.5460731
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.4046046    0.1918573    0.6173520
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.2685625    0.0563831    0.4807419
Birth       PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <48 cm               >=50 cm            1.2601147    1.0298032    1.4904263
Birth       PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.4523647    0.2322893    0.6724401
Birth       PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0055486   -0.2086904    0.1975933
Birth       PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.1015006   -0.0934888    0.2964901
Birth       ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       <48 cm               >=50 cm            0.7700000   -0.2149640    1.7549640
Birth       ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.8066667   -0.0953744    1.7087077
Birth       SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.2982417    0.1349467    0.4615366
Birth       SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.1685962   -0.0518637    0.3890560
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.1409844    1.0750540    1.2069148
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.6527904    0.5951589    0.7104220
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6271535   -1.8417277    0.5874207
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.7026042   -1.9008388    0.4956304
6 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1569152   -0.3977589    0.0839285
6 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0506356   -0.2450974    0.1438263
6 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.3939066   -0.4688801   -0.3189332
6 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.1850471   -0.2607151   -0.1093792
6 months    COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.1057760   -0.2138374    0.0022854
6 months    COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.0495554   -0.1440123    0.0449015
6 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       <48 cm               >=50 cm           -0.0965766   -0.6492407    0.4560874
6 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1473130   -0.4559205    0.7505465
6 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.3605757   -0.6045363   -0.1166152
6 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3218187   -0.5853326   -0.0583047
6 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <48 cm               >=50 cm            0.1971698   -0.1436503    0.5379899
6 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.0175224   -0.3369975    0.3019528
6 months    JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.1857489   -0.2712915   -0.1002063
6 months    JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0747839   -0.1634629    0.0138952
6 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0970802   -0.1928206   -0.0013397
6 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0333540   -0.1351472    0.0684392
6 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0154149   -0.1803379    0.1495082
6 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1025781   -0.2456352    0.0404791
6 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.3448417   -0.7936202    0.1039368
6 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0845149   -0.5627382    0.3937084
6 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.3921667   -1.1458886    0.3615552
6 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1465625   -0.9689062    0.6757812
6 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.1798380   -0.6811940    1.0408700
6 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0185417   -0.8404923    0.8775756
6 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.3668750   -1.0654057    0.3316557
6 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1340774   -0.7067988    0.9749536
6 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.1332093   -0.5187974    0.2523788
6 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.1283764   -0.4919044    0.2351516
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.4101611   -0.2417127    1.0620348
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.6204592   -1.1862599   -0.0546585
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.5534367   -1.0356640   -0.0712094
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3576568   -0.8322452    0.1169316
6 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.2620094   -0.5127196   -0.0112993
6 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.1491828   -0.3914243    0.0930587
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0866156   -0.2974832    0.1242520
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.1263690   -0.3286305    0.0758925
6 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0251808   -0.1421777    0.0918161
6 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0940136   -0.1756524   -0.0123748
6 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5821711   -0.8016586   -0.3626836
6 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.3136652   -0.5263921   -0.1009383
6 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0678974   -0.7038594    0.8396543
6 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.2667879   -1.4159812    0.8824055
6 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.2305474   -0.3427557   -0.1183390
6 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0569341   -0.1803705    0.0665022
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.1595974   -0.2256459   -0.0935489
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0937085   -0.1560652   -0.0313519
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.6397792   -1.1320271   -0.1475312
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3527292   -0.8605918    0.1551335
24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.3804862   -0.5860971   -0.1748754
24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.1739390   -0.3295277   -0.0183502
24 months   COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <48 cm               >=50 cm           -0.5083338   -0.5865671   -0.4301005
24 months   COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.2567156   -0.3357174   -0.1777137
24 months   COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <48 cm               >=50 cm           -0.3968294   -0.4910324   -0.3026265
24 months   COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm           -0.1721818   -0.2551322   -0.0892314
24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.6513056   -1.1499625   -0.1526486
24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.5422000   -1.1226175    0.0382175
24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.4258776   -0.6772282   -0.1745270
24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.3225549   -0.5977490   -0.0473607
24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.2117697   -0.4366906    0.0131511
24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0555945   -0.2797659    0.1685769
24 months   JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.4182634   -0.5448208   -0.2917060
24 months   JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.1785865   -0.3080340   -0.0491390
24 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.2595787   -0.3419750   -0.1771825
24 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0775326   -0.1718990    0.0168338
24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2680453   -0.4347715   -0.1013192
24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.2407280   -0.3764533   -0.1050027
24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.4918478   -0.8673593   -0.1163363
24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.1804544   -0.5712066    0.2102978
24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.6762500   -1.5945288    0.2420288
24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1260556   -1.2030879    0.9509768
24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.7883333   -1.6262808    0.0496141
24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.8185000   -1.6265579   -0.0104421
24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.7275568   -1.2704003   -0.1847133
24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.4593750   -1.1557523    0.2370023
24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.7048200   -1.0401573   -0.3694827
24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.5772848   -0.8853785   -0.2691911
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1410268   -0.3638613    0.6459149
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.3319682   -0.7338424    0.0699060
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.4263590   -0.9192651    0.0665470
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.3688267   -0.8015182    0.0638647
24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.3602642   -0.6054662   -0.1150621
24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.3423202   -0.5807577   -0.1038827
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.3509875   -0.5923746   -0.1096004
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.2064751   -0.4588046    0.0458543
24 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.1932709   -0.5140454    0.1275036
24 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.2779479   -0.4365764   -0.1193195
24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.5408458   -0.7532589   -0.3284328
24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.1799945   -0.4005743    0.0405854
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.2765061   -0.0354077    0.5884198
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0067460   -0.3444694    0.3579614


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1263640   -0.6701793    0.4174512
Birth       COHORTS          GUATEMALA                      >=50 cm              NA                 0.3826804    0.2855614    0.4797993
Birth       COHORTS          INDIA                          >=50 cm              NA                 0.2352899    0.1828796    0.2877002
Birth       COHORTS          PHILIPPINES                    >=50 cm              NA                 0.3742839    0.3166042    0.4319636
Birth       EE               PAKISTAN                       >=50 cm              NA                 0.5221711    0.0031675    1.0411747
Birth       GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2432061    0.0645183    0.4218939
Birth       IRC              INDIA                          >=50 cm              NA                 1.0420836    0.7988436    1.2853235
Birth       JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.2711349    0.2098944    0.3323755
Birth       JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2594068    0.0355181    0.4832956
Birth       Keneba           GAMBIA                         >=50 cm              NA                 0.3511138    0.2890501    0.4131774
Birth       MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2162165   -0.1035512    0.5359841
Birth       MAL-ED           BRAZIL                         >=50 cm              NA                 0.0862366   -0.2354119    0.4078850
Birth       MAL-ED           INDIA                          >=50 cm              NA                 0.3431111   -0.0993435    0.7855657
Birth       MAL-ED           NEPAL                          >=50 cm              NA                -0.0397115   -0.5703614    0.4909384
Birth       MAL-ED           PERU                           >=50 cm              NA                 0.0877901   -0.1191333    0.2947136
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1802074   -0.1056796    0.4660943
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2977473    0.0194301    0.5760645
Birth       NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2293062    0.0635241    0.3950883
Birth       NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2591612    0.1122345    0.4060878
Birth       PROBIT           BELARUS                        >=50 cm              NA                 0.0494365    0.0259394    0.0729337
Birth       PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0403843   -0.0972437    0.1780124
Birth       ResPak           PAKISTAN                       >=50 cm              NA                 0.5403509   -0.0290086    1.1097104
Birth       SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2202133    0.0624535    0.3779731
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.5884033    0.5509796    0.6258269
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.5603304   -1.5586923    0.4380316
6 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.0455099   -0.1295778    0.0385581
6 months    COHORTS          INDIA                          >=50 cm              NA                -0.2310501   -0.2841545   -0.1779457
6 months    COHORTS          PHILIPPINES                    >=50 cm              NA                -0.0454987   -0.0992467    0.0082492
6 months    EE               PAKISTAN                       >=50 cm              NA                -0.0335510   -0.5258388    0.4587368
6 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2873204   -0.4812033   -0.0934375
6 months    IRC              INDIA                          >=50 cm              NA                 0.0495388   -0.1261692    0.2252468
6 months    JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.1486274   -0.2275475   -0.0697073
6 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0547451   -0.1175665    0.0080764
6 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0358806   -0.0973410    0.0255799
6 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1898037   -0.5482364    0.1686289
6 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.1394492   -0.4700974    0.1911991
6 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0857368   -0.5470478    0.7185213
6 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1191186   -0.5907705    0.3525333
6 months    MAL-ED           PERU                           >=50 cm              NA                -0.1016038   -0.3652935    0.1620858
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1609040   -0.4951389    0.1733309
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3284030   -0.6542594   -0.0025467
6 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1579677   -0.3306893    0.0147539
6 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0823719   -0.2255287    0.0607849
6 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0079895   -0.0167596    0.0007806
6 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.3341256   -0.4843674   -0.1838838
6 months    ResPak           PAKISTAN                       >=50 cm              NA                -0.0603529   -0.6211018    0.5003960
6 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.1414720   -0.2358722   -0.0470719
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0871057   -0.1268015   -0.0474098
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4348880   -0.8281719   -0.0416041
24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.1371994   -0.2137455   -0.0606533
24 months   COHORTS          INDIA                          >=50 cm              NA                -0.3031830   -0.3591357   -0.2472303
24 months   COHORTS          PHILIPPINES                    >=50 cm              NA                -0.1651122   -0.2124316   -0.1177927
24 months   EE               PAKISTAN                       >=50 cm              NA                -0.5649439   -1.0073408   -0.1225471
24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.3197416   -0.5201852   -0.1192980
24 months   IRC              INDIA                          >=50 cm              NA                -0.0794018   -0.2025929    0.0437892
24 months   JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.3375779   -0.4551217   -0.2200341
24 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.1453115   -0.2017753   -0.0888477
24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.1249607   -0.1850338   -0.0648876
24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.2760359   -0.5613997    0.0093279
24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.1970278   -0.6115832    0.2175277
24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.6786538   -1.3465606   -0.0107471
24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.4314904   -0.8201628   -0.0428180
24 months   MAL-ED           PERU                           >=50 cm              NA                -0.5080172   -0.7350216   -0.2810127
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.1060794   -0.3466262    0.1344673
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.2847895   -0.5759661    0.0063872
24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.2672145   -0.4285597   -0.1058693
24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.2112877   -0.3784890   -0.0440864
24 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0234257   -0.0420184   -0.0048331
24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.2651692   -0.4161933   -0.1141450
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1694567   -0.1064094    0.4453228
