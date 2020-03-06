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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        mage       n_cell       n
-------------  ---------------  -----------------------------  --------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          [20-30)        78      88
0-3 months     CMC-V-BCS-2002   INDIA                          <20             6      88
0-3 months     CMC-V-BCS-2002   INDIA                          >=30            4      88
0-3 months     COHORTS          GUATEMALA                      [20-30)       347     728
0-3 months     COHORTS          GUATEMALA                      <20            92     728
0-3 months     COHORTS          GUATEMALA                      >=30          289     728
0-3 months     COHORTS          INDIA                          [20-30)      3096    4601
0-3 months     COHORTS          INDIA                          <20           364    4601
0-3 months     COHORTS          INDIA                          >=30         1141    4601
0-3 months     EE               PAKISTAN                       [20-30)       119     301
0-3 months     EE               PAKISTAN                       <20             1     301
0-3 months     EE               PAKISTAN                       >=30          181     301
0-3 months     GMS-Nepal        NEPAL                          [20-30)       333     509
0-3 months     GMS-Nepal        NEPAL                          <20            96     509
0-3 months     GMS-Nepal        NEPAL                          >=30           80     509
0-3 months     IRC              INDIA                          [20-30)       317     377
0-3 months     IRC              INDIA                          <20            33     377
0-3 months     IRC              INDIA                          >=30           27     377
0-3 months     Keneba           GAMBIA                         [20-30)       586    1276
0-3 months     Keneba           GAMBIA                         <20           201    1276
0-3 months     Keneba           GAMBIA                         >=30          489    1276
0-3 months     MAL-ED           BANGLADESH                     [20-30)       166     243
0-3 months     MAL-ED           BANGLADESH                     <20            35     243
0-3 months     MAL-ED           BANGLADESH                     >=30           42     243
0-3 months     MAL-ED           BRAZIL                         [20-30)        99     168
0-3 months     MAL-ED           BRAZIL                         <20            30     168
0-3 months     MAL-ED           BRAZIL                         >=30           39     168
0-3 months     MAL-ED           INDIA                          [20-30)       143     182
0-3 months     MAL-ED           INDIA                          <20            23     182
0-3 months     MAL-ED           INDIA                          >=30           16     182
0-3 months     MAL-ED           NEPAL                          [20-30)       119     156
0-3 months     MAL-ED           NEPAL                          <20             5     156
0-3 months     MAL-ED           NEPAL                          >=30           32     156
0-3 months     MAL-ED           PERU                           [20-30)       133     265
0-3 months     MAL-ED           PERU                           <20            73     265
0-3 months     MAL-ED           PERU                           >=30           59     265
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)       108     211
0-3 months     MAL-ED           SOUTH AFRICA                   <20            31     211
0-3 months     MAL-ED           SOUTH AFRICA                   >=30           72     211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       126     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            12     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           90     228
0-3 months     NIH-Birth        BANGLADESH                     [20-30)       381     564
0-3 months     NIH-Birth        BANGLADESH                     <20            61     564
0-3 months     NIH-Birth        BANGLADESH                     >=30          122     564
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)       468     721
0-3 months     NIH-Crypto       BANGLADESH                     <20           130     721
0-3 months     NIH-Crypto       BANGLADESH                     >=30          123     721
0-3 months     PROBIT           BELARUS                        [20-30)     10988   15323
0-3 months     PROBIT           BELARUS                        <20          1583   15323
0-3 months     PROBIT           BELARUS                        >=30         2752   15323
0-3 months     PROVIDE          BANGLADESH                     [20-30)       450     640
0-3 months     PROVIDE          BANGLADESH                     <20            73     640
0-3 months     PROVIDE          BANGLADESH                     >=30          117     640
0-3 months     SAS-CompFeed     INDIA                          [20-30)       970    1261
0-3 months     SAS-CompFeed     INDIA                          <20           144    1261
0-3 months     SAS-CompFeed     INDIA                          >=30          147    1261
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)      5283    7963
0-3 months     ZVITAMBO         ZIMBABWE                       <20          1173    7963
0-3 months     ZVITAMBO         ZIMBABWE                       >=30         1507    7963
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)       243     307
3-6 months     CMC-V-BCS-2002   INDIA                          <20            27     307
3-6 months     CMC-V-BCS-2002   INDIA                          >=30           37     307
3-6 months     COHORTS          GUATEMALA                      [20-30)       397     805
3-6 months     COHORTS          GUATEMALA                      <20            95     805
3-6 months     COHORTS          GUATEMALA                      >=30          313     805
3-6 months     COHORTS          INDIA                          [20-30)      3161    4656
3-6 months     COHORTS          INDIA                          <20           347    4656
3-6 months     COHORTS          INDIA                          >=30         1148    4656
3-6 months     EE               PAKISTAN                       [20-30)       110     278
3-6 months     EE               PAKISTAN                       <20             1     278
3-6 months     EE               PAKISTAN                       >=30          167     278
3-6 months     GMS-Nepal        NEPAL                          [20-30)       314     469
3-6 months     GMS-Nepal        NEPAL                          <20            81     469
3-6 months     GMS-Nepal        NEPAL                          >=30           74     469
3-6 months     IRC              INDIA                          [20-30)       334     397
3-6 months     IRC              INDIA                          <20            35     397
3-6 months     IRC              INDIA                          >=30           28     397
3-6 months     Keneba           GAMBIA                         [20-30)       653    1394
3-6 months     Keneba           GAMBIA                         <20           185    1394
3-6 months     Keneba           GAMBIA                         >=30          556    1394
3-6 months     MAL-ED           BANGLADESH                     [20-30)       161     231
3-6 months     MAL-ED           BANGLADESH                     <20            32     231
3-6 months     MAL-ED           BANGLADESH                     >=30           38     231
3-6 months     MAL-ED           BRAZIL                         [20-30)       124     208
3-6 months     MAL-ED           BRAZIL                         <20            37     208
3-6 months     MAL-ED           BRAZIL                         >=30           47     208
3-6 months     MAL-ED           INDIA                          [20-30)       175     228
3-6 months     MAL-ED           INDIA                          <20            33     228
3-6 months     MAL-ED           INDIA                          >=30           20     228
3-6 months     MAL-ED           NEPAL                          [20-30)       182     233
3-6 months     MAL-ED           NEPAL                          <20             5     233
3-6 months     MAL-ED           NEPAL                          >=30           46     233
3-6 months     MAL-ED           PERU                           [20-30)       133     267
3-6 months     MAL-ED           PERU                           <20            74     267
3-6 months     MAL-ED           PERU                           >=30           60     267
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)       112     243
3-6 months     MAL-ED           SOUTH AFRICA                   <20            41     243
3-6 months     MAL-ED           SOUTH AFRICA                   >=30           90     243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       126     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          100     239
3-6 months     NIH-Birth        BANGLADESH                     [20-30)       350     521
3-6 months     NIH-Birth        BANGLADESH                     <20            56     521
3-6 months     NIH-Birth        BANGLADESH                     >=30          115     521
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)       450     695
3-6 months     NIH-Crypto       BANGLADESH                     <20           126     695
3-6 months     NIH-Crypto       BANGLADESH                     >=30          119     695
3-6 months     PROBIT           BELARUS                        [20-30)      9553   13308
3-6 months     PROBIT           BELARUS                        <20          1386   13308
3-6 months     PROBIT           BELARUS                        >=30         2369   13308
3-6 months     PROVIDE          BANGLADESH                     [20-30)       421     598
3-6 months     PROVIDE          BANGLADESH                     <20            64     598
3-6 months     PROVIDE          BANGLADESH                     >=30          113     598
3-6 months     SAS-CompFeed     INDIA                          [20-30)       863    1124
3-6 months     SAS-CompFeed     INDIA                          <20           129    1124
3-6 months     SAS-CompFeed     INDIA                          >=30          132    1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1062    1650
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           121    1650
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          467    1650
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)      4076    6166
3-6 months     ZVITAMBO         ZIMBABWE                       <20           886    6166
3-6 months     ZVITAMBO         ZIMBABWE                       >=30         1204    6166
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)       247     313
6-9 months     CMC-V-BCS-2002   INDIA                          <20            28     313
6-9 months     CMC-V-BCS-2002   INDIA                          >=30           38     313
6-9 months     COHORTS          GUATEMALA                      [20-30)       404     822
6-9 months     COHORTS          GUATEMALA                      <20            99     822
6-9 months     COHORTS          GUATEMALA                      >=30          319     822
6-9 months     COHORTS          INDIA                          [20-30)      2875    4267
6-9 months     COHORTS          INDIA                          <20           297    4267
6-9 months     COHORTS          INDIA                          >=30         1095    4267
6-9 months     EE               PAKISTAN                       [20-30)       122     302
6-9 months     EE               PAKISTAN                       <20             1     302
6-9 months     EE               PAKISTAN                       >=30          179     302
6-9 months     GMS-Nepal        NEPAL                          [20-30)       317     481
6-9 months     GMS-Nepal        NEPAL                          <20            87     481
6-9 months     GMS-Nepal        NEPAL                          >=30           77     481
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)       134     210
6-9 months     Guatemala BSC    GUATEMALA                      <20            34     210
6-9 months     Guatemala BSC    GUATEMALA                      >=30           42     210
6-9 months     IRC              INDIA                          [20-30)       342     407
6-9 months     IRC              INDIA                          <20            36     407
6-9 months     IRC              INDIA                          >=30           29     407
6-9 months     Keneba           GAMBIA                         [20-30)       434     903
6-9 months     Keneba           GAMBIA                         <20            96     903
6-9 months     Keneba           GAMBIA                         >=30          373     903
6-9 months     LCNI-5           MALAWI                         [20-30)       247     460
6-9 months     LCNI-5           MALAWI                         <20            81     460
6-9 months     LCNI-5           MALAWI                         >=30          132     460
6-9 months     MAL-ED           BANGLADESH                     [20-30)       156     224
6-9 months     MAL-ED           BANGLADESH                     <20            32     224
6-9 months     MAL-ED           BANGLADESH                     >=30           36     224
6-9 months     MAL-ED           BRAZIL                         [20-30)       120     198
6-9 months     MAL-ED           BRAZIL                         <20            34     198
6-9 months     MAL-ED           BRAZIL                         >=30           44     198
6-9 months     MAL-ED           INDIA                          [20-30)       174     228
6-9 months     MAL-ED           INDIA                          <20            34     228
6-9 months     MAL-ED           INDIA                          >=30           20     228
6-9 months     MAL-ED           NEPAL                          [20-30)       181     230
6-9 months     MAL-ED           NEPAL                          <20             4     230
6-9 months     MAL-ED           NEPAL                          >=30           45     230
6-9 months     MAL-ED           PERU                           [20-30)       119     245
6-9 months     MAL-ED           PERU                           <20            70     245
6-9 months     MAL-ED           PERU                           >=30           56     245
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)       102     231
6-9 months     MAL-ED           SOUTH AFRICA                   <20            40     231
6-9 months     MAL-ED           SOUTH AFRICA                   >=30           89     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       114     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           98     225
6-9 months     NIH-Birth        BANGLADESH                     [20-30)       337     496
6-9 months     NIH-Birth        BANGLADESH                     <20            51     496
6-9 months     NIH-Birth        BANGLADESH                     >=30          108     496
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)       449     688
6-9 months     NIH-Crypto       BANGLADESH                     <20           120     688
6-9 months     NIH-Crypto       BANGLADESH                     >=30          119     688
6-9 months     PROBIT           BELARUS                        [20-30)      8936   12426
6-9 months     PROBIT           BELARUS                        <20          1276   12426
6-9 months     PROBIT           BELARUS                        >=30         2214   12426
6-9 months     PROVIDE          BANGLADESH                     [20-30)       400     565
6-9 months     PROVIDE          BANGLADESH                     <20            60     565
6-9 months     PROVIDE          BANGLADESH                     >=30          105     565
6-9 months     SAS-CompFeed     INDIA                          [20-30)       874    1144
6-9 months     SAS-CompFeed     INDIA                          <20           135    1144
6-9 months     SAS-CompFeed     INDIA                          >=30          135    1144
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)       213     314
6-9 months     SAS-FoodSuppl    INDIA                          <20            26     314
6-9 months     SAS-FoodSuppl    INDIA                          >=30           75     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       947    1474
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           104    1474
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          423    1474
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)      3900    5917
6-9 months     ZVITAMBO         ZIMBABWE                       <20           858    5917
6-9 months     ZVITAMBO         ZIMBABWE                       >=30         1159    5917
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)       252     317
9-12 months    CMC-V-BCS-2002   INDIA                          <20            27     317
9-12 months    CMC-V-BCS-2002   INDIA                          >=30           38     317
9-12 months    COHORTS          GUATEMALA                      [20-30)       453     929
9-12 months    COHORTS          GUATEMALA                      <20           120     929
9-12 months    COHORTS          GUATEMALA                      >=30          356     929
9-12 months    COHORTS          INDIA                          [20-30)      2449    3669
9-12 months    COHORTS          INDIA                          <20           242    3669
9-12 months    COHORTS          INDIA                          >=30          978    3669
9-12 months    EE               PAKISTAN                       [20-30)       136     324
9-12 months    EE               PAKISTAN                       <20             1     324
9-12 months    EE               PAKISTAN                       >=30          187     324
9-12 months    GMS-Nepal        NEPAL                          [20-30)       312     469
9-12 months    GMS-Nepal        NEPAL                          <20            81     469
9-12 months    GMS-Nepal        NEPAL                          >=30           76     469
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)       113     184
9-12 months    Guatemala BSC    GUATEMALA                      <20            30     184
9-12 months    Guatemala BSC    GUATEMALA                      >=30           41     184
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)       597    1099
9-12 months    iLiNS-Zinc       BURKINA FASO                   <20           132    1099
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=30          370    1099
9-12 months    IRC              INDIA                          [20-30)       337     400
9-12 months    IRC              INDIA                          <20            35     400
9-12 months    IRC              INDIA                          >=30           28     400
9-12 months    Keneba           GAMBIA                         [20-30)       402     879
9-12 months    Keneba           GAMBIA                         <20            91     879
9-12 months    Keneba           GAMBIA                         >=30          386     879
9-12 months    LCNI-5           MALAWI                         [20-30)       162     319
9-12 months    LCNI-5           MALAWI                         <20            54     319
9-12 months    LCNI-5           MALAWI                         >=30          103     319
9-12 months    MAL-ED           BANGLADESH                     [20-30)       153     225
9-12 months    MAL-ED           BANGLADESH                     <20            33     225
9-12 months    MAL-ED           BANGLADESH                     >=30           39     225
9-12 months    MAL-ED           BRAZIL                         [20-30)       117     194
9-12 months    MAL-ED           BRAZIL                         <20            34     194
9-12 months    MAL-ED           BRAZIL                         >=30           43     194
9-12 months    MAL-ED           INDIA                          [20-30)       171     225
9-12 months    MAL-ED           INDIA                          <20            33     225
9-12 months    MAL-ED           INDIA                          >=30           21     225
9-12 months    MAL-ED           NEPAL                          [20-30)       180     229
9-12 months    MAL-ED           NEPAL                          <20             4     229
9-12 months    MAL-ED           NEPAL                          >=30           45     229
9-12 months    MAL-ED           PERU                           [20-30)       116     235
9-12 months    MAL-ED           PERU                           <20            65     235
9-12 months    MAL-ED           PERU                           >=30           54     235
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)       104     233
9-12 months    MAL-ED           SOUTH AFRICA                   <20            40     233
9-12 months    MAL-ED           SOUTH AFRICA                   >=30           89     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       114     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           97     224
9-12 months    NIH-Birth        BANGLADESH                     [20-30)       324     480
9-12 months    NIH-Birth        BANGLADESH                     <20            51     480
9-12 months    NIH-Birth        BANGLADESH                     >=30          105     480
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)       439     674
9-12 months    NIH-Crypto       BANGLADESH                     <20           119     674
9-12 months    NIH-Crypto       BANGLADESH                     >=30          116     674
9-12 months    PROBIT           BELARUS                        [20-30)      9126   12681
9-12 months    PROBIT           BELARUS                        <20          1289   12681
9-12 months    PROBIT           BELARUS                        >=30         2266   12681
9-12 months    PROVIDE          BANGLADESH                     [20-30)       401     566
9-12 months    PROVIDE          BANGLADESH                     <20            62     566
9-12 months    PROVIDE          BANGLADESH                     >=30          103     566
9-12 months    SAS-CompFeed     INDIA                          [20-30)       871    1146
9-12 months    SAS-CompFeed     INDIA                          <20           142    1146
9-12 months    SAS-CompFeed     INDIA                          >=30          133    1146
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)       213     311
9-12 months    SAS-FoodSuppl    INDIA                          <20            24     311
9-12 months    SAS-FoodSuppl    INDIA                          >=30           74     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       693    1071
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            67    1071
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          311    1071
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)      3898    5921
9-12 months    ZVITAMBO         ZIMBABWE                       <20           867    5921
9-12 months    ZVITAMBO         ZIMBABWE                       >=30         1156    5921
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)       261     329
12-15 months   CMC-V-BCS-2002   INDIA                          <20            29     329
12-15 months   CMC-V-BCS-2002   INDIA                          >=30           39     329
12-15 months   COHORTS          GUATEMALA                      [20-30)       437     880
12-15 months   COHORTS          GUATEMALA                      <20           115     880
12-15 months   COHORTS          GUATEMALA                      >=30          328     880
12-15 months   EE               PAKISTAN                       [20-30)       124     295
12-15 months   EE               PAKISTAN                       <20             1     295
12-15 months   EE               PAKISTAN                       >=30          170     295
12-15 months   GMS-Nepal        NEPAL                          [20-30)       311     469
12-15 months   GMS-Nepal        NEPAL                          <20            83     469
12-15 months   GMS-Nepal        NEPAL                          >=30           75     469
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)        58      96
12-15 months   Guatemala BSC    GUATEMALA                      <20            10      96
12-15 months   Guatemala BSC    GUATEMALA                      >=30           28      96
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)       520     956
12-15 months   iLiNS-Zinc       BURKINA FASO                   <20           120     956
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=30          316     956
12-15 months   IRC              INDIA                          [20-30)       330     390
12-15 months   IRC              INDIA                          <20            33     390
12-15 months   IRC              INDIA                          >=30           27     390
12-15 months   Keneba           GAMBIA                         [20-30)       609    1335
12-15 months   Keneba           GAMBIA                         <20           149    1335
12-15 months   Keneba           GAMBIA                         >=30          577    1335
12-15 months   LCNI-5           MALAWI                         [20-30)        56     109
12-15 months   LCNI-5           MALAWI                         <20            15     109
12-15 months   LCNI-5           MALAWI                         >=30           38     109
12-15 months   MAL-ED           BANGLADESH                     [20-30)       144     212
12-15 months   MAL-ED           BANGLADESH                     <20            30     212
12-15 months   MAL-ED           BANGLADESH                     >=30           38     212
12-15 months   MAL-ED           BRAZIL                         [20-30)       111     184
12-15 months   MAL-ED           BRAZIL                         <20            33     184
12-15 months   MAL-ED           BRAZIL                         >=30           40     184
12-15 months   MAL-ED           INDIA                          [20-30)       170     224
12-15 months   MAL-ED           INDIA                          <20            33     224
12-15 months   MAL-ED           INDIA                          >=30           21     224
12-15 months   MAL-ED           NEPAL                          [20-30)       181     230
12-15 months   MAL-ED           NEPAL                          <20             4     230
12-15 months   MAL-ED           NEPAL                          >=30           45     230
12-15 months   MAL-ED           PERU                           [20-30)       110     224
12-15 months   MAL-ED           PERU                           <20            63     224
12-15 months   MAL-ED           PERU                           >=30           51     224
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)        99     228
12-15 months   MAL-ED           SOUTH AFRICA                   <20            40     228
12-15 months   MAL-ED           SOUTH AFRICA                   >=30           89     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       117     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           96     226
12-15 months   NIH-Birth        BANGLADESH                     [20-30)       311     459
12-15 months   NIH-Birth        BANGLADESH                     <20            48     459
12-15 months   NIH-Birth        BANGLADESH                     >=30          100     459
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)       426     660
12-15 months   NIH-Crypto       BANGLADESH                     <20           117     660
12-15 months   NIH-Crypto       BANGLADESH                     >=30          117     660
12-15 months   PROBIT           BELARUS                        [20-30)       733    1001
12-15 months   PROBIT           BELARUS                        <20            97    1001
12-15 months   PROBIT           BELARUS                        >=30          171    1001
12-15 months   PROVIDE          BANGLADESH                     [20-30)       376     532
12-15 months   PROVIDE          BANGLADESH                     <20            62     532
12-15 months   PROVIDE          BANGLADESH                     >=30           94     532
12-15 months   SAS-CompFeed     INDIA                          [20-30)       888    1168
12-15 months   SAS-CompFeed     INDIA                          <20           151    1168
12-15 months   SAS-CompFeed     INDIA                          >=30          129    1168
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)       210     303
12-15 months   SAS-FoodSuppl    INDIA                          <20            26     303
12-15 months   SAS-FoodSuppl    INDIA                          >=30           67     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       492     782
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            47     782
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          243     782
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)      1711    2544
12-15 months   ZVITAMBO         ZIMBABWE                       <20           325    2544
12-15 months   ZVITAMBO         ZIMBABWE                       >=30          508    2544
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)       252     321
15-18 months   CMC-V-BCS-2002   INDIA                          <20            30     321
15-18 months   CMC-V-BCS-2002   INDIA                          >=30           39     321
15-18 months   COHORTS          GUATEMALA                      [20-30)       397     786
15-18 months   COHORTS          GUATEMALA                      <20            97     786
15-18 months   COHORTS          GUATEMALA                      >=30          292     786
15-18 months   EE               PAKISTAN                       [20-30)       116     277
15-18 months   EE               PAKISTAN                       <20             1     277
15-18 months   EE               PAKISTAN                       >=30          160     277
15-18 months   GMS-Nepal        NEPAL                          [20-30)       315     480
15-18 months   GMS-Nepal        NEPAL                          <20            91     480
15-18 months   GMS-Nepal        NEPAL                          >=30           74     480
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)       545    1003
15-18 months   iLiNS-Zinc       BURKINA FASO                   <20           123    1003
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=30          335    1003
15-18 months   IRC              INDIA                          [20-30)       322     382
15-18 months   IRC              INDIA                          <20            33     382
15-18 months   IRC              INDIA                          >=30           27     382
15-18 months   Keneba           GAMBIA                         [20-30)       612    1354
15-18 months   Keneba           GAMBIA                         <20           148    1354
15-18 months   Keneba           GAMBIA                         >=30          594    1354
15-18 months   LCNI-5           MALAWI                         [20-30)        55     103
15-18 months   LCNI-5           MALAWI                         <20            17     103
15-18 months   LCNI-5           MALAWI                         >=30           31     103
15-18 months   MAL-ED           BANGLADESH                     [20-30)       143     212
15-18 months   MAL-ED           BANGLADESH                     <20            31     212
15-18 months   MAL-ED           BANGLADESH                     >=30           38     212
15-18 months   MAL-ED           BRAZIL                         [20-30)       106     175
15-18 months   MAL-ED           BRAZIL                         <20            29     175
15-18 months   MAL-ED           BRAZIL                         >=30           40     175
15-18 months   MAL-ED           INDIA                          [20-30)       171     224
15-18 months   MAL-ED           INDIA                          <20            33     224
15-18 months   MAL-ED           INDIA                          >=30           20     224
15-18 months   MAL-ED           NEPAL                          [20-30)       179     227
15-18 months   MAL-ED           NEPAL                          <20             3     227
15-18 months   MAL-ED           NEPAL                          >=30           45     227
15-18 months   MAL-ED           PERU                           [20-30)       102     213
15-18 months   MAL-ED           PERU                           <20            61     213
15-18 months   MAL-ED           PERU                           >=30           50     213
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)        98     225
15-18 months   MAL-ED           SOUTH AFRICA                   <20            36     225
15-18 months   MAL-ED           SOUTH AFRICA                   >=30           91     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       112     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            12     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           93     217
15-18 months   NIH-Birth        BANGLADESH                     [20-30)       301     447
15-18 months   NIH-Birth        BANGLADESH                     <20            48     447
15-18 months   NIH-Birth        BANGLADESH                     >=30           98     447
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)       395     604
15-18 months   NIH-Crypto       BANGLADESH                     <20           110     604
15-18 months   NIH-Crypto       BANGLADESH                     >=30           99     604
15-18 months   PROBIT           BELARUS                        [20-30)       204     275
15-18 months   PROBIT           BELARUS                        <20            22     275
15-18 months   PROBIT           BELARUS                        >=30           49     275
15-18 months   PROVIDE          BANGLADESH                     [20-30)       375     528
15-18 months   PROVIDE          BANGLADESH                     <20            61     528
15-18 months   PROVIDE          BANGLADESH                     >=30           92     528
15-18 months   SAS-CompFeed     INDIA                          [20-30)       896    1171
15-18 months   SAS-CompFeed     INDIA                          <20           149    1171
15-18 months   SAS-CompFeed     INDIA                          >=30          126    1171
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)       200     291
15-18 months   SAS-FoodSuppl    INDIA                          <20            27     291
15-18 months   SAS-FoodSuppl    INDIA                          >=30           64     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       408     658
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            39     658
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          211     658
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)      1348    2033
15-18 months   ZVITAMBO         ZIMBABWE                       <20           270    2033
15-18 months   ZVITAMBO         ZIMBABWE                       >=30          415    2033
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)       239     305
18-21 months   CMC-V-BCS-2002   INDIA                          <20            30     305
18-21 months   CMC-V-BCS-2002   INDIA                          >=30           36     305
18-21 months   COHORTS          GUATEMALA                      [20-30)       389     776
18-21 months   COHORTS          GUATEMALA                      <20            94     776
18-21 months   COHORTS          GUATEMALA                      >=30          293     776
18-21 months   EE               PAKISTAN                       [20-30)       107     254
18-21 months   EE               PAKISTAN                       <20             1     254
18-21 months   EE               PAKISTAN                       >=30          146     254
18-21 months   GMS-Nepal        NEPAL                          [20-30)       297     445
18-21 months   GMS-Nepal        NEPAL                          <20            81     445
18-21 months   GMS-Nepal        NEPAL                          >=30           67     445
18-21 months   IRC              INDIA                          [20-30)       318     379
18-21 months   IRC              INDIA                          <20            33     379
18-21 months   IRC              INDIA                          >=30           28     379
18-21 months   Keneba           GAMBIA                         [20-30)       606    1344
18-21 months   Keneba           GAMBIA                         <20           158    1344
18-21 months   Keneba           GAMBIA                         >=30          580    1344
18-21 months   LCNI-5           MALAWI                         [20-30)       206     389
18-21 months   LCNI-5           MALAWI                         <20            66     389
18-21 months   LCNI-5           MALAWI                         >=30          117     389
18-21 months   MAL-ED           BANGLADESH                     [20-30)       144     209
18-21 months   MAL-ED           BANGLADESH                     <20            28     209
18-21 months   MAL-ED           BANGLADESH                     >=30           37     209
18-21 months   MAL-ED           BRAZIL                         [20-30)       101     167
18-21 months   MAL-ED           BRAZIL                         <20            26     167
18-21 months   MAL-ED           BRAZIL                         >=30           40     167
18-21 months   MAL-ED           INDIA                          [20-30)       171     224
18-21 months   MAL-ED           INDIA                          <20            33     224
18-21 months   MAL-ED           INDIA                          >=30           20     224
18-21 months   MAL-ED           NEPAL                          [20-30)       179     227
18-21 months   MAL-ED           NEPAL                          <20             3     227
18-21 months   MAL-ED           NEPAL                          >=30           45     227
18-21 months   MAL-ED           PERU                           [20-30)        95     202
18-21 months   MAL-ED           PERU                           <20            58     202
18-21 months   MAL-ED           PERU                           >=30           49     202
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)       103     233
18-21 months   MAL-ED           SOUTH AFRICA                   <20            37     233
18-21 months   MAL-ED           SOUTH AFRICA                   >=30           93     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       107     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            11     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           86     204
18-21 months   NIH-Birth        BANGLADESH                     [20-30)       286     420
18-21 months   NIH-Birth        BANGLADESH                     <20            42     420
18-21 months   NIH-Birth        BANGLADESH                     >=30           92     420
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)       360     546
18-21 months   NIH-Crypto       BANGLADESH                     <20           101     546
18-21 months   NIH-Crypto       BANGLADESH                     >=30           85     546
18-21 months   PROBIT           BELARUS                        [20-30)       156     218
18-21 months   PROBIT           BELARUS                        <20            27     218
18-21 months   PROBIT           BELARUS                        >=30           35     218
18-21 months   PROVIDE          BANGLADESH                     [20-30)       385     541
18-21 months   PROVIDE          BANGLADESH                     <20            60     541
18-21 months   PROVIDE          BANGLADESH                     >=30           96     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         5       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            4       9
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)      1062    1593
18-21 months   ZVITAMBO         ZIMBABWE                       <20           189    1593
18-21 months   ZVITAMBO         ZIMBABWE                       >=30          342    1593
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)       246     308
21-24 months   CMC-V-BCS-2002   INDIA                          <20            28     308
21-24 months   CMC-V-BCS-2002   INDIA                          >=30           34     308
21-24 months   COHORTS          GUATEMALA                      [20-30)       416     858
21-24 months   COHORTS          GUATEMALA                      <20           119     858
21-24 months   COHORTS          GUATEMALA                      >=30          323     858
21-24 months   EE               PAKISTAN                       [20-30)        38     106
21-24 months   EE               PAKISTAN                       <20             1     106
21-24 months   EE               PAKISTAN                       >=30           67     106
21-24 months   GMS-Nepal        NEPAL                          [20-30)       228     342
21-24 months   GMS-Nepal        NEPAL                          <20            61     342
21-24 months   GMS-Nepal        NEPAL                          >=30           53     342
21-24 months   IRC              INDIA                          [20-30)       326     389
21-24 months   IRC              INDIA                          <20            34     389
21-24 months   IRC              INDIA                          >=30           29     389
21-24 months   Keneba           GAMBIA                         [20-30)       545    1201
21-24 months   Keneba           GAMBIA                         <20           143    1201
21-24 months   Keneba           GAMBIA                         >=30          513    1201
21-24 months   LCNI-5           MALAWI                         [20-30)       176     332
21-24 months   LCNI-5           MALAWI                         <20            60     332
21-24 months   LCNI-5           MALAWI                         >=30           96     332
21-24 months   MAL-ED           BANGLADESH                     [20-30)       142     207
21-24 months   MAL-ED           BANGLADESH                     <20            28     207
21-24 months   MAL-ED           BANGLADESH                     >=30           37     207
21-24 months   MAL-ED           BRAZIL                         [20-30)        98     165
21-24 months   MAL-ED           BRAZIL                         <20            27     165
21-24 months   MAL-ED           BRAZIL                         >=30           40     165
21-24 months   MAL-ED           INDIA                          [20-30)       171     224
21-24 months   MAL-ED           INDIA                          <20            33     224
21-24 months   MAL-ED           INDIA                          >=30           20     224
21-24 months   MAL-ED           NEPAL                          [20-30)       178     227
21-24 months   MAL-ED           NEPAL                          <20             4     227
21-24 months   MAL-ED           NEPAL                          >=30           45     227
21-24 months   MAL-ED           PERU                           [20-30)        92     189
21-24 months   MAL-ED           PERU                           <20            49     189
21-24 months   MAL-ED           PERU                           >=30           48     189
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)       103     235
21-24 months   MAL-ED           SOUTH AFRICA                   <20            39     235
21-24 months   MAL-ED           SOUTH AFRICA                   >=30           93     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       109     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             8     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           87     204
21-24 months   NIH-Birth        BANGLADESH                     [20-30)       279     409
21-24 months   NIH-Birth        BANGLADESH                     <20            39     409
21-24 months   NIH-Birth        BANGLADESH                     >=30           91     409
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)       318     490
21-24 months   NIH-Crypto       BANGLADESH                     <20            95     490
21-24 months   NIH-Crypto       BANGLADESH                     >=30           77     490
21-24 months   PROBIT           BELARUS                        [20-30)       150     209
21-24 months   PROBIT           BELARUS                        <20            23     209
21-24 months   PROBIT           BELARUS                        >=30           36     209
21-24 months   PROVIDE          BANGLADESH                     [20-30)       335     471
21-24 months   PROVIDE          BANGLADESH                     <20            54     471
21-24 months   PROVIDE          BANGLADESH                     >=30           82     471
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)       780    1167
21-24 months   ZVITAMBO         ZIMBABWE                       <20           147    1167
21-24 months   ZVITAMBO         ZIMBABWE                       >=30          240    1167


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b1ed4524-9dd2-468f-ad46-d28adc89907a/ec2602e9-2b34-4351-9465-449943c0b216/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1ed4524-9dd2-468f-ad46-d28adc89907a/ec2602e9-2b34-4351-9465-449943c0b216/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b1ed4524-9dd2-468f-ad46-d28adc89907a/ec2602e9-2b34-4351-9465-449943c0b216/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              NA                -0.5195859   -0.5515939   -0.4875778
0-3 months     COHORTS          GUATEMALA                      <20                  NA                -0.5437627   -0.6018585   -0.4856669
0-3 months     COHORTS          GUATEMALA                      >=30                 NA                -0.5562400   -0.5905166   -0.5219635
0-3 months     COHORTS          INDIA                          [20-30)              NA                -0.0557007   -0.0654426   -0.0459588
0-3 months     COHORTS          INDIA                          <20                  NA                -0.0466296   -0.0717862   -0.0214731
0-3 months     COHORTS          INDIA                          >=30                 NA                -0.1114038   -0.1294945   -0.0933130
0-3 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0298800   -0.0609085    0.0011484
0-3 months     GMS-Nepal        NEPAL                          <20                  NA                 0.0056194   -0.0513663    0.0626052
0-3 months     GMS-Nepal        NEPAL                          >=30                 NA                -0.0844917   -0.1485206   -0.0204628
0-3 months     IRC              INDIA                          [20-30)              NA                -0.2528215   -0.3136482   -0.1919947
0-3 months     IRC              INDIA                          <20                  NA                -0.2921599   -0.4680670   -0.1162528
0-3 months     IRC              INDIA                          >=30                 NA                -0.2467088   -0.4470637   -0.0463538
0-3 months     Keneba           GAMBIA                         [20-30)              NA                -0.2752901   -0.3112523   -0.2393278
0-3 months     Keneba           GAMBIA                         <20                  NA                -0.1781821   -0.2395182   -0.1168459
0-3 months     Keneba           GAMBIA                         >=30                 NA                -0.3326082   -0.3689448   -0.2962716
0-3 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0853665   -0.1244963   -0.0462367
0-3 months     MAL-ED           BANGLADESH                     <20                  NA                -0.2123572   -0.3063389   -0.1183755
0-3 months     MAL-ED           BANGLADESH                     >=30                 NA                -0.1928962   -0.2733888   -0.1124036
0-3 months     MAL-ED           BRAZIL                         [20-30)              NA                 0.1638795    0.0887784    0.2389806
0-3 months     MAL-ED           BRAZIL                         <20                  NA                 0.1062050   -0.0425407    0.2549508
0-3 months     MAL-ED           BRAZIL                         >=30                 NA                 0.0798402   -0.0232682    0.1829486
0-3 months     MAL-ED           INDIA                          [20-30)              NA                -0.0628138   -0.1196240   -0.0060037
0-3 months     MAL-ED           INDIA                          <20                  NA                -0.0239520   -0.1447674    0.0968635
0-3 months     MAL-ED           INDIA                          >=30                 NA                -0.0608855   -0.2600524    0.1382813
0-3 months     MAL-ED           NEPAL                          [20-30)              NA                 0.0501407   -0.0000240    0.1003054
0-3 months     MAL-ED           NEPAL                          <20                  NA                 0.1895547    0.0167606    0.3623488
0-3 months     MAL-ED           NEPAL                          >=30                 NA                 0.0508890   -0.0527433    0.1545213
0-3 months     MAL-ED           PERU                           [20-30)              NA                -0.2459930   -0.2948137   -0.1971723
0-3 months     MAL-ED           PERU                           <20                  NA                -0.2326549   -0.2915514   -0.1737583
0-3 months     MAL-ED           PERU                           >=30                 NA                -0.3379881   -0.4124303   -0.2635459
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1966432   -0.2632451   -0.1300414
0-3 months     MAL-ED           SOUTH AFRICA                   <20                  NA                -0.2373054   -0.3694892   -0.1051215
0-3 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.1268735   -0.2116906   -0.0420564
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0931578   -0.1456466   -0.0406691
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2412330   -0.4059772   -0.0764887
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1859673   -0.2466753   -0.1252594
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.2245099   -0.2584399   -0.1905800
0-3 months     NIH-Birth        BANGLADESH                     <20                  NA                -0.2195885   -0.2936501   -0.1455269
0-3 months     NIH-Birth        BANGLADESH                     >=30                 NA                -0.2575026   -0.3082271   -0.2067781
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.2297974   -0.2507025   -0.2088924
0-3 months     NIH-Crypto       BANGLADESH                     <20                  NA                -0.2433598   -0.2897883   -0.1969312
0-3 months     NIH-Crypto       BANGLADESH                     >=30                 NA                -0.2240410   -0.2649846   -0.1830973
0-3 months     PROBIT           BELARUS                        [20-30)              NA                -0.4278303   -0.4865617   -0.3690988
0-3 months     PROBIT           BELARUS                        <20                  NA                -0.4096357   -0.4734321   -0.3458392
0-3 months     PROBIT           BELARUS                        >=30                 NA                -0.4407805   -0.5011356   -0.3804253
0-3 months     PROVIDE          BANGLADESH                     [20-30)              NA                -0.1891876   -0.2095329   -0.1688424
0-3 months     PROVIDE          BANGLADESH                     <20                  NA                -0.1563821   -0.2115391   -0.1012252
0-3 months     PROVIDE          BANGLADESH                     >=30                 NA                -0.2033795   -0.2445289   -0.1622301
0-3 months     SAS-CompFeed     INDIA                          [20-30)              NA                -0.1205888   -0.1455770   -0.0956006
0-3 months     SAS-CompFeed     INDIA                          <20                  NA                -0.0986383   -0.1799546   -0.0173221
0-3 months     SAS-CompFeed     INDIA                          >=30                 NA                -0.2001474   -0.2660070   -0.1342878
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1276979   -0.1402657   -0.1151301
0-3 months     ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1504875   -0.1766139   -0.1243610
0-3 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1780538   -0.2018393   -0.1542683
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.1096271   -0.1612291   -0.0580252
3-6 months     CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0761972   -0.0725615    0.2249560
3-6 months     CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1484354   -0.3124587    0.0155880
3-6 months     COHORTS          GUATEMALA                      [20-30)              NA                -0.1025099   -0.1227715   -0.0822483
3-6 months     COHORTS          GUATEMALA                      <20                  NA                -0.0556737   -0.0914390   -0.0199085
3-6 months     COHORTS          GUATEMALA                      >=30                 NA                -0.1008526   -0.1259621   -0.0757430
3-6 months     COHORTS          INDIA                          [20-30)              NA                -0.0614302   -0.0691645   -0.0536959
3-6 months     COHORTS          INDIA                          <20                  NA                -0.0523650   -0.0734076   -0.0313225
3-6 months     COHORTS          INDIA                          >=30                 NA                -0.0735276   -0.0873959   -0.0596593
3-6 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.1577653   -0.1803357   -0.1351950
3-6 months     GMS-Nepal        NEPAL                          <20                  NA                -0.1330263   -0.1785405   -0.0875121
3-6 months     GMS-Nepal        NEPAL                          >=30                 NA                -0.2078660   -0.2537342   -0.1619979
3-6 months     IRC              INDIA                          [20-30)              NA                -0.0654366   -0.0973114   -0.0335618
3-6 months     IRC              INDIA                          <20                  NA                 0.0627658   -0.0522785    0.1778101
3-6 months     IRC              INDIA                          >=30                 NA                -0.0336443   -0.1528014    0.0855127
3-6 months     Keneba           GAMBIA                         [20-30)              NA                -0.0162043   -0.0451061    0.0126975
3-6 months     Keneba           GAMBIA                         <20                  NA                 0.0281256   -0.0215178    0.0777690
3-6 months     Keneba           GAMBIA                         >=30                 NA                -0.0319487   -0.0585817   -0.0053157
3-6 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0297634   -0.0581837   -0.0013430
3-6 months     MAL-ED           BANGLADESH                     <20                  NA                -0.0097911   -0.0735806    0.0539984
3-6 months     MAL-ED           BANGLADESH                     >=30                 NA                -0.0020685   -0.0577728    0.0536358
3-6 months     MAL-ED           BRAZIL                         [20-30)              NA                 0.0493080    0.0001510    0.0984649
3-6 months     MAL-ED           BRAZIL                         <20                  NA                 0.0962168    0.0096896    0.1827440
3-6 months     MAL-ED           BRAZIL                         >=30                 NA                 0.0584991   -0.0090466    0.1260448
3-6 months     MAL-ED           INDIA                          [20-30)              NA                -0.0494266   -0.0832835   -0.0155697
3-6 months     MAL-ED           INDIA                          <20                  NA                 0.0210335   -0.0396458    0.0817128
3-6 months     MAL-ED           INDIA                          >=30                 NA                -0.0579857   -0.1664098    0.0504384
3-6 months     MAL-ED           NEPAL                          [20-30)              NA                -0.0214674   -0.0519312    0.0089965
3-6 months     MAL-ED           NEPAL                          <20                  NA                -0.0058053   -0.1992110    0.1876003
3-6 months     MAL-ED           NEPAL                          >=30                 NA                -0.0313303   -0.0862545    0.0235938
3-6 months     MAL-ED           PERU                           [20-30)              NA                 0.0289784   -0.0189287    0.0768855
3-6 months     MAL-ED           PERU                           <20                  NA                 0.0379969   -0.0191549    0.0951488
3-6 months     MAL-ED           PERU                           >=30                 NA                 0.0034715   -0.0518947    0.0588378
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0135781   -0.0436785    0.0708347
3-6 months     MAL-ED           SOUTH AFRICA                   <20                  NA                 0.0445750   -0.0441472    0.1332972
3-6 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0505266   -0.1110442    0.0099909
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0996094   -0.1447276   -0.0544912
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0527785   -0.1890927    0.0835358
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0362331   -0.0839947    0.0115285
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0451177   -0.0722440   -0.0179913
3-6 months     NIH-Birth        BANGLADESH                     <20                  NA                -0.0684362   -0.1277685   -0.0091038
3-6 months     NIH-Birth        BANGLADESH                     >=30                 NA                -0.0616876   -0.1107096   -0.0126656
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0300487    0.0088154    0.0512819
3-6 months     NIH-Crypto       BANGLADESH                     <20                  NA                 0.0359284    0.0012004    0.0706563
3-6 months     NIH-Crypto       BANGLADESH                     >=30                 NA                 0.0046981   -0.0380083    0.0474044
3-6 months     PROBIT           BELARUS                        [20-30)              NA                 0.0515123    0.0317631    0.0712615
3-6 months     PROBIT           BELARUS                        <20                  NA                 0.0555228    0.0303415    0.0807040
3-6 months     PROBIT           BELARUS                        >=30                 NA                 0.0399920    0.0159555    0.0640286
3-6 months     PROVIDE          BANGLADESH                     [20-30)              NA                -0.0211785   -0.0399140   -0.0024431
3-6 months     PROVIDE          BANGLADESH                     <20                  NA                -0.0314221   -0.0794813    0.0166370
3-6 months     PROVIDE          BANGLADESH                     >=30                 NA                -0.0459858   -0.0840674   -0.0079041
3-6 months     SAS-CompFeed     INDIA                          [20-30)              NA                -0.0195752   -0.0422448    0.0030944
3-6 months     SAS-CompFeed     INDIA                          <20                  NA                 0.0284895   -0.0427313    0.0997102
3-6 months     SAS-CompFeed     INDIA                          >=30                 NA                -0.0415101   -0.0908503    0.0078300
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0925716   -0.1134376   -0.0717055
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0966434   -0.1658198   -0.0274669
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0668702   -0.0965809   -0.0371595
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012040   -0.0125520    0.0101441
3-6 months     ZVITAMBO         ZIMBABWE                       <20                  NA                 0.0063391   -0.0183450    0.0310232
3-6 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0054673   -0.0258922    0.0149577
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0870853   -0.1247046   -0.0494660
6-9 months     CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0053891   -0.1475992    0.1583774
6-9 months     CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1130542   -0.1916598   -0.0344486
6-9 months     COHORTS          GUATEMALA                      [20-30)              NA                -0.1332294   -0.1498794   -0.1165794
6-9 months     COHORTS          GUATEMALA                      <20                  NA                -0.0866605   -0.1207979   -0.0525232
6-9 months     COHORTS          GUATEMALA                      >=30                 NA                -0.1155367   -0.1348964   -0.0961770
6-9 months     COHORTS          INDIA                          [20-30)              NA                -0.0998575   -0.1066949   -0.0930200
6-9 months     COHORTS          INDIA                          <20                  NA                -0.0990594   -0.1207933   -0.0773255
6-9 months     COHORTS          INDIA                          >=30                 NA                -0.1061540   -0.1180293   -0.0942787
6-9 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0465876   -0.0703897   -0.0227855
6-9 months     GMS-Nepal        NEPAL                          <20                  NA                -0.0215718   -0.0533261    0.0101825
6-9 months     GMS-Nepal        NEPAL                          >=30                 NA                -0.0580207   -0.0901492   -0.0258922
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0999386   -0.1255629   -0.0743143
6-9 months     Guatemala BSC    GUATEMALA                      <20                  NA                -0.0735213   -0.1224478   -0.0245948
6-9 months     Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0960812   -0.1332477   -0.0589147
6-9 months     IRC              INDIA                          [20-30)              NA                -0.0174179   -0.0402977    0.0054619
6-9 months     IRC              INDIA                          <20                  NA                -0.0199763   -0.1163538    0.0764011
6-9 months     IRC              INDIA                          >=30                 NA                 0.0019006   -0.0664174    0.0702187
6-9 months     Keneba           GAMBIA                         [20-30)              NA                 0.0064655   -0.0264683    0.0393993
6-9 months     Keneba           GAMBIA                         <20                  NA                -0.0316674   -0.1014367    0.0381019
6-9 months     Keneba           GAMBIA                         >=30                 NA                -0.0284555   -0.0621720    0.0052610
6-9 months     LCNI-5           MALAWI                         [20-30)              NA                 0.0358068    0.0106717    0.0609420
6-9 months     LCNI-5           MALAWI                         <20                  NA                 0.0554913    0.0218536    0.0891290
6-9 months     LCNI-5           MALAWI                         >=30                 NA                 0.0275058   -0.0062586    0.0612702
6-9 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0636667   -0.0844417   -0.0428917
6-9 months     MAL-ED           BANGLADESH                     <20                  NA                -0.0414491   -0.0865880    0.0036898
6-9 months     MAL-ED           BANGLADESH                     >=30                 NA                -0.1229669   -0.1606486   -0.0852853
6-9 months     MAL-ED           BRAZIL                         [20-30)              NA                 0.0426308   -0.0046256    0.0898872
6-9 months     MAL-ED           BRAZIL                         <20                  NA                -0.0510633   -0.1214230    0.0192964
6-9 months     MAL-ED           BRAZIL                         >=30                 NA                -0.0372826   -0.1031853    0.0286201
6-9 months     MAL-ED           INDIA                          [20-30)              NA                -0.0867280   -0.1129370   -0.0605191
6-9 months     MAL-ED           INDIA                          <20                  NA                -0.0156187   -0.0733376    0.0421002
6-9 months     MAL-ED           INDIA                          >=30                 NA                -0.0565368   -0.1151744    0.0021008
6-9 months     MAL-ED           PERU                           [20-30)              NA                -0.0483224   -0.0837640   -0.0128809
6-9 months     MAL-ED           PERU                           <20                  NA                -0.0319884   -0.0752023    0.0112254
6-9 months     MAL-ED           PERU                           >=30                 NA                -0.0042349   -0.0537143    0.0452446
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0230057   -0.0657587    0.0197473
6-9 months     MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0060962   -0.0813528    0.0691604
6-9 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0170494   -0.0592247    0.0251260
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1098444   -0.1541585   -0.0655304
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1817409   -0.3220201   -0.0414616
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0625747   -0.1155811   -0.0095683
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0651195   -0.0866804   -0.0435587
6-9 months     NIH-Birth        BANGLADESH                     <20                  NA                -0.0713684   -0.1263480   -0.0163888
6-9 months     NIH-Birth        BANGLADESH                     >=30                 NA                -0.0413166   -0.0802239   -0.0024093
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0221973   -0.0384905   -0.0059041
6-9 months     NIH-Crypto       BANGLADESH                     <20                  NA                -0.0452948   -0.0734208   -0.0171688
6-9 months     NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0519017   -0.0805609   -0.0232424
6-9 months     PROBIT           BELARUS                        [20-30)              NA                 0.0550614    0.0406904    0.0694324
6-9 months     PROBIT           BELARUS                        <20                  NA                 0.0629774    0.0307485    0.0952064
6-9 months     PROBIT           BELARUS                        >=30                 NA                 0.0375681    0.0216856    0.0534507
6-9 months     PROVIDE          BANGLADESH                     [20-30)              NA                -0.0638086   -0.0768306   -0.0507866
6-9 months     PROVIDE          BANGLADESH                     <20                  NA                -0.0496782   -0.0809644   -0.0183920
6-9 months     PROVIDE          BANGLADESH                     >=30                 NA                -0.0590645   -0.0839549   -0.0341740
6-9 months     SAS-CompFeed     INDIA                          [20-30)              NA                -0.0829483   -0.1017037   -0.0641929
6-9 months     SAS-CompFeed     INDIA                          <20                  NA                -0.0965320   -0.1521942   -0.0408698
6-9 months     SAS-CompFeed     INDIA                          >=30                 NA                -0.0642796   -0.1068767   -0.0216824
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.1066324   -0.1271184   -0.0861465
6-9 months     SAS-FoodSuppl    INDIA                          <20                  NA                -0.0713091   -0.1385280   -0.0040902
6-9 months     SAS-FoodSuppl    INDIA                          >=30                 NA                -0.1130082   -0.1552391   -0.0707772
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0478609   -0.0685499   -0.0271720
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0392894   -0.1034559    0.0248771
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0630049   -0.0907609   -0.0352489
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0275837   -0.0381024   -0.0170649
6-9 months     ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0296745   -0.0513817   -0.0079672
6-9 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0470213   -0.0650182   -0.0290243
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.1194852   -0.1507767   -0.0881936
9-12 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1821995   -0.2676744   -0.0967245
9-12 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0693394   -0.1658529    0.0271741
9-12 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0960494   -0.1108795   -0.0812194
9-12 months    COHORTS          GUATEMALA                      <20                  NA                -0.0907296   -0.1181584   -0.0633009
9-12 months    COHORTS          GUATEMALA                      >=30                 NA                -0.0787013   -0.0940033   -0.0633993
9-12 months    COHORTS          INDIA                          [20-30)              NA                -0.0907578   -0.0976910   -0.0838246
9-12 months    COHORTS          INDIA                          <20                  NA                -0.0850126   -0.1074782   -0.0625470
9-12 months    COHORTS          INDIA                          >=30                 NA                -0.0929542   -0.1041992   -0.0817091
9-12 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0876703   -0.1061249   -0.0692157
9-12 months    GMS-Nepal        NEPAL                          <20                  NA                -0.0531924   -0.0751157   -0.0312690
9-12 months    GMS-Nepal        NEPAL                          >=30                 NA                -0.0759958   -0.1024816   -0.0495101
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0678862   -0.0874833   -0.0482891
9-12 months    Guatemala BSC    GUATEMALA                      <20                  NA                -0.0270972   -0.0730461    0.0188517
9-12 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0596637   -0.0910693   -0.0282581
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                -0.0572899   -0.0763121   -0.0382676
9-12 months    iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0184469   -0.0589259    0.0220320
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=30                 NA                -0.0493169   -0.0757302   -0.0229037
9-12 months    IRC              INDIA                          [20-30)              NA                -0.0378266   -0.0557718   -0.0198814
9-12 months    IRC              INDIA                          <20                  NA                -0.0315302   -0.0930456    0.0299852
9-12 months    IRC              INDIA                          >=30                 NA                -0.0214786   -0.0985246    0.0555674
9-12 months    Keneba           GAMBIA                         [20-30)              NA                -0.0986915   -0.1253097   -0.0720734
9-12 months    Keneba           GAMBIA                         <20                  NA                -0.0632124   -0.1013707   -0.0250542
9-12 months    Keneba           GAMBIA                         >=30                 NA                -0.1134605   -0.1413327   -0.0855883
9-12 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0354163   -0.0609922   -0.0098403
9-12 months    LCNI-5           MALAWI                         <20                  NA                -0.1020263   -0.1646291   -0.0394235
9-12 months    LCNI-5           MALAWI                         >=30                 NA                -0.0439538   -0.0750647   -0.0128429
9-12 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0884929   -0.1070789   -0.0699070
9-12 months    MAL-ED           BANGLADESH                     <20                  NA                -0.0952280   -0.1456049   -0.0448511
9-12 months    MAL-ED           BANGLADESH                     >=30                 NA                -0.0753658   -0.1146198   -0.0361118
9-12 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0112707   -0.0460135    0.0234722
9-12 months    MAL-ED           BRAZIL                         <20                  NA                -0.0163006   -0.1077188    0.0751176
9-12 months    MAL-ED           BRAZIL                         >=30                 NA                 0.0804534    0.0128617    0.1480451
9-12 months    MAL-ED           INDIA                          [20-30)              NA                -0.0844569   -0.1022106   -0.0667032
9-12 months    MAL-ED           INDIA                          <20                  NA                -0.1330870   -0.1687449   -0.0974292
9-12 months    MAL-ED           INDIA                          >=30                 NA                -0.0888466   -0.1553350   -0.0223583
9-12 months    MAL-ED           PERU                           [20-30)              NA                -0.0515286   -0.0809394   -0.0221179
9-12 months    MAL-ED           PERU                           <20                  NA                -0.0248689   -0.0674310    0.0176932
9-12 months    MAL-ED           PERU                           >=30                 NA                -0.0418302   -0.0872878    0.0036274
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0751381   -0.1102847   -0.0399915
9-12 months    MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0429576   -0.1108199    0.0249046
9-12 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.1150585   -0.1625783   -0.0675386
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1090220   -0.1594894   -0.0585545
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1511949   -0.2802194   -0.0221703
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.2094677   -0.2547051   -0.1642303
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0358276   -0.0538563   -0.0177990
9-12 months    NIH-Birth        BANGLADESH                     <20                  NA                -0.0346392   -0.0805985    0.0113202
9-12 months    NIH-Birth        BANGLADESH                     >=30                 NA                -0.0628831   -0.0903500   -0.0354162
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0365498   -0.0498049   -0.0232946
9-12 months    NIH-Crypto       BANGLADESH                     <20                  NA                -0.0479324   -0.0716874   -0.0241774
9-12 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0117979   -0.0419085    0.0183128
9-12 months    PROBIT           BELARUS                        [20-30)              NA                 0.0317156    0.0110383    0.0523929
9-12 months    PROBIT           BELARUS                        <20                  NA                 0.0528855    0.0227728    0.0829982
9-12 months    PROBIT           BELARUS                        >=30                 NA                 0.0478198    0.0234142    0.0722254
9-12 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0617392   -0.0748832   -0.0485952
9-12 months    PROVIDE          BANGLADESH                     <20                  NA                -0.0618368   -0.0965572   -0.0271164
9-12 months    PROVIDE          BANGLADESH                     >=30                 NA                -0.0688670   -0.0929047   -0.0448293
9-12 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0851693   -0.1023589   -0.0679796
9-12 months    SAS-CompFeed     INDIA                          <20                  NA                -0.0361972   -0.0745266    0.0021322
9-12 months    SAS-CompFeed     INDIA                          >=30                 NA                -0.1032224   -0.1356425   -0.0708024
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.1608531   -0.2227892   -0.0989169
9-12 months    SAS-FoodSuppl    INDIA                          <20                  NA                -0.1269200   -0.3486176    0.0947775
9-12 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -0.1105436   -0.2404596    0.0193725
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0663256   -0.0841856   -0.0484657
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0512357   -0.1086834    0.0062120
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0697850   -0.0962284   -0.0433416
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0626175   -0.0719490   -0.0532859
9-12 months    ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0479217   -0.0673902   -0.0284532
9-12 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0542713   -0.0703231   -0.0382195
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0597042   -0.0928453   -0.0265632
12-15 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1349772   -0.1981803   -0.0717741
12-15 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1009927   -0.1617561   -0.0402293
12-15 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0911910   -0.1060610   -0.0763210
12-15 months   COHORTS          GUATEMALA                      <20                  NA                -0.0873289   -0.1146632   -0.0599945
12-15 months   COHORTS          GUATEMALA                      >=30                 NA                -0.0826962   -0.0988621   -0.0665303
12-15 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0677337   -0.0820940   -0.0533733
12-15 months   GMS-Nepal        NEPAL                          <20                  NA                -0.0637578   -0.0857125   -0.0418032
12-15 months   GMS-Nepal        NEPAL                          >=30                 NA                -0.0658256   -0.0876035   -0.0440477
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0200011   -0.0508729    0.0108707
12-15 months   Guatemala BSC    GUATEMALA                      <20                  NA                 0.0396565   -0.0008002    0.0801132
12-15 months   Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0072055   -0.0504851    0.0360741
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                -0.0466079   -0.0649252   -0.0282905
12-15 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0284728   -0.0969759    0.0400302
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                -0.0417886   -0.0682453   -0.0153318
12-15 months   IRC              INDIA                          [20-30)              NA                -0.0392536   -0.0575533   -0.0209539
12-15 months   IRC              INDIA                          <20                  NA                -0.0844387   -0.1359883   -0.0328892
12-15 months   IRC              INDIA                          >=30                 NA                -0.0735586   -0.1376946   -0.0094225
12-15 months   Keneba           GAMBIA                         [20-30)              NA                -0.0574008   -0.0749622   -0.0398394
12-15 months   Keneba           GAMBIA                         <20                  NA                -0.0361919   -0.0672996   -0.0050842
12-15 months   Keneba           GAMBIA                         >=30                 NA                -0.0540047   -0.0734135   -0.0345959
12-15 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0352088   -0.0815283    0.0111108
12-15 months   LCNI-5           MALAWI                         <20                  NA                -0.0723619   -0.1375638   -0.0071600
12-15 months   LCNI-5           MALAWI                         >=30                 NA                -0.0146703   -0.0709767    0.0416360
12-15 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0595435   -0.0769806   -0.0421064
12-15 months   MAL-ED           BANGLADESH                     <20                  NA                -0.0259776   -0.0781329    0.0261776
12-15 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.0646688   -0.1016459   -0.0276918
12-15 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0053715   -0.0348589    0.0241158
12-15 months   MAL-ED           BRAZIL                         <20                  NA                -0.0195041   -0.0728889    0.0338808
12-15 months   MAL-ED           BRAZIL                         >=30                 NA                 0.0169990   -0.0286745    0.0626725
12-15 months   MAL-ED           INDIA                          [20-30)              NA                -0.0606382   -0.0777683   -0.0435081
12-15 months   MAL-ED           INDIA                          <20                  NA                -0.0386472   -0.0750982   -0.0021963
12-15 months   MAL-ED           INDIA                          >=30                 NA                -0.0580697   -0.1213175    0.0051782
12-15 months   MAL-ED           PERU                           [20-30)              NA                -0.0665823   -0.0905666   -0.0425980
12-15 months   MAL-ED           PERU                           <20                  NA                -0.0724936   -0.1087629   -0.0362243
12-15 months   MAL-ED           PERU                           >=30                 NA                -0.0538816   -0.0921905   -0.0155728
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0641405   -0.1013032   -0.0269778
12-15 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0834989   -0.1292010   -0.0377968
12-15 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0427217   -0.0784575   -0.0069859
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0836666   -0.1177259   -0.0496074
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0748957   -0.1958450    0.0460536
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0511655   -0.0894387   -0.0128924
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1370738   -0.1524837   -0.1216638
12-15 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.1329216   -0.1779738   -0.0878695
12-15 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.0925106   -0.1491704   -0.0358508
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0428011   -0.0547422   -0.0308599
12-15 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.0206249   -0.0428151    0.0015652
12-15 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0397633   -0.0613669   -0.0181597
12-15 months   PROBIT           BELARUS                        [20-30)              NA                 0.0157405   -0.1202444    0.1517253
12-15 months   PROBIT           BELARUS                        <20                  NA                -0.0569584   -0.3598160    0.2458992
12-15 months   PROBIT           BELARUS                        >=30                 NA                 0.0084534   -0.1550390    0.1719458
12-15 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0512514   -0.0626928   -0.0398101
12-15 months   PROVIDE          BANGLADESH                     <20                  NA                -0.0191224   -0.0526278    0.0143830
12-15 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.0139189   -0.0388376    0.0109997
12-15 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0806928   -0.0945395   -0.0668461
12-15 months   SAS-CompFeed     INDIA                          <20                  NA                -0.0906585   -0.1260151   -0.0553020
12-15 months   SAS-CompFeed     INDIA                          >=30                 NA                -0.1056628   -0.1372360   -0.0740897
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0054807   -0.0558629    0.0449015
12-15 months   SAS-FoodSuppl    INDIA                          <20                  NA                 0.0337300   -0.0031399    0.0706000
12-15 months   SAS-FoodSuppl    INDIA                          >=30                 NA                 0.0442234    0.0155489    0.0728980
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0708258   -0.0885132   -0.0531384
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0547566   -0.1239892    0.0144760
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0528703   -0.0798008   -0.0259397
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0619119   -0.0747088   -0.0491150
12-15 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0647960   -0.0942814   -0.0353106
12-15 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0618103   -0.0859934   -0.0376273
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0689780   -0.0943266   -0.0436294
15-18 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0396383   -0.1326002    0.0533237
15-18 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0842139   -0.1557992   -0.0126286
15-18 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0584546   -0.0738208   -0.0430884
15-18 months   COHORTS          GUATEMALA                      <20                  NA                -0.0624272   -0.0926055   -0.0322489
15-18 months   COHORTS          GUATEMALA                      >=30                 NA                -0.0466460   -0.0648045   -0.0284875
15-18 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0795422   -0.0965024   -0.0625820
15-18 months   GMS-Nepal        NEPAL                          <20                  NA                -0.0471175   -0.0717700   -0.0224650
15-18 months   GMS-Nepal        NEPAL                          >=30                 NA                -0.0507589   -0.0718530   -0.0296649
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                -0.0204173   -0.0414621    0.0006275
15-18 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0143812   -0.0337677    0.0050053
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                -0.0156925   -0.0305503   -0.0008347
15-18 months   IRC              INDIA                          [20-30)              NA                -0.0392914   -0.0557490   -0.0228338
15-18 months   IRC              INDIA                          <20                  NA                -0.0336489   -0.0696717    0.0023739
15-18 months   IRC              INDIA                          >=30                 NA                -0.0352266   -0.0869743    0.0165210
15-18 months   Keneba           GAMBIA                         [20-30)              NA                -0.0310094   -0.0483081   -0.0137107
15-18 months   Keneba           GAMBIA                         <20                  NA                -0.0357795   -0.0667985   -0.0047605
15-18 months   Keneba           GAMBIA                         >=30                 NA                -0.0345626   -0.0519886   -0.0171365
15-18 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0635896   -0.0971452   -0.0300341
15-18 months   LCNI-5           MALAWI                         <20                  NA                -0.0676861   -0.1515006    0.0161285
15-18 months   LCNI-5           MALAWI                         >=30                 NA                -0.0308823   -0.0802377    0.0184731
15-18 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0424039   -0.0589904   -0.0258174
15-18 months   MAL-ED           BANGLADESH                     <20                  NA                -0.0734324   -0.1050321   -0.0418326
15-18 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.0360060   -0.0678648   -0.0041472
15-18 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0251631   -0.0483675   -0.0019588
15-18 months   MAL-ED           BRAZIL                         <20                  NA                 0.0301436   -0.0204372    0.0807243
15-18 months   MAL-ED           BRAZIL                         >=30                 NA                -0.0441691   -0.1002366    0.0118984
15-18 months   MAL-ED           INDIA                          [20-30)              NA                -0.0380374   -0.0526418   -0.0234330
15-18 months   MAL-ED           INDIA                          <20                  NA                -0.0527350   -0.0851055   -0.0203645
15-18 months   MAL-ED           INDIA                          >=30                 NA                -0.0091373   -0.0570463    0.0387716
15-18 months   MAL-ED           PERU                           [20-30)              NA                -0.0423066   -0.0631166   -0.0214966
15-18 months   MAL-ED           PERU                           <20                  NA                -0.0252084   -0.0587336    0.0083169
15-18 months   MAL-ED           PERU                           >=30                 NA                -0.0365411   -0.0659161   -0.0071661
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0070389   -0.0378620    0.0237843
15-18 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0397352   -0.0801004    0.0006299
15-18 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0472850   -0.0757240   -0.0188459
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0885346   -0.1197579   -0.0573112
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1134302   -0.2086919   -0.0181685
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0785547   -0.1124103   -0.0446990
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0570880   -0.0744522   -0.0397239
15-18 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.0680189   -0.1156829   -0.0203548
15-18 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.0553189   -0.0885823   -0.0220555
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0172695   -0.0279801   -0.0065589
15-18 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.0181935   -0.0352670   -0.0011199
15-18 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0140334   -0.0342240    0.0061572
15-18 months   PROBIT           BELARUS                        [20-30)              NA                -0.0165062   -0.2195870    0.1865746
15-18 months   PROBIT           BELARUS                        <20                  NA                 0.0722573    0.0192902    0.1252243
15-18 months   PROBIT           BELARUS                        >=30                 NA                -0.0293261   -0.1085751    0.0499229
15-18 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0311001   -0.0416091   -0.0205912
15-18 months   PROVIDE          BANGLADESH                     <20                  NA                -0.0593532   -0.0852817   -0.0334247
15-18 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.0499216   -0.0689346   -0.0309085
15-18 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0119285   -0.0246875    0.0008304
15-18 months   SAS-CompFeed     INDIA                          <20                  NA                -0.0245848   -0.0622150    0.0130454
15-18 months   SAS-CompFeed     INDIA                          >=30                 NA                 0.0050171   -0.0602081    0.0702423
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0416530   -0.0576533   -0.0256528
15-18 months   SAS-FoodSuppl    INDIA                          <20                  NA                -0.0314472   -0.0604434   -0.0024509
15-18 months   SAS-FoodSuppl    INDIA                          >=30                 NA                -0.0244041   -0.0542038    0.0053955
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0135896   -0.0330751    0.0058959
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0166438   -0.0513331    0.0846207
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0360399   -0.0627693   -0.0093105
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0572572   -0.0700857   -0.0444286
15-18 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0884096   -0.1176580   -0.0591613
15-18 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0625213   -0.0905468   -0.0344957
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0357995   -0.0617995   -0.0097995
18-21 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0677940   -0.1295235   -0.0060645
18-21 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0766296   -0.1330047   -0.0202546
18-21 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0204437   -0.0334366   -0.0074508
18-21 months   COHORTS          GUATEMALA                      <20                  NA                -0.0470051   -0.0735964   -0.0204138
18-21 months   COHORTS          GUATEMALA                      >=30                 NA                -0.0093777   -0.0269448    0.0081894
18-21 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0170513    0.0006620    0.0334405
18-21 months   GMS-Nepal        NEPAL                          <20                  NA                 0.0066752   -0.0109898    0.0243402
18-21 months   GMS-Nepal        NEPAL                          >=30                 NA                 0.0199075    0.0015024    0.0383127
18-21 months   IRC              INDIA                          [20-30)              NA                -0.0345237   -0.0491087   -0.0199387
18-21 months   IRC              INDIA                          <20                  NA                -0.0536839   -0.1010268   -0.0063410
18-21 months   IRC              INDIA                          >=30                 NA                -0.0871729   -0.1231102   -0.0512355
18-21 months   Keneba           GAMBIA                         [20-30)              NA                -0.0232378   -0.0424595   -0.0040160
18-21 months   Keneba           GAMBIA                         <20                  NA                -0.0294328   -0.0603875    0.0015219
18-21 months   Keneba           GAMBIA                         >=30                 NA                -0.0164808   -0.0326113   -0.0003504
18-21 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0066058   -0.0277221    0.0145104
18-21 months   LCNI-5           MALAWI                         <20                  NA                 0.0025030   -0.0279525    0.0329586
18-21 months   LCNI-5           MALAWI                         >=30                 NA                -0.0200557   -0.0621645    0.0220532
18-21 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0137895   -0.0282292    0.0006503
18-21 months   MAL-ED           BANGLADESH                     <20                  NA                 0.0053070   -0.0235937    0.0342077
18-21 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.0380265   -0.0622721   -0.0137809
18-21 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0252752   -0.0529861    0.0024357
18-21 months   MAL-ED           BRAZIL                         <20                  NA                 0.0166733   -0.0260368    0.0593834
18-21 months   MAL-ED           BRAZIL                         >=30                 NA                -0.0320164   -0.1008392    0.0368063
18-21 months   MAL-ED           INDIA                          [20-30)              NA                 0.0069056   -0.0063394    0.0201505
18-21 months   MAL-ED           INDIA                          <20                  NA                 0.0068598   -0.0191266    0.0328461
18-21 months   MAL-ED           INDIA                          >=30                 NA                -0.0108177   -0.0522050    0.0305697
18-21 months   MAL-ED           PERU                           [20-30)              NA                 0.0020144   -0.0205464    0.0245751
18-21 months   MAL-ED           PERU                           <20                  NA                -0.0258020   -0.0542838    0.0026798
18-21 months   MAL-ED           PERU                           >=30                 NA                -0.0068142   -0.0360367    0.0224082
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0435232   -0.0703693   -0.0166771
18-21 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0264012   -0.0744114    0.0216090
18-21 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0218824   -0.0542249    0.0104601
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0448159   -0.0749111   -0.0147207
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0266394   -0.0957440    0.1490228
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0145487   -0.0501227    0.0210252
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0424749   -0.0573176   -0.0276322
18-21 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.0083435   -0.0488995    0.0322124
18-21 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.0385275   -0.0660304   -0.0110245
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0322961   -0.0418719   -0.0227203
18-21 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.0232785   -0.0413482   -0.0052087
18-21 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0152142   -0.0385543    0.0081259
18-21 months   PROBIT           BELARUS                        [20-30)              NA                -0.0394322   -0.2765225    0.1976581
18-21 months   PROBIT           BELARUS                        <20                  NA                 0.0040160   -1.0650578    1.0730899
18-21 months   PROBIT           BELARUS                        >=30                 NA                -0.0173786   -0.4940565    0.4592993
18-21 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0088775   -0.0183291    0.0005741
18-21 months   PROVIDE          BANGLADESH                     <20                  NA                 0.0098413   -0.0194457    0.0391284
18-21 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.0321991   -0.0498735   -0.0145247
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0711784   -0.0853091   -0.0570478
18-21 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0377023   -0.0661153   -0.0092893
18-21 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0800865   -0.1089542   -0.0512187
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0258563    0.0012369    0.0504757
21-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0122499   -0.0497880    0.0742878
21-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0368148   -0.0743173    0.0006876
21-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0112305   -0.0223360   -0.0001250
21-24 months   COHORTS          GUATEMALA                      <20                  NA                 0.0091343   -0.0099734    0.0282420
21-24 months   COHORTS          GUATEMALA                      >=30                 NA                -0.0043321   -0.0177581    0.0090939
21-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0407687    0.0208758    0.0606616
21-24 months   GMS-Nepal        NEPAL                          <20                  NA                 0.0649420    0.0273004    0.1025836
21-24 months   GMS-Nepal        NEPAL                          >=30                 NA                 0.0604280    0.0322597    0.0885962
21-24 months   IRC              INDIA                          [20-30)              NA                -0.0103214   -0.0255332    0.0048904
21-24 months   IRC              INDIA                          <20                  NA                -0.0030328   -0.0447634    0.0386977
21-24 months   IRC              INDIA                          >=30                 NA                -0.0669784   -0.0999567   -0.0340002
21-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0110492   -0.0056353    0.0277336
21-24 months   Keneba           GAMBIA                         <20                  NA                 0.0009241   -0.0316931    0.0335413
21-24 months   Keneba           GAMBIA                         >=30                 NA                 0.0245787    0.0076745    0.0414828
21-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0143890   -0.0076773    0.0364552
21-24 months   LCNI-5           MALAWI                         <20                  NA                 0.0198117   -0.0280347    0.0676581
21-24 months   LCNI-5           MALAWI                         >=30                 NA                 0.0426185    0.0159285    0.0693085
21-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0198314    0.0056864    0.0339765
21-24 months   MAL-ED           BANGLADESH                     <20                  NA                 0.0254915   -0.0060361    0.0570192
21-24 months   MAL-ED           BANGLADESH                     >=30                 NA                 0.0479227    0.0155664    0.0802790
21-24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0034877   -0.0188599    0.0258354
21-24 months   MAL-ED           BRAZIL                         <20                  NA                 0.0412391    0.0076731    0.0748050
21-24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.0316276    0.0043656    0.0588896
21-24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0283553    0.0154885    0.0412221
21-24 months   MAL-ED           INDIA                          <20                  NA                 0.0521362    0.0291835    0.0750888
21-24 months   MAL-ED           INDIA                          >=30                 NA                -0.0030059   -0.0383388    0.0323270
21-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0582374    0.0352486    0.0812262
21-24 months   MAL-ED           PERU                           <20                  NA                 0.0389721    0.0155192    0.0624250
21-24 months   MAL-ED           PERU                           >=30                 NA                 0.0729309    0.0401774    0.1056844
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0417261    0.0209175    0.0625346
21-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                 0.0646359    0.0042062    0.1250657
21-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.0375415    0.0128065    0.0622765
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0030230   -0.0350325    0.0289865
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0021443   -0.1062224    0.1105109
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0243179   -0.0051277    0.0537636
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0461889    0.0322049    0.0601729
21-24 months   NIH-Birth        BANGLADESH                     <20                  NA                 0.0631114    0.0195444    0.1066784
21-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                 0.0161876   -0.0079102    0.0402855
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0543255    0.0442449    0.0644062
21-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                 0.0623804    0.0444817    0.0802791
21-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                 0.0726204    0.0500818    0.0951589
21-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0465056   -0.1012023    0.1942135
21-24 months   PROBIT           BELARUS                        <20                  NA                 0.0315734   -0.4065458    0.4696927
21-24 months   PROBIT           BELARUS                        >=30                 NA                 0.0870211   -0.4386642    0.6127064
21-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0463177    0.0362524    0.0563830
21-24 months   PROVIDE          BANGLADESH                     <20                  NA                 0.0698207    0.0444732    0.0951683
21-24 months   PROVIDE          BANGLADESH                     >=30                 NA                 0.0303607    0.0087204    0.0520011
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0133291   -0.0022428    0.0289010
21-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                 0.0136036   -0.0156337    0.0428408
21-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.0326822    0.0042916    0.0610728


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0687968   -0.0770166   -0.0605771
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0577332   -0.1080880   -0.0073784
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2311143   -0.2577835   -0.2044452
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1405848   -0.1508213   -0.1303484
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0637374   -0.0701991   -0.0572756
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0166009   -0.0350544    0.0018526
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0399792   -0.0691966   -0.0107619
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0512815   -0.0734273   -0.0291358
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855959   -0.1022434   -0.0689484
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009526   -0.0101595    0.0082543
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     COHORTS          INDIA                          NA                   NA                -0.1014177   -0.1071454   -0.0956901
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.0948900   -0.1145627   -0.0752174
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0120132   -0.0343936    0.0103671
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0368910    0.0192320    0.0545500
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0734757   -0.0960974   -0.0508539
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0605792   -0.0784441   -0.0427142
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516021   -0.0677504   -0.0354537
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0316942   -0.0400871   -0.0233013
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0887143   -0.0986894   -0.0787393
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0909643   -0.0966740   -0.0852547
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0594037   -0.0753549   -0.0434524
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0499402   -0.0646013   -0.0352791
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1015041   -0.1192400   -0.0837681
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0494486   -0.0691688   -0.0297284
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0919990   -0.1079025   -0.0760956
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0416197   -0.0560785   -0.0271610
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0663862   -0.0807212   -0.0520511
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0588361   -0.0662999   -0.0513723
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0875200   -0.0977014   -0.0773386
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0100547   -0.0332477    0.0131383
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0427385   -0.0590126   -0.0264645
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0535658   -0.0656786   -0.0414531
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0331614   -0.0654721   -0.0008507
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0571577   -0.0724560   -0.0418594
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1269308   -0.1438534   -0.1100082
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0642805   -0.0788249   -0.0497361
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622601   -0.0728235   -0.0516967
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0545580   -0.0655035   -0.0436124
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0180990   -0.0311844   -0.0050137
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0330896   -0.0445388   -0.0216403
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0544218   -0.0816641   -0.0271795
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0376223   -0.0505517   -0.0246930
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0578740   -0.0725780   -0.0431699
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189968   -0.0343841   -0.0036094
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624691   -0.0734406   -0.0514976
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0194829   -0.0293542   -0.0096117
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0210501   -0.0327493   -0.0093510
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0091057   -0.0267909    0.0085796
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0053164   -0.0061285    0.0167612
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0381971   -0.0506802   -0.0257139
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0305103   -0.2535719    0.1925513
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0691191   -0.0809035   -0.0573348
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0058090   -0.0136683    0.0020502
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0156226    0.0044528    0.0267924
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0235317    0.0070110    0.0400524
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0290586    0.0180675    0.0400498
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0411275    0.0293417    0.0529132
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0518411   -0.0993926    0.2030747
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0173437    0.0048466    0.0298409


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <20                  [20-30)           -0.0241768   -0.0905065    0.0421530
0-3 months     COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0366542   -0.0835519    0.0102436
0-3 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <20                  [20-30)            0.0090710   -0.0179059    0.0360480
0-3 months     COHORTS          INDIA                          >=30                 [20-30)           -0.0557031   -0.0762501   -0.0351561
0-3 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0354995   -0.0293861    0.1003851
0-3 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0546117   -0.1257627    0.0165393
0-3 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <20                  [20-30)           -0.0393384   -0.2254653    0.1467884
0-3 months     IRC              INDIA                          >=30                 [20-30)            0.0061127   -0.2032721    0.2154975
0-3 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <20                  [20-30)            0.0971080    0.0260066    0.1682094
0-3 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.0573182   -0.1084419   -0.0061944
0-3 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <20                  [20-30)           -0.1269907   -0.2287930   -0.0251885
0-3 months     MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1075297   -0.1970294   -0.0180300
0-3 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <20                  [20-30)           -0.0576745   -0.2243042    0.1089553
0-3 months     MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0840393   -0.2115992    0.0435205
0-3 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <20                  [20-30)            0.0388619   -0.0946438    0.1723675
0-3 months     MAL-ED           INDIA                          >=30                 [20-30)            0.0019283   -0.2051823    0.2090390
0-3 months     MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <20                  [20-30)            0.1394140   -0.0405146    0.3193426
0-3 months     MAL-ED           NEPAL                          >=30                 [20-30)            0.0007483   -0.1143871    0.1158837
0-3 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <20                  [20-30)            0.0133382   -0.0631619    0.0898382
0-3 months     MAL-ED           PERU                           >=30                 [20-30)           -0.0919951   -0.1810181   -0.0029720
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0406621   -0.1886769    0.1073527
0-3 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0697697   -0.0380716    0.1776110
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1480751   -0.3209789    0.0248287
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0928095   -0.1730624   -0.0125566
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0049214   -0.0765425    0.0863853
0-3 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0329927   -0.0940190    0.0280337
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0135623   -0.0644802    0.0373556
0-3 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0057565   -0.0402153    0.0517283
0-3 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <20                  [20-30)            0.0181946   -0.0105293    0.0469185
0-3 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0129502   -0.0300948    0.0041944
0-3 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <20                  [20-30)            0.0328055   -0.0259841    0.0915951
0-3 months     PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0141919   -0.0600961    0.0317124
0-3 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <20                  [20-30)            0.0219504   -0.0600776    0.1039784
0-3 months     SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0795586   -0.1430636   -0.0160537
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0227895   -0.0517816    0.0062025
0-3 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0503558   -0.0772575   -0.0234541
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1858244    0.0283698    0.3432789
3-6 months     CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0388082   -0.2107571    0.1331407
3-6 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <20                  [20-30)            0.0468362    0.0057304    0.0879420
3-6 months     COHORTS          GUATEMALA                      >=30                 [20-30)            0.0016574   -0.0306075    0.0339222
3-6 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <20                  [20-30)            0.0090652   -0.0133538    0.0314841
3-6 months     COHORTS          INDIA                          >=30                 [20-30)           -0.0120974   -0.0279766    0.0037819
3-6 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0247390   -0.0260641    0.0755422
3-6 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0501007   -0.1012212    0.0010198
3-6 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <20                  [20-30)            0.1282023    0.0088239    0.2475807
3-6 months     IRC              INDIA                          >=30                 [20-30)            0.0317922   -0.0915544    0.1551389
3-6 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <20                  [20-30)            0.0443299   -0.0131138    0.1017736
3-6 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.0157444   -0.0550462    0.0235574
3-6 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <20                  [20-30)            0.0199723   -0.0498619    0.0898065
3-6 months     MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0276949   -0.0348406    0.0902303
3-6 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <20                  [20-30)            0.0469089   -0.0526068    0.1464245
3-6 months     MAL-ED           BRAZIL                         >=30                 [20-30)            0.0091911   -0.0743483    0.0927305
3-6 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <20                  [20-30)            0.0704601    0.0009743    0.1399458
3-6 months     MAL-ED           INDIA                          >=30                 [20-30)           -0.0085591   -0.1221463    0.1050282
3-6 months     MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <20                  [20-30)            0.0156620   -0.1801282    0.2114522
3-6 months     MAL-ED           NEPAL                          >=30                 [20-30)           -0.0098630   -0.0726699    0.0529439
3-6 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <20                  [20-30)            0.0090185   -0.0655564    0.0835935
3-6 months     MAL-ED           PERU                           >=30                 [20-30)           -0.0255069   -0.0987224    0.0477086
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0309969   -0.0745964    0.1365902
3-6 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0641047   -0.1474155    0.0192061
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0468310   -0.0967561    0.1904180
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0633763   -0.0023262    0.1290789
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0233185   -0.0885578    0.0419208
3-6 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0165700   -0.0725967    0.0394567
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0058797   -0.0348251    0.0465845
3-6 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0253506   -0.0730443    0.0223430
3-6 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <20                  [20-30)            0.0040104   -0.0159156    0.0239365
3-6 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0115203   -0.0286635    0.0056230
3-6 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0102436   -0.0618255    0.0413384
3-6 months     PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0248072   -0.0672481    0.0176337
3-6 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <20                  [20-30)            0.0480646   -0.0349134    0.1310427
3-6 months     SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0219350   -0.0682231    0.0243531
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0040718   -0.0763267    0.0681831
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0257014   -0.0106045    0.0620072
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0075431   -0.0196246    0.0347107
3-6 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0042633   -0.0276290    0.0191024
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0924744   -0.0650713    0.2500200
6-9 months     CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0259689   -0.1131128    0.0611749
6-9 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <20                  [20-30)            0.0465688    0.0085875    0.0845502
6-9 months     COHORTS          GUATEMALA                      >=30                 [20-30)            0.0176927   -0.0078420    0.0432274
6-9 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <20                  [20-30)            0.0007981   -0.0219860    0.0235822
6-9 months     COHORTS          INDIA                          >=30                 [20-30)           -0.0062965   -0.0199996    0.0074066
6-9 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0250158   -0.0146689    0.0647005
6-9 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0114331   -0.0514178    0.0285517
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0264173   -0.0288132    0.0816478
6-9 months     Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0038574   -0.0412864    0.0490011
6-9 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <20                  [20-30)           -0.0025584   -0.1016145    0.0964976
6-9 months     IRC              INDIA                          >=30                 [20-30)            0.0193185   -0.0527290    0.0913660
6-9 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <20                  [20-30)           -0.0381329   -0.1152846    0.0390188
6-9 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.0349210   -0.0820531    0.0122111
6-9 months     LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <20                  [20-30)            0.0196844   -0.0223068    0.0616757
6-9 months     LCNI-5           MALAWI                         >=30                 [20-30)           -0.0083010   -0.0503939    0.0337918
6-9 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <20                  [20-30)            0.0222176   -0.0274726    0.0719079
6-9 months     MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0593002   -0.1023294   -0.0162711
6-9 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <20                  [20-30)           -0.0936940   -0.1784505   -0.0089376
6-9 months     MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0799134   -0.1610080    0.0011812
6-9 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <20                  [20-30)            0.0711093    0.0077187    0.1345000
6-9 months     MAL-ED           INDIA                          >=30                 [20-30)            0.0301912   -0.0340371    0.0944195
6-9 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <20                  [20-30)            0.0163340   -0.0395546    0.0722226
6-9 months     MAL-ED           PERU                           >=30                 [20-30)            0.0440876   -0.0167756    0.1049507
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0169095   -0.0696433    0.1034622
6-9 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0059563   -0.0540985    0.0660112
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0718965   -0.2190087    0.0752157
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0472697   -0.0218202    0.1163597
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0062488   -0.0653049    0.0528072
6-9 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0238029   -0.0206791    0.0682849
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0230975   -0.0556020    0.0094070
6-9 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0297043   -0.0626713    0.0032627
6-9 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <20                  [20-30)            0.0079160   -0.0187292    0.0345612
6-9 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0174933   -0.0305041   -0.0044825
6-9 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <20                  [20-30)            0.0141304   -0.0197576    0.0480184
6-9 months     PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0047442   -0.0233469    0.0328352
6-9 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0135837   -0.0850399    0.0578726
6-9 months     SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0186687   -0.0369942    0.0743317
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0353234   -0.0349479    0.1055946
6-9 months     SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.0063757   -0.0533132    0.0405618
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0085715   -0.0588479    0.0759909
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0151440   -0.0497623    0.0194743
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0020908   -0.0262124    0.0220307
6-9 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0194376   -0.0402831    0.0014079
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0627143   -0.1537370    0.0283084
9-12 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0501458   -0.0513137    0.1516053
9-12 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.0053198   -0.0258614    0.0365010
9-12 months    COHORTS          GUATEMALA                      >=30                 [20-30)            0.0173481   -0.0039611    0.0386574
9-12 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <20                  [20-30)            0.0057452   -0.0177659    0.0292563
9-12 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0021964   -0.0154069    0.0110142
9-12 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0344780    0.0058213    0.0631347
9-12 months    GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0116745   -0.0206066    0.0439556
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0407890   -0.0091644    0.0907425
9-12 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0082225   -0.0287958    0.0452409
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0388430    0.0039869    0.0736990
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0079729   -0.0280120    0.0439579
9-12 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <20                  [20-30)            0.0062964   -0.0577830    0.0703759
9-12 months    IRC              INDIA                          >=30                 [20-30)            0.0163480   -0.0627603    0.0954562
9-12 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <20                  [20-30)            0.0354791   -0.0110459    0.0820041
9-12 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.0147689   -0.0533096    0.0237718
9-12 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <20                  [20-30)           -0.0666100   -0.1342357    0.0010157
9-12 months    LCNI-5           MALAWI                         >=30                 [20-30)           -0.0085375   -0.0488118    0.0317368
9-12 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0067350   -0.0604311    0.0469610
9-12 months    MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0131271   -0.0303046    0.0565588
9-12 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0050299   -0.1028274    0.0927676
9-12 months    MAL-ED           BRAZIL                         >=30                 [20-30)            0.0917241    0.0157260    0.1677221
9-12 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <20                  [20-30)           -0.0486301   -0.0884632   -0.0087970
9-12 months    MAL-ED           INDIA                          >=30                 [20-30)           -0.0043898   -0.0732075    0.0644280
9-12 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <20                  [20-30)            0.0266597   -0.0250754    0.0783949
9-12 months    MAL-ED           PERU                           >=30                 [20-30)            0.0096984   -0.0444438    0.0638407
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0321805   -0.0442431    0.1086041
9-12 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0399204   -0.0990256    0.0191847
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0421729   -0.1807164    0.0963706
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1004457   -0.1682203   -0.0326712
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0011885   -0.0481805    0.0505574
9-12 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0270555   -0.0599106    0.0057996
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0113826   -0.0385856    0.0158203
9-12 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0247519   -0.0081472    0.0576510
9-12 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <20                  [20-30)            0.0211699    0.0042431    0.0380967
9-12 months    PROBIT           BELARUS                        >=30                 [20-30)            0.0161042   -0.0037125    0.0359210
9-12 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0000975   -0.0372226    0.0370275
9-12 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0071278   -0.0345244    0.0202689
9-12 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.0489721    0.0008006    0.0971436
9-12 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0180532   -0.0475273    0.0114209
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0339330   -0.1962536    0.2641197
9-12 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.0503095   -0.0936150    0.1942340
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0150900   -0.0450700    0.0752499
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0034594   -0.0353692    0.0284504
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0146958   -0.0068935    0.0362851
9-12 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0083461   -0.0102210    0.0269133
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0752730   -0.1466379   -0.0039080
12-15 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0412885   -0.1105021    0.0279251
12-15 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0038621   -0.0272551    0.0349794
12-15 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0084948   -0.0134700    0.0304596
12-15 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0039758   -0.0222583    0.0302099
12-15 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0019080   -0.0241783    0.0279944
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0596576    0.0087674    0.1105478
12-15 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0127955   -0.0403664    0.0659575
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0181350   -0.0512288    0.0874988
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0048193   -0.0263062    0.0359447
12-15 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <20                  [20-30)           -0.0451851   -0.0998865    0.0095162
12-15 months   IRC              INDIA                          >=30                 [20-30)           -0.0343050   -0.1010006    0.0323906
12-15 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <20                  [20-30)            0.0212089   -0.0145135    0.0569313
12-15 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0033961   -0.0227784    0.0295706
12-15 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.0371531   -0.1171330    0.0428268
12-15 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0205384   -0.0523718    0.0934486
12-15 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0335659   -0.0214270    0.0885588
12-15 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0051253   -0.0460076    0.0357569
12-15 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0141325   -0.0751197    0.0468547
12-15 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.0223706   -0.0319946    0.0767358
12-15 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <20                  [20-30)            0.0219910   -0.0182845    0.0622664
12-15 months   MAL-ED           INDIA                          >=30                 [20-30)            0.0025686   -0.0629580    0.0680951
12-15 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <20                  [20-30)           -0.0059113   -0.0493936    0.0375710
12-15 months   MAL-ED           PERU                           >=30                 [20-30)            0.0127007   -0.0324968    0.0578981
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0193584   -0.0782630    0.0395462
12-15 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0214188   -0.0301382    0.0729757
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0087709   -0.1168825    0.1344242
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0325011   -0.0187324    0.0837345
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0041521   -0.0434626    0.0517668
12-15 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0445632   -0.0141548    0.1032812
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0221761   -0.0030229    0.0473752
12-15 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0030378   -0.0216464    0.0277219
12-15 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <20                  [20-30)           -0.0726989   -0.3176271    0.1722294
12-15 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0072871   -0.2148509    0.2002768
12-15 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0321290   -0.0032760    0.0675341
12-15 months   PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0373325    0.0099127    0.0647523
12-15 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0099657   -0.0419252    0.0219938
12-15 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0249700   -0.0601165    0.0101765
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0392107   -0.0232213    0.1016428
12-15 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.0497041   -0.0082665    0.1076748
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0160692   -0.0553871    0.0875255
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0179556   -0.0142640    0.0501751
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0028841   -0.0350268    0.0292586
12-15 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0001016   -0.0272586    0.0274618
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0293398   -0.0670163    0.1256958
15-18 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0152359   -0.0911767    0.0607049
15-18 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0039726   -0.0378378    0.0298926
15-18 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0118086   -0.0119791    0.0355962
15-18 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0324247    0.0025016    0.0623478
15-18 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0287833    0.0017165    0.0558500
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0060361   -0.0225772    0.0346493
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0047248   -0.0200513    0.0295008
15-18 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <20                  [20-30)            0.0056425   -0.0339618    0.0452467
15-18 months   IRC              INDIA                          >=30                 [20-30)            0.0040648   -0.0502369    0.0583665
15-18 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0047701   -0.0402867    0.0307464
15-18 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0035532   -0.0281075    0.0210011
15-18 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.0040964   -0.0943785    0.0861856
15-18 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0327073   -0.0269746    0.0923893
15-18 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0310285   -0.0667168    0.0046599
15-18 months   MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0063979   -0.0295200    0.0423158
15-18 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.0553067   -0.0003427    0.1109560
15-18 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0190060   -0.0796855    0.0416735
15-18 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0146976   -0.0502101    0.0208150
15-18 months   MAL-ED           INDIA                          >=30                 [20-30)            0.0289001   -0.0211854    0.0789855
15-18 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <20                  [20-30)            0.0170982   -0.0223606    0.0565571
15-18 months   MAL-ED           PERU                           >=30                 [20-30)            0.0057655   -0.0302337    0.0417648
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0326964   -0.0834842    0.0180915
15-18 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0402461   -0.0821847    0.0016925
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0248956   -0.1251437    0.0753525
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0099799   -0.0360755    0.0560354
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0109309   -0.0616593    0.0397976
15-18 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0017691   -0.0357538    0.0392920
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0009239   -0.0210789    0.0192310
15-18 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0032361   -0.0196195    0.0260917
15-18 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <20                  [20-30)            0.0887635   -0.1250597    0.3025867
15-18 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0128199   -0.2120692    0.1864294
15-18 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0282531   -0.0562303   -0.0002758
15-18 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0188214   -0.0405455    0.0029026
15-18 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0126563   -0.0537173    0.0284047
15-18 months   SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0169456   -0.0510839    0.0849752
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0102059   -0.0229120    0.0433237
15-18 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.0172489   -0.0165745    0.0510724
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0302334   -0.0404811    0.1009479
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0224503   -0.0555282    0.0106276
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0311524   -0.0630905    0.0007856
15-18 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0052641   -0.0360862    0.0255580
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0319946   -0.0989761    0.0349870
18-21 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0408301   -0.1029119    0.0212516
18-21 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0265614   -0.0561572    0.0030344
18-21 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0110660   -0.0107839    0.0329159
18-21 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0103761   -0.0344730    0.0137208
18-21 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0028563   -0.0217883    0.0275008
18-21 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <20                  [20-30)           -0.0191602   -0.0686988    0.0303784
18-21 months   IRC              INDIA                          >=30                 [20-30)           -0.0526492   -0.0914334   -0.0138650
18-21 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0061951   -0.0426323    0.0302421
18-21 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0067569   -0.0183362    0.0318501
18-21 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <20                  [20-30)            0.0091089   -0.0279510    0.0461688
18-21 months   LCNI-5           MALAWI                         >=30                 [20-30)           -0.0134498   -0.0605567    0.0336570
18-21 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0190965   -0.0132107    0.0514037
18-21 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0242370   -0.0524567    0.0039827
18-21 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.0419485   -0.0089636    0.0928607
18-21 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0067412   -0.0809333    0.0674508
18-21 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0000458   -0.0292129    0.0291213
18-21 months   MAL-ED           INDIA                          >=30                 [20-30)           -0.0177232   -0.0611783    0.0257318
18-21 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <20                  [20-30)           -0.0278164   -0.0641509    0.0085182
18-21 months   MAL-ED           PERU                           >=30                 [20-30)           -0.0088286   -0.0457466    0.0280894
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0171220   -0.0378843    0.0721283
18-21 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0216408   -0.0203919    0.0636736
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0714553   -0.0545741    0.1974847
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0302672   -0.0163292    0.0768636
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0341314   -0.0090554    0.0773181
18-21 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0039474   -0.0273051    0.0351999
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0090176   -0.0114326    0.0294678
18-21 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0170819   -0.0081462    0.0423100
18-21 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        <20                  [20-30)            0.0434483   -1.0631309    1.1500275
18-21 months   PROBIT           BELARUS                        >=30                 [20-30)            0.0220536   -0.5146501    0.5587573
18-21 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0187189   -0.0120555    0.0494932
18-21 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0233216   -0.0433645   -0.0032787
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0334761    0.0017433    0.0652090
18-21 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0089080   -0.0410487    0.0232326
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0136064   -0.0803508    0.0531380
21-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0626711   -0.1075326   -0.0178097
21-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0203648   -0.0017358    0.0424653
21-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0068984   -0.0105254    0.0243223
21-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0241733   -0.0184015    0.0667482
21-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0196593   -0.0148252    0.0541438
21-24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <20                  [20-30)            0.0072886   -0.0371281    0.0517052
21-24 months   IRC              INDIA                          >=30                 [20-30)           -0.0566570   -0.0929746   -0.0203395
21-24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0101251   -0.0467618    0.0265117
21-24 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0135295   -0.0102218    0.0372808
21-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <20                  [20-30)            0.0054227   -0.0472669    0.0581123
21-24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0282296   -0.0064010    0.0628601
21-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0056601   -0.0288953    0.0402155
21-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0280913   -0.0072218    0.0634043
21-24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.0377513   -0.0025735    0.0780761
21-24 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.0281399   -0.0071111    0.0633909
21-24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <20                  [20-30)            0.0237809   -0.0025322    0.0500939
21-24 months   MAL-ED           INDIA                          >=30                 [20-30)           -0.0313612   -0.0689640    0.0062415
21-24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <20                  [20-30)           -0.0192653   -0.0521062    0.0135756
21-24 months   MAL-ED           PERU                           >=30                 [20-30)            0.0146934   -0.0253225    0.0547094
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0229099   -0.0410022    0.0868219
21-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0041845   -0.0365081    0.0281391
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0051673   -0.1078280    0.1181625
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0273409   -0.0161522    0.0708341
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0169225   -0.0288338    0.0626788
21-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0300013   -0.0578627   -0.0021399
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0080549   -0.0124874    0.0285971
21-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0182948   -0.0063954    0.0429851
21-24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        <20                  [20-30)           -0.0149321   -0.4971359    0.4672716
21-24 months   PROBIT           BELARUS                        >=30                 [20-30)            0.0405155   -0.5202511    0.6012822
21-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0235031   -0.0037698    0.0507759
21-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0159569   -0.0398236    0.0079097
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0002745   -0.0328510    0.0334000
21-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0193531   -0.0130276    0.0517338


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              NA                -0.0176062   -0.0404368    0.0052244
0-3 months     COHORTS          INDIA                          [20-30)              NA                -0.0130961   -0.0189908   -0.0072015
0-3 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0018880   -0.0202514    0.0164754
0-3 months     IRC              INDIA                          [20-30)              NA                -0.0030056   -0.0262008    0.0201896
0-3 months     Keneba           GAMBIA                         [20-30)              NA                -0.0066692   -0.0326225    0.0192841
0-3 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0368762   -0.0609082   -0.0128443
0-3 months     MAL-ED           BRAZIL                         [20-30)              NA                -0.0298081   -0.0773561    0.0177398
0-3 months     MAL-ED           INDIA                          [20-30)              NA                 0.0050806   -0.0212136    0.0313748
0-3 months     MAL-ED           NEPAL                          [20-30)              NA                 0.0046219   -0.0206575    0.0299013
0-3 months     MAL-ED           PERU                           [20-30)              NA                -0.0168076   -0.0507682    0.0171529
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0178336   -0.0301334    0.0658007
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0444288   -0.0797062   -0.0091513
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0066044   -0.0241282    0.0109194
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0014633   -0.0146115    0.0116848
0-3 months     PROBIT           BELARUS                        [20-30)              NA                -0.0004462   -0.0053894    0.0044970
0-3 months     PROVIDE          BANGLADESH                     [20-30)              NA                 0.0011474   -0.0104113    0.0127061
0-3 months     SAS-CompFeed     INDIA                          [20-30)              NA                -0.0067678   -0.0215607    0.0080250
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0128869   -0.0201776   -0.0055962
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0116656   -0.0150994    0.0384307
3-6 months     COHORTS          GUATEMALA                      [20-30)              NA                 0.0061717   -0.0086489    0.0209922
3-6 months     COHORTS          INDIA                          [20-30)              NA                -0.0023072   -0.0068182    0.0022039
3-6 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0036324   -0.0168164    0.0095516
3-6 months     IRC              INDIA                          [20-30)              NA                 0.0135447   -0.0010172    0.0281067
3-6 months     Keneba           GAMBIA                         [20-30)              NA                -0.0003966   -0.0202275    0.0194343
3-6 months     MAL-ED           BANGLADESH                     [20-30)              NA                 0.0073226   -0.0081163    0.0227615
3-6 months     MAL-ED           BRAZIL                         [20-30)              NA                 0.0104212   -0.0190671    0.0399095
3-6 months     MAL-ED           INDIA                          [20-30)              NA                 0.0094474   -0.0060539    0.0249486
3-6 months     MAL-ED           NEPAL                          [20-30)              NA                -0.0016111   -0.0152413    0.0120191
3-6 months     MAL-ED           PERU                           [20-30)              NA                -0.0032324   -0.0346340    0.0281693
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0185126   -0.0597499    0.0227248
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0290646   -0.0013460    0.0594752
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0061639   -0.0215789    0.0092511
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0032747   -0.0155107    0.0089614
3-6 months     PROBIT           BELARUS                        [20-30)              NA                -0.0016331   -0.0050708    0.0018047
3-6 months     PROVIDE          BANGLADESH                     [20-30)              NA                -0.0057840   -0.0162527    0.0046848
3-6 months     SAS-CompFeed     INDIA                          [20-30)              NA                 0.0029403   -0.0098032    0.0156838
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0069757   -0.0053558    0.0193071
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0002514   -0.0063281    0.0068309
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0051197   -0.0136261    0.0238654
6-9 months     COHORTS          GUATEMALA                      [20-30)              NA                 0.0124748    0.0003876    0.0245619
6-9 months     COHORTS          INDIA                          [20-30)              NA                -0.0015603   -0.0056294    0.0025089
6-9 months     GMS-Nepal        NEPAL                          [20-30)              NA                 0.0026944   -0.0085446    0.0139335
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0050486   -0.0092925    0.0193896
6-9 months     IRC              INDIA                          [20-30)              NA                 0.0011502   -0.0093362    0.0116366
6-9 months     Keneba           GAMBIA                         [20-30)              NA                -0.0184787   -0.0417793    0.0048219
6-9 months     LCNI-5           MALAWI                         [20-30)              NA                 0.0010841   -0.0151991    0.0173674
6-9 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0063564   -0.0176828    0.0049699
6-9 months     MAL-ED           BRAZIL                         [20-30)              NA                -0.0338474   -0.0610823   -0.0066125
6-9 months     MAL-ED           INDIA                          [20-30)              NA                 0.0132524    0.0009962    0.0255086
6-9 months     MAL-ED           PERU                           [20-30)              NA                 0.0147440   -0.0101025    0.0395905
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0052229   -0.0264706    0.0369164
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0164346   -0.0166384    0.0495076
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0045404   -0.0078017    0.0168825
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0091664   -0.0181985   -0.0001344
6-9 months     PROBIT           BELARUS                        [20-30)              NA                -0.0023040   -0.0057437    0.0011357
6-9 months     PROVIDE          BANGLADESH                     [20-30)              NA                 0.0023822   -0.0044757    0.0092402
6-9 months     SAS-CompFeed     INDIA                          [20-30)              NA                 0.0006001   -0.0130927    0.0142929
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0014020   -0.0119213    0.0147253
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0037412   -0.0155227    0.0080404
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0041105   -0.0100460    0.0018249
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0006696   -0.0146847    0.0160238
9-12 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0073351   -0.0029092    0.0175794
9-12 months    COHORTS          INDIA                          [20-30)              NA                -0.0002065   -0.0042684    0.0038554
9-12 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0078464   -0.0006555    0.0163484
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0084826   -0.0044317    0.0213969
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0073496   -0.0058039    0.0205032
9-12 months    IRC              INDIA                          [20-30)              NA                 0.0016953   -0.0064431    0.0098337
9-12 months    Keneba           GAMBIA                         [20-30)              NA                -0.0028125   -0.0221779    0.0165529
9-12 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0140323   -0.0334908    0.0054262
9-12 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0012876   -0.0104110    0.0129861
9-12 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0194491   -0.0070269    0.0459251
9-12 months    MAL-ED           INDIA                          [20-30)              NA                -0.0075421   -0.0169771    0.0018929
9-12 months    MAL-ED           PERU                           [20-30)              NA                 0.0096025   -0.0121132    0.0313183
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0097240   -0.0389696    0.0195215
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0459441   -0.0790303   -0.0128579
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0057921   -0.0155540    0.0039697
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0022503   -0.0059050    0.0104056
9-12 months    PROBIT           BELARUS                        [20-30)              NA                 0.0050296    0.0014603    0.0085989
9-12 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0013078   -0.0082600    0.0056444
9-12 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0039729   -0.0047964    0.0127422
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0145894   -0.0258472    0.0550260
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0000605   -0.0106282    0.0105072
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0037813   -0.0015227    0.0090854
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0115294   -0.0232127    0.0001539
12-15 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0036710   -0.0065842    0.0139261
12-15 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0010087   -0.0061080    0.0081255
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0099464   -0.0084753    0.0283680
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0038694   -0.0095944    0.0173331
12-15 months   IRC              INDIA                          [20-30)              NA                -0.0061983   -0.0131839    0.0007873
12-15 months   Keneba           GAMBIA                         [20-30)              NA                 0.0038350   -0.0093464    0.0170163
12-15 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0020474   -0.0293362    0.0334310
12-15 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0038312   -0.0076755    0.0153379
12-15 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0023285   -0.0158384    0.0204955
12-15 months   MAL-ED           INDIA                          [20-30)              NA                 0.0034805   -0.0055792    0.0125403
12-15 months   MAL-ED           PERU                           [20-30)              NA                 0.0012291   -0.0169340    0.0193922
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0049646   -0.0215817    0.0315109
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0143103   -0.0099135    0.0385341
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0101430   -0.0040713    0.0243572
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0044697   -0.0024920    0.0114315
12-15 months   PROBIT           BELARUS                        [20-30)              NA                -0.0082896   -0.0501883    0.0336091
12-15 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0103407    0.0034293    0.0172521
12-15 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0040462   -0.0113690    0.0032767
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0143553   -0.0028304    0.0315410
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0065453   -0.0048883    0.0179790
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0003482   -0.0077689    0.0070726
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0008909   -0.0126038    0.0143857
15-18 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0038966   -0.0069385    0.0147318
15-18 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0105846    0.0023303    0.0188389
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0023183   -0.0082650    0.0129015
15-18 months   IRC              INDIA                          [20-30)              NA                 0.0007747   -0.0046821    0.0062316
15-18 months   Keneba           GAMBIA                         [20-30)              NA                -0.0020802   -0.0147220    0.0105617
15-18 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0091679   -0.0166318    0.0349675
15-18 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0033904   -0.0126420    0.0058612
15-18 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0048209   -0.0133643    0.0230060
15-18 months   MAL-ED           INDIA                          [20-30)              NA                 0.0004151   -0.0069883    0.0078185
15-18 months   MAL-ED           PERU                           [20-30)              NA                 0.0062501   -0.0098212    0.0223214
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0215087   -0.0434844    0.0004670
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0029004   -0.0187272    0.0245280
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0007859   -0.0113527    0.0097809
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0003622   -0.0055002    0.0062245
15-18 months   PROBIT           BELARUS                        [20-30)              NA                 0.0048168   -0.0465077    0.0561413
15-18 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0065436   -0.0120237   -0.0010635
15-18 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0002129   -0.0064073    0.0068332
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0047405   -0.0039729    0.0134539
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0054072   -0.0174736    0.0066593
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0052119   -0.0133791    0.0029554
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0079663   -0.0187252    0.0027926
18-21 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0009608   -0.0088884    0.0108100
18-21 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0014586   -0.0083790    0.0054617
18-21 months   IRC              INDIA                          [20-30)              NA                -0.0055580   -0.0111833    0.0000674
18-21 months   Keneba           GAMBIA                         [20-30)              NA                 0.0021877   -0.0109713    0.0153466
18-21 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0024999   -0.0194233    0.0144236
18-21 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0017324   -0.0092390    0.0057743
18-21 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0049162   -0.0161058    0.0259382
18-21 months   MAL-ED           INDIA                          [20-30)              NA                -0.0015892   -0.0077998    0.0046215
18-21 months   MAL-ED           PERU                           [20-30)              NA                -0.0101285   -0.0263330    0.0060761
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0113567   -0.0098768    0.0325901
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0166127   -0.0053082    0.0385335
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0042778   -0.0044457    0.0130013
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0043274   -0.0016149    0.0102696
18-21 months   PROBIT           BELARUS                        [20-30)              NA                 0.0089219   -0.1626165    0.1804604
18-21 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0020624   -0.0074240    0.0032993
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0020593   -0.0064443    0.0105629
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0081552   -0.0170045    0.0006941
21-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0054214   -0.0026721    0.0135150
21-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0073582   -0.0030983    0.0178148
21-24 months   IRC              INDIA                          [20-30)              NA                -0.0035867   -0.0088503    0.0016768
21-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0045735   -0.0076941    0.0168410
21-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0091428   -0.0064650    0.0247505
21-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0057868   -0.0027836    0.0143571
21-24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0129993    0.0002637    0.0257349
21-24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0007033   -0.0050927    0.0064993
21-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0012630   -0.0170245    0.0144984
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0021461   -0.0161427    0.0204348
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0118627   -0.0081709    0.0318964
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0050615   -0.0132872    0.0031643
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0044366   -0.0016843    0.0105574
21-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0053355   -0.1308421    0.1415131
21-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0000834   -0.0057373    0.0055704
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0040146   -0.0046179    0.0126472
