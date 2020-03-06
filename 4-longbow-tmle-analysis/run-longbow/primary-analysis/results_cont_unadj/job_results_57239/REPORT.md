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

**Outcome Variable:** y_rate_len

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
![](/tmp/f85a4cfb-d90b-4c39-983c-2ea6eb3df4ac/3e53156d-d547-41e3-8a66-bfbb5b0b0179/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f85a4cfb-d90b-4c39-983c-2ea6eb3df4ac/3e53156d-d547-41e3-8a66-bfbb5b0b0179/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f85a4cfb-d90b-4c39-983c-2ea6eb3df4ac/3e53156d-d547-41e3-8a66-bfbb5b0b0179/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              NA                2.6238720    2.5608510   2.6868930
0-3 months     COHORTS          GUATEMALA                      <20                  NA                2.5613579    2.4466596   2.6760562
0-3 months     COHORTS          GUATEMALA                      >=30                 NA                2.5404073    2.4715909   2.6092237
0-3 months     COHORTS          INDIA                          [20-30)              NA                3.5194114    3.4994618   3.5393609
0-3 months     COHORTS          INDIA                          <20                  NA                3.5275255    3.4755539   3.5794970
0-3 months     COHORTS          INDIA                          >=30                 NA                3.4115708    3.3746861   3.4484555
0-3 months     GMS-Nepal        NEPAL                          [20-30)              NA                3.6083382    3.5459033   3.6707731
0-3 months     GMS-Nepal        NEPAL                          <20                  NA                3.6535010    3.5340563   3.7729457
0-3 months     GMS-Nepal        NEPAL                          >=30                 NA                3.4945268    3.3651132   3.6239405
0-3 months     IRC              INDIA                          [20-30)              NA                3.1479577    3.0271736   3.2687418
0-3 months     IRC              INDIA                          <20                  NA                3.0037506    2.6286525   3.3788487
0-3 months     IRC              INDIA                          >=30                 NA                3.1886522    2.7819307   3.5953737
0-3 months     Keneba           GAMBIA                         [20-30)              NA                3.1281669    3.0569336   3.1994002
0-3 months     Keneba           GAMBIA                         <20                  NA                3.3071326    3.1863122   3.4279529
0-3 months     Keneba           GAMBIA                         >=30                 NA                3.0056821    2.9341618   3.0772023
0-3 months     MAL-ED           BANGLADESH                     [20-30)              NA                3.4260738    3.3510882   3.5010594
0-3 months     MAL-ED           BANGLADESH                     <20                  NA                3.1233473    2.9295128   3.3171819
0-3 months     MAL-ED           BANGLADESH                     >=30                 NA                3.1752738    3.0283045   3.3222431
0-3 months     MAL-ED           BRAZIL                         [20-30)              NA                3.8320643    3.6866924   3.9774362
0-3 months     MAL-ED           BRAZIL                         <20                  NA                3.7804075    3.4848719   4.0759431
0-3 months     MAL-ED           BRAZIL                         >=30                 NA                3.7280830    3.5339938   3.9221722
0-3 months     MAL-ED           INDIA                          [20-30)              NA                3.3397363    3.2293353   3.4501373
0-3 months     MAL-ED           INDIA                          <20                  NA                3.4010972    3.1563587   3.6458357
0-3 months     MAL-ED           INDIA                          >=30                 NA                3.3815067    2.9935262   3.7694872
0-3 months     MAL-ED           NEPAL                          [20-30)              NA                3.6049055    3.4995769   3.7102341
0-3 months     MAL-ED           NEPAL                          <20                  NA                3.8970126    3.4479912   4.3460340
0-3 months     MAL-ED           NEPAL                          >=30                 NA                3.6495098    3.4465557   3.8524638
0-3 months     MAL-ED           PERU                           [20-30)              NA                3.0879526    2.9941976   3.1817075
0-3 months     MAL-ED           PERU                           <20                  NA                3.0980336    2.9739356   3.2221316
0-3 months     MAL-ED           PERU                           >=30                 NA                2.9137892    2.7749548   3.0526236
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                3.1268985    2.9944487   3.2593482
0-3 months     MAL-ED           SOUTH AFRICA                   <20                  NA                3.1501584    2.8871261   3.4131906
0-3 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                3.2776913    3.1112375   3.4441452
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                3.3513686    3.2452542   3.4574830
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                3.0984407    2.8509141   3.3459672
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.1650231    3.0471751   3.2828710
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              NA                3.1213402    3.0531575   3.1895229
0-3 months     NIH-Birth        BANGLADESH                     <20                  NA                3.1494900    3.0107539   3.2882261
0-3 months     NIH-Birth        BANGLADESH                     >=30                 NA                3.0629242    2.9581371   3.1677114
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                3.1296041    3.0855027   3.1737054
0-3 months     NIH-Crypto       BANGLADESH                     <20                  NA                3.1072578    3.0120824   3.2024331
0-3 months     NIH-Crypto       BANGLADESH                     >=30                 NA                3.1511166    3.0662292   3.2360039
0-3 months     PROBIT           BELARUS                        [20-30)              NA                2.8146360    2.7007171   2.9285549
0-3 months     PROBIT           BELARUS                        <20                  NA                2.8369118    2.7133073   2.9605163
0-3 months     PROBIT           BELARUS                        >=30                 NA                2.7949442    2.6788544   2.9110340
0-3 months     PROVIDE          BANGLADESH                     [20-30)              NA                3.2551273    3.2125371   3.2977174
0-3 months     PROVIDE          BANGLADESH                     <20                  NA                3.3398205    3.2132617   3.4663794
0-3 months     PROVIDE          BANGLADESH                     >=30                 NA                3.2162538    3.1284691   3.3040384
0-3 months     SAS-CompFeed     INDIA                          [20-30)              NA                3.3695214    3.3226015   3.4164413
0-3 months     SAS-CompFeed     INDIA                          <20                  NA                3.3835579    3.2453089   3.5218068
0-3 months     SAS-CompFeed     INDIA                          >=30                 NA                3.2016996    3.0526350   3.3507642
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                3.3652651    3.3400433   3.3904868
0-3 months     ZVITAMBO         ZIMBABWE                       <20                  NA                3.3033736    3.2510972   3.3556500
0-3 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2614189    3.2133990   3.3094387
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                1.7809631    1.6718761   1.8900501
3-6 months     CMC-V-BCS-2002   INDIA                          <20                  NA                2.1596907    1.8477040   2.4716773
3-6 months     CMC-V-BCS-2002   INDIA                          >=30                 NA                1.6939794    1.3430133   2.0449456
3-6 months     COHORTS          GUATEMALA                      [20-30)              NA                1.7520746    1.7096697   1.7944796
3-6 months     COHORTS          GUATEMALA                      <20                  NA                1.8469505    1.7706579   1.9232431
3-6 months     COHORTS          GUATEMALA                      >=30                 NA                1.7480164    1.6951370   1.8008958
3-6 months     COHORTS          INDIA                          [20-30)              NA                1.8624021    1.8455827   1.8792215
3-6 months     COHORTS          INDIA                          <20                  NA                1.8751756    1.8297965   1.9205548
3-6 months     COHORTS          INDIA                          >=30                 NA                1.8313494    1.8012824   1.8614163
3-6 months     GMS-Nepal        NEPAL                          [20-30)              NA                1.7182733    1.6709774   1.7655692
3-6 months     GMS-Nepal        NEPAL                          <20                  NA                1.7701390    1.6748450   1.8654330
3-6 months     GMS-Nepal        NEPAL                          >=30                 NA                1.6063318    1.5054259   1.7072377
3-6 months     IRC              INDIA                          [20-30)              NA                1.8535781    1.7859922   1.9211640
3-6 months     IRC              INDIA                          <20                  NA                2.0994371    1.8570812   2.3417930
3-6 months     IRC              INDIA                          >=30                 NA                1.9304333    1.6721154   2.1887511
3-6 months     Keneba           GAMBIA                         [20-30)              NA                1.9947828    1.9328225   2.0567430
3-6 months     Keneba           GAMBIA                         <20                  NA                2.0975633    1.9935218   2.2016048
3-6 months     Keneba           GAMBIA                         >=30                 NA                1.9572471    1.9003386   2.0141556
3-6 months     MAL-ED           BANGLADESH                     [20-30)              NA                1.9172528    1.8565527   1.9779529
3-6 months     MAL-ED           BANGLADESH                     <20                  NA                1.9357090    1.8010554   2.0703626
3-6 months     MAL-ED           BANGLADESH                     >=30                 NA                1.9648583    1.8462785   2.0834381
3-6 months     MAL-ED           BRAZIL                         [20-30)              NA                2.1162147    2.0091550   2.2232745
3-6 months     MAL-ED           BRAZIL                         <20                  NA                2.2513194    2.0660940   2.4365448
3-6 months     MAL-ED           BRAZIL                         >=30                 NA                2.1420322    1.9973259   2.2867385
3-6 months     MAL-ED           INDIA                          [20-30)              NA                1.8620153    1.7889545   1.9350761
3-6 months     MAL-ED           INDIA                          <20                  NA                2.0138041    1.8811404   2.1464678
3-6 months     MAL-ED           INDIA                          >=30                 NA                1.8643139    1.6295747   2.0990531
3-6 months     MAL-ED           NEPAL                          [20-30)              NA                1.9646517    1.9004878   2.0288156
3-6 months     MAL-ED           NEPAL                          <20                  NA                2.0038430    1.6110226   2.3966635
3-6 months     MAL-ED           NEPAL                          >=30                 NA                1.9594212    1.8413198   2.0775225
3-6 months     MAL-ED           PERU                           [20-30)              NA                2.0249811    1.9234318   2.1265303
3-6 months     MAL-ED           PERU                           <20                  NA                2.0383885    1.9172320   2.1595449
3-6 months     MAL-ED           PERU                           >=30                 NA                1.9670650    1.8503592   2.0837708
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                2.0021636    1.8810425   2.1232846
3-6 months     MAL-ED           SOUTH AFRICA                   <20                  NA                2.0868428    1.9017320   2.2719536
3-6 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                1.8778965    1.7477853   2.0080077
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                1.7644435    1.6693821   1.8595050
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.8769999    1.5773586   2.1766413
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.9067067    1.8067929   2.0066204
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              NA                1.8435812    1.7845240   1.9026385
3-6 months     NIH-Birth        BANGLADESH                     <20                  NA                1.8038448    1.6710270   1.9366627
3-6 months     NIH-Birth        BANGLADESH                     >=30                 NA                1.8103511    1.7057717   1.9149306
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                2.0120904    1.9660808   2.0581000
3-6 months     NIH-Crypto       BANGLADESH                     <20                  NA                2.0243358    1.9495376   2.0991339
3-6 months     NIH-Crypto       BANGLADESH                     >=30                 NA                1.9623708    1.8695167   2.0552249
3-6 months     PROBIT           BELARUS                        [20-30)              NA                2.0951855    2.0529736   2.1373973
3-6 months     PROBIT           BELARUS                        <20                  NA                2.0983640    2.0432602   2.1534678
3-6 months     PROBIT           BELARUS                        >=30                 NA                2.0729495    2.0220027   2.1238962
3-6 months     PROVIDE          BANGLADESH                     [20-30)              NA                1.9794500    1.9395106   2.0193895
3-6 months     PROVIDE          BANGLADESH                     <20                  NA                1.9642531    1.8672237   2.0612826
3-6 months     PROVIDE          BANGLADESH                     >=30                 NA                1.9155335    1.8326217   1.9984453
3-6 months     SAS-CompFeed     INDIA                          [20-30)              NA                1.9368205    1.8853808   1.9882601
3-6 months     SAS-CompFeed     INDIA                          <20                  NA                2.0312928    1.8723009   2.1902847
3-6 months     SAS-CompFeed     INDIA                          >=30                 NA                1.8770350    1.7725042   1.9815657
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                1.7786055    1.7338160   1.8233950
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.7697157    1.6214527   1.9179786
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8333729    1.7685507   1.8981951
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                1.9772143    1.9529372   2.0014915
3-6 months     ZVITAMBO         ZIMBABWE                       <20                  NA                1.9847029    1.9320044   2.0374014
3-6 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                1.9663201    1.9228345   2.0098056
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                1.2048163    1.1201385   1.2894941
6-9 months     CMC-V-BCS-2002   INDIA                          <20                  NA                1.4233397    1.0671126   1.7795668
6-9 months     CMC-V-BCS-2002   INDIA                          >=30                 NA                1.1469394    0.9677270   1.3261519
6-9 months     COHORTS          GUATEMALA                      [20-30)              NA                1.0799813    1.0420138   1.1179488
6-9 months     COHORTS          GUATEMALA                      <20                  NA                1.1871972    1.1103439   1.2640506
6-9 months     COHORTS          GUATEMALA                      >=30                 NA                1.1161682    1.0722022   1.1601341
6-9 months     COHORTS          INDIA                          [20-30)              NA                1.1866727    1.1711688   1.2021767
6-9 months     COHORTS          INDIA                          <20                  NA                1.1774134    1.1288485   1.2259783
6-9 months     COHORTS          INDIA                          >=30                 NA                1.1677058    1.1406942   1.1947174
6-9 months     GMS-Nepal        NEPAL                          [20-30)              NA                1.3141706    1.2585623   1.3697789
6-9 months     GMS-Nepal        NEPAL                          <20                  NA                1.3643231    1.2923286   1.4363175
6-9 months     GMS-Nepal        NEPAL                          >=30                 NA                1.2764453    1.2034007   1.3494899
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              NA                1.1628386    1.1052584   1.2204189
6-9 months     Guatemala BSC    GUATEMALA                      <20                  NA                1.2081507    1.0969824   1.3193191
6-9 months     Guatemala BSC    GUATEMALA                      >=30                 NA                1.1672363    1.0816424   1.2528302
6-9 months     IRC              INDIA                          [20-30)              NA                1.3700021    1.3183099   1.4216942
6-9 months     IRC              INDIA                          <20                  NA                1.3525546    1.1414484   1.5636609
6-9 months     IRC              INDIA                          >=30                 NA                1.4253276    1.2683671   1.5822882
6-9 months     Keneba           GAMBIA                         [20-30)              NA                1.4477745    1.3731270   1.5224221
6-9 months     Keneba           GAMBIA                         <20                  NA                1.3667240    1.2132947   1.5201533
6-9 months     Keneba           GAMBIA                         >=30                 NA                1.3692509    1.2916984   1.4468034
6-9 months     LCNI-5           MALAWI                         [20-30)              NA                1.4784474    1.4211477   1.5357471
6-9 months     LCNI-5           MALAWI                         <20                  NA                1.5277644    1.4487226   1.6068061
6-9 months     LCNI-5           MALAWI                         >=30                 NA                1.4489350    1.3707560   1.5271139
6-9 months     MAL-ED           BANGLADESH                     [20-30)              NA                1.2651031    1.2175187   1.3126876
6-9 months     MAL-ED           BANGLADESH                     <20                  NA                1.3017137    1.1944329   1.4089945
6-9 months     MAL-ED           BANGLADESH                     >=30                 NA                1.1264217    1.0398902   1.2129532
6-9 months     MAL-ED           BRAZIL                         [20-30)              NA                1.5635440    1.4542062   1.6728817
6-9 months     MAL-ED           BRAZIL                         <20                  NA                1.3450767    1.1898695   1.5002838
6-9 months     MAL-ED           BRAZIL                         >=30                 NA                1.3704334    1.2160633   1.5248034
6-9 months     MAL-ED           INDIA                          [20-30)              NA                1.2071237    1.1475510   1.2666965
6-9 months     MAL-ED           INDIA                          <20                  NA                1.3737283    1.2445209   1.5029358
6-9 months     MAL-ED           INDIA                          >=30                 NA                1.2940510    1.1617628   1.4263391
6-9 months     MAL-ED           PERU                           [20-30)              NA                1.2857319    1.2053945   1.3660693
6-9 months     MAL-ED           PERU                           <20                  NA                1.3240118    1.2267255   1.4212981
6-9 months     MAL-ED           PERU                           >=30                 NA                1.3877898    1.2778491   1.4977305
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                1.3659162    1.2665880   1.4652445
6-9 months     MAL-ED           SOUTH AFRICA                   <20                  NA                1.3999914    1.2321095   1.5678734
6-9 months     MAL-ED           SOUTH AFRICA                   >=30                 NA                1.3791769    1.2842050   1.4741488
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                1.1480550    1.0450145   1.2510955
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9940136    0.6661350   1.3218922
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.2665261    1.1434438   1.3896084
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              NA                1.2423793    1.1932795   1.2914792
6-9 months     NIH-Birth        BANGLADESH                     <20                  NA                1.2352353    1.1124354   1.3580352
6-9 months     NIH-Birth        BANGLADESH                     >=30                 NA                1.2960364    1.2079489   1.3841238
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                1.3501927    1.3124890   1.3878965
6-9 months     NIH-Crypto       BANGLADESH                     <20                  NA                1.2931888    1.2283900   1.3579875
6-9 months     NIH-Crypto       BANGLADESH                     >=30                 NA                1.2809262    1.2154108   1.3464416
6-9 months     PROBIT           BELARUS                        [20-30)              NA                1.5821434    1.5512003   1.6130865
6-9 months     PROBIT           BELARUS                        <20                  NA                1.5937347    1.5225618   1.6649075
6-9 months     PROBIT           BELARUS                        >=30                 NA                1.5444196    1.5095076   1.5793316
6-9 months     PROVIDE          BANGLADESH                     [20-30)              NA                1.2786835    1.2483907   1.3089763
6-9 months     PROVIDE          BANGLADESH                     <20                  NA                1.3049303    1.2326824   1.3771781
6-9 months     PROVIDE          BANGLADESH                     >=30                 NA                1.2837831    1.2254300   1.3421363
6-9 months     SAS-CompFeed     INDIA                          [20-30)              NA                1.2154204    1.1710646   1.2597763
6-9 months     SAS-CompFeed     INDIA                          <20                  NA                1.1876864    1.0598996   1.3154731
6-9 months     SAS-CompFeed     INDIA                          >=30                 NA                1.2517758    1.1532566   1.3502950
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              NA                1.1423474    1.0970289   1.1876659
6-9 months     SAS-FoodSuppl    INDIA                          <20                  NA                1.2205420    1.0634848   1.3775991
6-9 months     SAS-FoodSuppl    INDIA                          >=30                 NA                1.1163623    1.0212576   1.2114670
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                1.3335981    1.2864196   1.3807766
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.3486903    1.2047022   1.4926784
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.3008004    1.2376824   1.3639184
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                1.3574763    1.3335864   1.3813662
6-9 months     ZVITAMBO         ZIMBABWE                       <20                  NA                1.3453083    1.2958372   1.3947795
6-9 months     ZVITAMBO         ZIMBABWE                       >=30                 NA                1.3115143    1.2705296   1.3524990
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.8965945    0.8220954   0.9710936
9-12 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.7678415    0.5664355   0.9692476
9-12 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                1.0125018    0.7815945   1.2434091
9-12 months    COHORTS          GUATEMALA                      [20-30)              NA                0.9345025    0.8983154   0.9706896
9-12 months    COHORTS          GUATEMALA                      <20                  NA                0.9479199    0.8804128   1.0154271
9-12 months    COHORTS          GUATEMALA                      >=30                 NA                0.9722520    0.9346971   1.0098069
9-12 months    COHORTS          INDIA                          [20-30)              NA                0.9876532    0.9706702   1.0046362
9-12 months    COHORTS          INDIA                          <20                  NA                0.9887983    0.9342882   1.0433084
9-12 months    COHORTS          INDIA                          >=30                 NA                0.9750651    0.9474335   1.0026967
9-12 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.9810778    0.9371265   1.0250290
9-12 months    GMS-Nepal        NEPAL                          <20                  NA                1.0599096    1.0054433   1.1143759
9-12 months    GMS-Nepal        NEPAL                          >=30                 NA                1.0038087    0.9405880   1.0670293
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                1.0161189    0.9684825   1.0637552
9-12 months    Guatemala BSC    GUATEMALA                      <20                  NA                1.1068669    0.9907554   1.2229784
9-12 months    Guatemala BSC    GUATEMALA                      >=30                 NA                1.0428109    0.9632530   1.1223688
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                1.0750894    1.0310021   1.1191766
9-12 months    iLiNS-Zinc       BURKINA FASO                   <20                  NA                1.1567661    1.0603853   1.2531468
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=30                 NA                1.0931415    1.0303415   1.1559415
9-12 months    IRC              INDIA                          [20-30)              NA                1.1177590    1.0761940   1.1593240
9-12 months    IRC              INDIA                          <20                  NA                1.1363775    0.9868261   1.2859289
9-12 months    IRC              INDIA                          >=30                 NA                1.1761205    1.0011251   1.3511159
9-12 months    Keneba           GAMBIA                         [20-30)              NA                0.9889464    0.9256064   1.0522863
9-12 months    Keneba           GAMBIA                         <20                  NA                1.0742283    0.9836213   1.1648353
9-12 months    Keneba           GAMBIA                         >=30                 NA                0.9477828    0.8812160   1.0143495
9-12 months    LCNI-5           MALAWI                         [20-30)              NA                1.1173520    1.0558866   1.1788174
9-12 months    LCNI-5           MALAWI                         <20                  NA                0.9634602    0.8121243   1.1147962
9-12 months    LCNI-5           MALAWI                         >=30                 NA                1.0926640    1.0172564   1.1680717
9-12 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.9921501    0.9473376   1.0369626
9-12 months    MAL-ED           BANGLADESH                     <20                  NA                0.9553183    0.8373410   1.0732956
9-12 months    MAL-ED           BANGLADESH                     >=30                 NA                1.0088605    0.9152622   1.1024587
9-12 months    MAL-ED           BRAZIL                         [20-30)              NA                1.2554386    1.1719515   1.3389257
9-12 months    MAL-ED           BRAZIL                         <20                  NA                1.2319266    1.0159731   1.4478801
9-12 months    MAL-ED           BRAZIL                         >=30                 NA                1.4672054    1.3000462   1.6343645
9-12 months    MAL-ED           INDIA                          [20-30)              NA                0.9946243    0.9518096   1.0374390
9-12 months    MAL-ED           INDIA                          <20                  NA                0.8853969    0.8011160   0.9696778
9-12 months    MAL-ED           INDIA                          >=30                 NA                1.0075491    0.8416758   1.1734224
9-12 months    MAL-ED           PERU                           [20-30)              NA                1.0725719    1.0029858   1.1421580
9-12 months    MAL-ED           PERU                           <20                  NA                1.1407811    1.0406127   1.2409496
9-12 months    MAL-ED           PERU                           >=30                 NA                1.1033574    0.9940090   1.2127058
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                1.0346300    0.9496670   1.1195930
9-12 months    MAL-ED           SOUTH AFRICA                   <20                  NA                1.1145837    0.9567383   1.2724291
9-12 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.9455399    0.8293837   1.0616961
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.9208693    0.7991888   1.0425497
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.8161463    0.5032674   1.1290253
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6860528    0.5778170   0.7942885
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              NA                1.1033232    1.0597097   1.1469367
9-12 months    NIH-Birth        BANGLADESH                     <20                  NA                1.1157237    1.0047071   1.2267403
9-12 months    NIH-Birth        BANGLADESH                     >=30                 NA                1.0392015    0.9707405   1.1076625
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                1.1205667    1.0889187   1.1522147
9-12 months    NIH-Crypto       BANGLADESH                     <20                  NA                1.0850052    1.0266906   1.1433198
9-12 months    NIH-Crypto       BANGLADESH                     >=30                 NA                1.1739431    1.1018474   1.2460387
9-12 months    PROBIT           BELARUS                        [20-30)              NA                1.3599921    1.3092110   1.4107731
9-12 months    PROBIT           BELARUS                        <20                  NA                1.4050859    1.3315265   1.4786454
9-12 months    PROBIT           BELARUS                        >=30                 NA                1.4012116    1.3437649   1.4586584
9-12 months    PROVIDE          BANGLADESH                     [20-30)              NA                1.0544495    1.0221676   1.0867313
9-12 months    PROVIDE          BANGLADESH                     <20                  NA                1.0495196    0.9642125   1.1348268
9-12 months    PROVIDE          BANGLADESH                     >=30                 NA                1.0328289    0.9736229   1.0920349
9-12 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.9911019    0.9526248   1.0295791
9-12 months    SAS-CompFeed     INDIA                          <20                  NA                1.1104358    1.0244977   1.1963739
9-12 months    SAS-CompFeed     INDIA                          >=30                 NA                0.9380577    0.8594007   1.0167147
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.7783298    0.6235509   0.9331086
9-12 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.8805560    0.3162311   1.4448808
9-12 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.8810702    0.5732649   1.1888754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                1.0835044    1.0411669   1.1258419
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.1185676    0.9764277   1.2607076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.0802264    1.0166486   1.1438042
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                1.0742683    1.0519360   1.0966005
9-12 months    ZVITAMBO         ZIMBABWE                       <20                  NA                1.1021189    1.0551534   1.1490843
9-12 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                1.0920956    1.0535659   1.1306253
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.8812065    0.7985252   0.9638879
12-15 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6979078    0.5401164   0.8556992
12-15 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7826999    0.6325608   0.9328389
12-15 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7789685    0.7402417   0.8176953
12-15 months   COHORTS          GUATEMALA                      <20                  NA                0.7903659    0.7198931   0.8608387
12-15 months   COHORTS          GUATEMALA                      >=30                 NA                0.7929196    0.7512589   0.8345803
12-15 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.8802094    0.8420212   0.9183976
12-15 months   GMS-Nepal        NEPAL                          <20                  NA                0.8858894    0.8267534   0.9450255
12-15 months   GMS-Nepal        NEPAL                          >=30                 NA                0.8707672    0.8129472   0.9285872
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.9841872    0.9023171   1.0660572
12-15 months   Guatemala BSC    GUATEMALA                      <20                  NA                1.1219037    1.0264075   1.2174000
12-15 months   Guatemala BSC    GUATEMALA                      >=30                 NA                1.0194510    0.9069678   1.1319343
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.9578023    0.9082601   1.0073444
12-15 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.9943394    0.8401477   1.1485311
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.9744136    0.9067698   1.0420574
12-15 months   IRC              INDIA                          [20-30)              NA                0.9695479    0.9244329   1.0146628
12-15 months   IRC              INDIA                          <20                  NA                0.8553836    0.7179921   0.9927750
12-15 months   IRC              INDIA                          >=30                 NA                0.9040584    0.7428523   1.0652646
12-15 months   Keneba           GAMBIA                         [20-30)              NA                0.9309219    0.8866693   0.9751744
12-15 months   Keneba           GAMBIA                         <20                  NA                0.9873080    0.9060258   1.0685902
12-15 months   Keneba           GAMBIA                         >=30                 NA                0.9291363    0.8802047   0.9780679
12-15 months   LCNI-5           MALAWI                         [20-30)              NA                0.9682750    0.8491598   1.0873902
12-15 months   LCNI-5           MALAWI                         <20                  NA                0.9044013    0.7351672   1.0736354
12-15 months   LCNI-5           MALAWI                         >=30                 NA                1.0171614    0.8684571   1.1658657
12-15 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.9091984    0.8632851   0.9551118
12-15 months   MAL-ED           BANGLADESH                     <20                  NA                0.9793267    0.8499355   1.1087179
12-15 months   MAL-ED           BANGLADESH                     >=30                 NA                0.8811820    0.7836157   0.9787484
12-15 months   MAL-ED           BRAZIL                         [20-30)              NA                1.1378695    1.0616780   1.2140611
12-15 months   MAL-ED           BRAZIL                         <20                  NA                1.0884006    0.9463724   1.2304289
12-15 months   MAL-ED           BRAZIL                         >=30                 NA                1.1984975    1.0769862   1.3200088
12-15 months   MAL-ED           INDIA                          [20-30)              NA                0.8972916    0.8528214   0.9417619
12-15 months   MAL-ED           INDIA                          <20                  NA                0.9594666    0.8686324   1.0503008
12-15 months   MAL-ED           INDIA                          >=30                 NA                0.9232227    0.7647954   1.0816500
12-15 months   MAL-ED           PERU                           [20-30)              NA                0.8865991    0.8247580   0.9484402
12-15 months   MAL-ED           PERU                           <20                  NA                0.8752485    0.7808793   0.9696177
12-15 months   MAL-ED           PERU                           >=30                 NA                0.9231472    0.8238844   1.0224099
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.9056136    0.8112976   0.9999296
12-15 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.8588602    0.7473528   0.9703677
12-15 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.9625321    0.8723880   1.0526761
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.8201912    0.7338959   0.9064865
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.8412739    0.5099885   1.1725594
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9024738    0.8039278   1.0010198
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.6939508    0.6541221   0.7337795
12-15 months   NIH-Birth        BANGLADESH                     <20                  NA                0.7165375    0.6001661   0.8329088
12-15 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.8105163    0.6596434   0.9613893
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.9620630    0.9309682   0.9931578
12-15 months   NIH-Crypto       BANGLADESH                     <20                  NA                1.0095676    0.9528997   1.0662355
12-15 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.9657590    0.9100452   1.0214729
12-15 months   PROBIT           BELARUS                        [20-30)              NA                1.2088069    0.8551664   1.5624474
12-15 months   PROBIT           BELARUS                        <20                  NA                1.0016927    0.2374635   1.7659219
12-15 months   PROBIT           BELARUS                        >=30                 NA                1.1982840    0.7930778   1.6034903
12-15 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.9356860    0.9058716   0.9655005
12-15 months   PROVIDE          BANGLADESH                     <20                  NA                1.0066262    0.9212877   1.0919646
12-15 months   PROVIDE          BANGLADESH                     >=30                 NA                1.0250878    0.9602748   1.0899008
12-15 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.8445496    0.8068409   0.8822583
12-15 months   SAS-CompFeed     INDIA                          <20                  NA                0.8275987    0.7402894   0.9149081
12-15 months   SAS-CompFeed     INDIA                          >=30                 NA                0.7640634    0.6805139   0.8476129
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.9895027    0.8637928   1.1152126
12-15 months   SAS-FoodSuppl    INDIA                          <20                  NA                1.1044470    1.0013094   1.2075845
12-15 months   SAS-FoodSuppl    INDIA                          >=30                 NA                1.1134913    1.0399067   1.1870760
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.9150533    0.8694112   0.9606954
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9496149    0.7741016   1.1251282
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9639839    0.8969367   1.0310311
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.9216724    0.8890520   0.9542928
12-15 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.9120507    0.8365233   0.9875781
12-15 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.9226571    0.8610351   0.9842791
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7288385    0.6608873   0.7967898
15-18 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.8198079    0.5698594   1.0697563
15-18 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7006331    0.5073226   0.8939435
15-18 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7355086    0.6941659   0.7768513
15-18 months   COHORTS          GUATEMALA                      <20                  NA                0.7310096    0.6465538   0.8154653
15-18 months   COHORTS          GUATEMALA                      >=30                 NA                0.7649302    0.7153123   0.8145481
15-18 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.7286300    0.6815319   0.7757281
15-18 months   GMS-Nepal        NEPAL                          <20                  NA                0.8116605    0.7456324   0.8776885
15-18 months   GMS-Nepal        NEPAL                          >=30                 NA                0.7972622    0.7377385   0.8567859
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.9127647    0.8536425   0.9718869
15-18 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.9177096    0.8645506   0.9708686
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.9335438    0.8945430   0.9725446
15-18 months   IRC              INDIA                          [20-30)              NA                0.8563032    0.8121248   0.9004815
15-18 months   IRC              INDIA                          <20                  NA                0.8678088    0.7713555   0.9642620
15-18 months   IRC              INDIA                          >=30                 NA                0.8821162    0.7459186   1.0183139
15-18 months   Keneba           GAMBIA                         [20-30)              NA                0.8875032    0.8401918   0.9348146
15-18 months   Keneba           GAMBIA                         <20                  NA                0.8745121    0.7911121   0.9579121
15-18 months   Keneba           GAMBIA                         >=30                 NA                0.8676748    0.8207609   0.9145887
15-18 months   LCNI-5           MALAWI                         [20-30)              NA                0.7805844    0.6884658   0.8727030
15-18 months   LCNI-5           MALAWI                         <20                  NA                0.7699091    0.5327366   1.0070816
15-18 months   LCNI-5           MALAWI                         >=30                 NA                0.8486425    0.7132820   0.9840031
15-18 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.8390141    0.7942182   0.8838099
15-18 months   MAL-ED           BANGLADESH                     <20                  NA                0.7372065    0.6502643   0.8241488
15-18 months   MAL-ED           BANGLADESH                     >=30                 NA                0.8389887    0.7480383   0.9299390
15-18 months   MAL-ED           BRAZIL                         [20-30)              NA                0.9945790    0.9273342   1.0618238
15-18 months   MAL-ED           BRAZIL                         <20                  NA                1.1211418    0.9837829   1.2585008
15-18 months   MAL-ED           BRAZIL                         >=30                 NA                0.9357752    0.7815752   1.0899751
15-18 months   MAL-ED           INDIA                          [20-30)              NA                0.8408719    0.7994578   0.8822859
15-18 months   MAL-ED           INDIA                          <20                  NA                0.8063922    0.7161797   0.8966047
15-18 months   MAL-ED           INDIA                          >=30                 NA                0.9492075    0.8152841   1.0831308
15-18 months   MAL-ED           PERU                           [20-30)              NA                0.8350858    0.7775659   0.8926057
15-18 months   MAL-ED           PERU                           <20                  NA                0.8824073    0.7918662   0.9729484
15-18 months   MAL-ED           PERU                           >=30                 NA                0.8555031    0.7757945   0.9352116
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.9434680    0.8581852   1.0287508
15-18 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.8543637    0.7404064   0.9683211
15-18 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.8394708    0.7605686   0.9183730
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6773587    0.5920066   0.7627108
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6129281    0.3636643   0.8621919
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.7075806    0.6146622   0.8004989
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.7723496    0.7250117   0.8196875
15-18 months   NIH-Birth        BANGLADESH                     <20                  NA                0.7476477    0.6148375   0.8804579
15-18 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.7830457    0.6916244   0.8744669
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.9191093    0.8898557   0.9483630
15-18 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.9065866    0.8599205   0.9532527
15-18 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.9245274    0.8671901   0.9818647
15-18 months   PROBIT           BELARUS                        [20-30)              NA                1.0192825    0.4411898   1.5973751
15-18 months   PROBIT           BELARUS                        <20                  NA                1.2550536    1.1070655   1.4030416
15-18 months   PROBIT           BELARUS                        >=30                 NA                0.9960141    0.7771088   1.2149195
15-18 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.8748707    0.8459056   0.9038357
15-18 months   PROVIDE          BANGLADESH                     <20                  NA                0.7898408    0.7180891   0.8615926
15-18 months   PROVIDE          BANGLADESH                     >=30                 NA                0.8235207    0.7717662   0.8752753
15-18 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.9052296    0.8730810   0.9373782
15-18 months   SAS-CompFeed     INDIA                          <20                  NA                0.8771589    0.7689888   0.9853290
15-18 months   SAS-CompFeed     INDIA                          >=30                 NA                0.9333509    0.7499885   1.1167134
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.7823858    0.7383815   0.8263901
15-18 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.8139378    0.7386795   0.8891960
15-18 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.8254575    0.7456176   0.9052974
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.9510012    0.8969617   1.0050406
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.0278977    0.8470345   1.2087608
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8973374    0.8247096   0.9699651
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.8148324    0.7796048   0.8500601
15-18 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.7166278    0.6362701   0.7969855
15-18 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.8014018    0.7261395   0.8766640
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7207866    0.6466202   0.7949529
18-21 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6450669    0.4656465   0.8244874
18-21 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6077096    0.4476284   0.7677907
18-21 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7450778    0.7077205   0.7824352
18-21 months   COHORTS          GUATEMALA                      <20                  NA                0.6748126    0.5996215   0.7500038
18-21 months   COHORTS          GUATEMALA                      >=30                 NA                0.7785325    0.7271353   0.8299298
18-21 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.9089117    0.8618691   0.9559544
18-21 months   GMS-Nepal        NEPAL                          <20                  NA                0.8791821    0.8258175   0.9325466
18-21 months   GMS-Nepal        NEPAL                          >=30                 NA                0.9115371    0.8554631   0.9676112
18-21 months   IRC              INDIA                          [20-30)              NA                0.7759770    0.7340421   0.8179119
18-21 months   IRC              INDIA                          <20                  NA                0.7103079    0.5709105   0.8497053
18-21 months   IRC              INDIA                          >=30                 NA                0.6344345    0.5232948   0.7455742
18-21 months   Keneba           GAMBIA                         [20-30)              NA                0.8163899    0.7610537   0.8717261
18-21 months   Keneba           GAMBIA                         <20                  NA                0.7975920    0.7084588   0.8867252
18-21 months   Keneba           GAMBIA                         >=30                 NA                0.8259802    0.7795342   0.8724262
18-21 months   LCNI-5           MALAWI                         [20-30)              NA                0.8485608    0.7872379   0.9098837
18-21 months   LCNI-5           MALAWI                         <20                  NA                0.8740630    0.7820160   0.9661099
18-21 months   LCNI-5           MALAWI                         >=30                 NA                0.7957363    0.6776651   0.9138074
18-21 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.8237639    0.7812170   0.8663107
18-21 months   MAL-ED           BANGLADESH                     <20                  NA                0.8600330    0.7728246   0.9472414
18-21 months   MAL-ED           BANGLADESH                     >=30                 NA                0.7376890    0.6661378   0.8092401
18-21 months   MAL-ED           BRAZIL                         [20-30)              NA                0.9030540    0.8247556   0.9813525
18-21 months   MAL-ED           BRAZIL                         <20                  NA                1.0130507    0.8871791   1.1389223
18-21 months   MAL-ED           BRAZIL                         >=30                 NA                0.8859223    0.6836886   1.0881559
18-21 months   MAL-ED           INDIA                          [20-30)              NA                0.8789919    0.8379340   0.9200498
18-21 months   MAL-ED           INDIA                          <20                  NA                0.8839322    0.8017010   0.9661634
18-21 months   MAL-ED           INDIA                          >=30                 NA                0.8535901    0.7326420   0.9745383
18-21 months   MAL-ED           PERU                           [20-30)              NA                0.8692025    0.8016819   0.9367232
18-21 months   MAL-ED           PERU                           <20                  NA                0.7904688    0.7083330   0.8726046
18-21 months   MAL-ED           PERU                           >=30                 NA                0.8479639    0.7647349   0.9311930
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.7482881    0.6693488   0.8272275
18-21 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.7934366    0.6611512   0.9257219
18-21 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.8152402    0.7211299   0.9093505
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6931011    0.6031252   0.7830770
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9055283    0.5466596   1.2643970
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.7859646    0.6828327   0.8890965
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.7139813    0.6706000   0.7573626
18-21 months   NIH-Birth        BANGLADESH                     <20                  NA                0.8264232    0.7107101   0.9421364
18-21 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.7334719    0.6550431   0.8119008
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.7872433    0.7590767   0.8154099
18-21 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.8051580    0.7540250   0.8562911
18-21 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.8336103    0.7667290   0.9004915
18-21 months   PROBIT           BELARUS                        [20-30)              NA                0.8663429    0.2186199   1.5140659
18-21 months   PROBIT           BELARUS                        <20                  NA                0.9806380   -1.7415584   3.7028344
18-21 months   PROBIT           BELARUS                        >=30                 NA                0.9557495   -0.5572366   2.4687356
18-21 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.8480901    0.8202133   0.8759668
18-21 months   PROVIDE          BANGLADESH                     <20                  NA                0.8880165    0.8030932   0.9729397
18-21 months   PROVIDE          BANGLADESH                     >=30                 NA                0.7738128    0.7216931   0.8259324
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.6747096    0.6339671   0.7154522
18-21 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.7639335    0.6798953   0.8479718
18-21 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6512805    0.5680094   0.7345517
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7286506    0.6565786   0.8007226
21-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.7030794    0.5205044   0.8856544
21-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5521961    0.4454257   0.6589664
21-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.6637060    0.6309567   0.6964553
21-24 months   COHORTS          GUATEMALA                      <20                  NA                0.7168987    0.6610330   0.7727644
21-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.6813038    0.6413913   0.7212164
21-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.7780371    0.7204936   0.8355805
21-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.8431192    0.7300113   0.9562271
21-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.8386028    0.7549317   0.9222739
21-24 months   IRC              INDIA                          [20-30)              NA                0.7198925    0.6742230   0.7655619
21-24 months   IRC              INDIA                          <20                  NA                0.7184608    0.5868177   0.8501039
21-24 months   IRC              INDIA                          >=30                 NA                0.5675859    0.4612228   0.6739491
21-24 months   Keneba           GAMBIA                         [20-30)              NA                0.7075714    0.6569399   0.7582030
21-24 months   Keneba           GAMBIA                         <20                  NA                0.6655495    0.5719449   0.7591541
21-24 months   Keneba           GAMBIA                         >=30                 NA                0.7418245    0.6917283   0.7919206
21-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.7190132    0.6553827   0.7826438
21-24 months   LCNI-5           MALAWI                         <20                  NA                0.7559059    0.6089336   0.9028782
21-24 months   LCNI-5           MALAWI                         >=30                 NA                0.7816772    0.6996536   0.8637007
21-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.7583780    0.7176811   0.7990748
21-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.7757432    0.6754132   0.8760732
21-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.8070026    0.7119887   0.9020165
21-24 months   MAL-ED           BRAZIL                         [20-30)              NA                0.7633552    0.7029540   0.8237564
21-24 months   MAL-ED           BRAZIL                         <20                  NA                0.8583762    0.7641061   0.9526462
21-24 months   MAL-ED           BRAZIL                         >=30                 NA                0.8345024    0.7543990   0.9146058
21-24 months   MAL-ED           INDIA                          [20-30)              NA                0.8214035    0.7851107   0.8576963
21-24 months   MAL-ED           INDIA                          <20                  NA                0.8865516    0.8216126   0.9514906
21-24 months   MAL-ED           INDIA                          >=30                 NA                0.7409613    0.6386146   0.8433081
21-24 months   MAL-ED           PERU                           [20-30)              NA                0.7733525    0.7034336   0.8432713
21-24 months   MAL-ED           PERU                           <20                  NA                0.6901096    0.6148671   0.7653521
21-24 months   MAL-ED           PERU                           >=30                 NA                0.8098908    0.7118983   0.9078834
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.8383129    0.7764484   0.9001774
21-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.8845377    0.6987357   1.0703397
21-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.8219153    0.7437716   0.9000589
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6768496    0.5834590   0.7702402
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6602313    0.3511707   0.9692920
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.7770555    0.6869655   0.8671454
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.7243595    0.6819835   0.7667355
21-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.7861568    0.6490734   0.9232402
21-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.6672145    0.5954874   0.7389415
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.7918194    0.7618545   0.8217843
21-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.7871575    0.7313631   0.8429520
21-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.8453997    0.7806481   0.9101514
21-24 months   PROBIT           BELARUS                        [20-30)              NA                0.9087342    0.4769672   1.3405013
21-24 months   PROBIT           BELARUS                        <20                  NA                0.8310765   -0.5247171   2.1868702
21-24 months   PROBIT           BELARUS                        >=30                 NA                1.0029147   -0.6383413   2.6441707
21-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.7619961    0.7324085   0.7915838
21-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.8281128    0.7552858   0.9009398
21-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.7250207    0.6604852   0.7895563
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.6786692    0.6315080   0.7258304
21-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.6846046    0.5940537   0.7751555
21-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7359097    0.6479906   0.8238289


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     COHORTS          INDIA                          NA                   NA                3.4933099   3.4764986   3.5101213
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3511628   3.2529030   3.4494226
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED           PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1117487   3.0582191   3.1652783
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3364951   3.3159344   3.3570559
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     COHORTS          INDIA                          NA                   NA                1.8556976   1.8416635   1.8697317
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9934517   1.9540350   2.0328685
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8841864   1.8210557   1.9473170
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8319753   1.7838844   1.8800662
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7934544   1.7575747   1.8293341
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9761631   1.9564906   1.9958356
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     COHORTS          INDIA                          NA                   NA                1.1811609   1.1681741   1.1941478
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                1.1710544   1.1266484   1.2154605
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4067223   1.3558688   1.4575758
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4786627   1.4380510   1.5192744
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2395935   1.1882490   1.2909379
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2533282   1.2127795   1.2938768
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3252509   1.2884989   1.3620028
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3467090   1.3276287   1.3657894
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9507015   0.9262928   0.9751103
9-12 months    COHORTS          INDIA                          NA                   NA                0.9843733   0.9703836   0.9983630
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                1.0368624   0.9974798   1.0762451
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0909771   1.0572393   1.1247149
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9796989   0.9374166   1.0219813
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0833300   1.0357877   1.1308723
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9798106   0.9413686   1.0182526
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0906141   1.0554556   1.1257726
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0847460   1.0505310   1.1189611
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0818269   1.0639353   1.0997185
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7856579   0.7592765   0.8120393
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                1.0088179   0.9480568   1.0695791
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9678793   0.9265216   1.0092370
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9364434   0.9058162   0.9670706
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9765280   0.8927295   1.0603265
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9088824   0.8695467   0.9482181
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7217083   0.6772606   0.7661561
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9323353   0.8952881   0.9693825
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9206399   0.8936981   0.9475816
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7458835   0.7161259   0.7756412
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9203113   0.8829065   0.9577160
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8773845   0.8463323   0.9084366
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.7993060   0.7241284   0.8744836
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8454651   0.8088613   0.8820689
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7720420   0.7317680   0.8123161
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9383506   0.8960824   0.9806187
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7990484   0.7690893   0.8290075
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7491980   0.7206457   0.7777504
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8183187   0.7846393   0.8519982
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8369995   0.7863272   0.8876719
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8774517   0.8421417   0.9127616
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7294949   0.6932757   0.7657141
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8948530   0.2840229   1.5056831
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6802655   0.6462176   0.7143135
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6777084   0.6544850   0.7009317
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7171990   0.6838526   0.7505454
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7438003   0.6946600   0.7929406
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8238189   0.7927825   0.8548552
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7175377   0.6818868   0.7531886
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9164106   0.4532958   1.3795255
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6911887   0.6530789   0.7292985


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <20                  [20-30)           -0.0625141   -0.1933856    0.0683574
0-3 months     COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0834647   -0.1767778    0.0098485
0-3 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <20                  [20-30)            0.0081141   -0.0475548    0.0637830
0-3 months     COHORTS          INDIA                          >=30                 [20-30)           -0.1078406   -0.1497746   -0.0659065
0-3 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0451627   -0.0896154    0.1799409
0-3 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1138114   -0.2574986    0.0298758
0-3 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <20                  [20-30)           -0.1442071   -0.5382723    0.2498581
0-3 months     IRC              INDIA                          >=30                 [20-30)            0.0406945   -0.3835827    0.4649718
0-3 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <20                  [20-30)            0.1789656    0.0387097    0.3192216
0-3 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.1224849   -0.2234270   -0.0215427
0-3 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3027265   -0.5105597   -0.0948932
0-3 months     MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.2508000   -0.4157934   -0.0858066
0-3 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <20                  [20-30)           -0.0516568   -0.3810112    0.2776975
0-3 months     MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1039813   -0.3464758    0.1385132
0-3 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <20                  [20-30)            0.0613609   -0.2071262    0.3298479
0-3 months     MAL-ED           INDIA                          >=30                 [20-30)            0.0417704   -0.3616119    0.4451527
0-3 months     MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <20                  [20-30)            0.2921071   -0.1691026    0.7533167
0-3 months     MAL-ED           NEPAL                          >=30                 [20-30)            0.0446043   -0.1840537    0.2732623
0-3 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <20                  [20-30)            0.0100811   -0.1454513    0.1656134
0-3 months     MAL-ED           PERU                           >=30                 [20-30)           -0.1741633   -0.3416894   -0.0066372
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0232599   -0.2712378    0.3177576
0-3 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1507928   -0.0619272    0.3635129
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2529279   -0.5222412    0.0163854
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1863455   -0.3449280   -0.0277630
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0281498   -0.1264354    0.1827350
0-3 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0584160   -0.1834329    0.0666010
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0223463   -0.1272429    0.0825502
0-3 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0215125   -0.0741473    0.1171723
0-3 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <20                  [20-30)            0.0222758   -0.0316098    0.0761614
0-3 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0196918   -0.0559666    0.0165830
0-3 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <20                  [20-30)            0.0846933   -0.0488397    0.2182263
0-3 months     PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0388735   -0.1364443    0.0586973
0-3 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <20                  [20-30)            0.0140365   -0.1204376    0.1485105
0-3 months     SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1678218   -0.3113408   -0.0243027
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0618915   -0.1199342   -0.0038488
0-3 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1038462   -0.1580868   -0.0496056
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.3787276    0.0482194    0.7092357
3-6 months     CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0869836   -0.4545122    0.2805449
3-6 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <20                  [20-30)            0.0948759    0.0075905    0.1821613
3-6 months     COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0040583   -0.0718403    0.0637238
3-6 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <20                  [20-30)            0.0127735   -0.0356224    0.0611694
3-6 months     COHORTS          INDIA                          >=30                 [20-30)           -0.0310527   -0.0655044    0.0033989
3-6 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0518657   -0.0545197    0.1582511
3-6 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1119415   -0.2233816   -0.0005014
3-6 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <20                  [20-30)            0.2458590   -0.0057443    0.4974624
3-6 months     IRC              INDIA                          >=30                 [20-30)            0.0768552   -0.1901578    0.3438682
3-6 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <20                  [20-30)            0.1027805   -0.0183132    0.2238743
3-6 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.0375357   -0.1216645    0.0465931
3-6 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <20                  [20-30)            0.0184562   -0.1292466    0.1661589
3-6 months     MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0476055   -0.0856074    0.1808184
3-6 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <20                  [20-30)            0.1351047   -0.0788351    0.3490445
3-6 months     MAL-ED           BRAZIL                         >=30                 [20-30)            0.0258175   -0.1541872    0.2058222
3-6 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <20                  [20-30)            0.1517888    0.0003374    0.3032402
3-6 months     MAL-ED           INDIA                          >=30                 [20-30)            0.0022986   -0.2435477    0.2481448
3-6 months     MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <20                  [20-30)            0.0391914   -0.3588349    0.4372176
3-6 months     MAL-ED           NEPAL                          >=30                 [20-30)           -0.0052305   -0.1396364    0.1291754
3-6 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <20                  [20-30)            0.0134074   -0.1446784    0.1714932
3-6 months     MAL-ED           PERU                           >=30                 [20-30)           -0.0579161   -0.2126174    0.0967852
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0846792   -0.1365363    0.3058948
3-6 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.1242670   -0.3020288    0.0534947
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1125564   -0.2018027    0.4269154
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1422631    0.0043521    0.2801741
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0397364   -0.1850923    0.1056195
3-6 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0332301   -0.1533326    0.0868725
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0122454   -0.0755706    0.1000613
3-6 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0497196   -0.1533476    0.0539084
3-6 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <20                  [20-30)            0.0031786   -0.0401047    0.0464619
3-6 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0222360   -0.0578177    0.0133457
3-6 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0151969   -0.1201249    0.0897311
3-6 months     PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0639165   -0.1559466    0.0281135
3-6 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <20                  [20-30)            0.0944723   -0.0917760    0.2807206
3-6 months     SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0597855   -0.1550025    0.0354315
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0088899   -0.1637705    0.1459908
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0547674   -0.0240235    0.1335584
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0074886   -0.0505331    0.0655103
3-6 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0108942   -0.0606976    0.0389091
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2185234   -0.1476297    0.5846764
6-9 months     CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0578769   -0.2560874    0.1403337
6-9 months     COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <20                  [20-30)            0.1072159    0.0214957    0.1929362
6-9 months     COHORTS          GUATEMALA                      >=30                 [20-30)            0.0361869   -0.0219038    0.0942776
6-9 months     COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <20                  [20-30)           -0.0092594   -0.0602390    0.0417203
6-9 months     COHORTS          INDIA                          >=30                 [20-30)           -0.0189669   -0.0501117    0.0121778
6-9 months     GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <20                  [20-30)            0.0501525   -0.0408172    0.1411221
6-9 months     GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0377253   -0.1295283    0.0540777
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0453121   -0.0798833    0.1705075
6-9 months     Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0043977   -0.0987614    0.1075568
6-9 months     IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <20                  [20-30)           -0.0174474   -0.2347903    0.1998954
6-9 months     IRC              INDIA                          >=30                 [20-30)            0.0553256   -0.1099279    0.2205790
6-9 months     Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <20                  [20-30)           -0.0810505   -0.2516753    0.0895742
6-9 months     Keneba           GAMBIA                         >=30                 [20-30)           -0.0785236   -0.1861649    0.0291177
6-9 months     LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <20                  [20-30)            0.0493170   -0.0483091    0.1469431
6-9 months     LCNI-5           MALAWI                         >=30                 [20-30)           -0.0295124   -0.1264413    0.0674165
6-9 months     MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <20                  [20-30)            0.0366106   -0.0807498    0.1539709
6-9 months     MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1386814   -0.2374335   -0.0399293
6-9 months     MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <20                  [20-30)           -0.2184673   -0.4083199   -0.0286147
6-9 months     MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1931106   -0.3822795   -0.0039418
6-9 months     MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <20                  [20-30)            0.1666046    0.0243250    0.3088842
6-9 months     MAL-ED           INDIA                          >=30                 [20-30)            0.0869272   -0.0581558    0.2320103
6-9 months     MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <20                  [20-30)            0.0382799   -0.0878895    0.1644493
6-9 months     MAL-ED           PERU                           >=30                 [20-30)            0.1020579   -0.0341076    0.2382234
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0340752   -0.1609901    0.2291405
6-9 months     MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0132606   -0.1241649    0.1506861
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1540414   -0.4977298    0.1896470
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1184711   -0.0420487    0.2789909
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0071440   -0.1393961    0.1251080
6-9 months     NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0536570   -0.0471904    0.1545044
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0570040   -0.1319737    0.0179657
6-9 months     NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0692665   -0.1448565    0.0063234
6-9 months     PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <20                  [20-30)            0.0115913   -0.0479819    0.0711644
6-9 months     PROBIT           BELARUS                        >=30                 [20-30)           -0.0377238   -0.0674028   -0.0080448
6-9 months     PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <20                  [20-30)            0.0262468   -0.0520948    0.1045884
6-9 months     PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0050997   -0.0606479    0.0708472
6-9 months     SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0277340   -0.1925077    0.1370396
6-9 months     SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0363554   -0.0918057    0.1645165
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0781946   -0.0852702    0.2416593
6-9 months     SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.0259851   -0.1313353    0.0793651
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0150921   -0.1364281    0.1666124
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0327977   -0.1115994    0.0460039
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0121679   -0.0671053    0.0427695
6-9 months     ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0459620   -0.0934011    0.0014772
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.1287529   -0.3434958    0.0859899
9-12 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.1159073   -0.1267205    0.3585352
9-12 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.0134175   -0.0631770    0.0900120
9-12 months    COHORTS          GUATEMALA                      >=30                 [20-30)            0.0377495   -0.0144029    0.0899020
9-12 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <20                  [20-30)            0.0011451   -0.0559494    0.0582395
9-12 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0125881   -0.0450215    0.0198453
9-12 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0788318    0.0088440    0.1488197
9-12 months    GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0227309   -0.0542663    0.0997281
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0907480   -0.0347553    0.2162514
9-12 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0266920   -0.0660371    0.1194211
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0816767   -0.0032401    0.1665935
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0180521   -0.0673579    0.1034621
9-12 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <20                  [20-30)            0.0186186   -0.1366015    0.1738386
9-12 months    IRC              INDIA                          >=30                 [20-30)            0.0583616   -0.1215024    0.2382255
9-12 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <20                  [20-30)            0.0852819   -0.0252693    0.1958332
9-12 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.0411636   -0.1330498    0.0507226
9-12 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <20                  [20-30)           -0.1538918   -0.3172336    0.0094501
9-12 months    LCNI-5           MALAWI                         >=30                 [20-30)           -0.0246879   -0.1219726    0.0725968
9-12 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0368318   -0.1630332    0.0893696
9-12 months    MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0167103   -0.0870624    0.1204831
9-12 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0235120   -0.2550417    0.2080177
9-12 months    MAL-ED           BRAZIL                         >=30                 [20-30)            0.2117668    0.0249185    0.3986150
9-12 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <20                  [20-30)           -0.1092274   -0.2037597   -0.0146951
9-12 months    MAL-ED           INDIA                          >=30                 [20-30)            0.0129248   -0.1583851    0.1842346
9-12 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <20                  [20-30)            0.0682092   -0.0537578    0.1901762
9-12 months    MAL-ED           PERU                           >=30                 [20-30)            0.0307855   -0.0988266    0.1603976
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0799537   -0.0993056    0.2592129
9-12 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0890901   -0.2330032    0.0548230
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1047229   -0.4404301    0.2309843
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2348165   -0.3976695   -0.0719634
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0124005   -0.1068757    0.1316768
9-12 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0641217   -0.1452946    0.0170512
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0355615   -0.1019105    0.0307875
9-12 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0533764   -0.0253598    0.1321125
9-12 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <20                  [20-30)            0.0450939    0.0038569    0.0863309
9-12 months    PROBIT           BELARUS                        >=30                 [20-30)            0.0412196   -0.0053355    0.0877747
9-12 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0049298   -0.0961407    0.0862810
9-12 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0216205   -0.0890555    0.0458144
9-12 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.1193339    0.0137328    0.2249350
9-12 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0530442   -0.1224915    0.0164030
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1022262   -0.4829396    0.6873920
9-12 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.1027404   -0.2417891    0.4472699
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0350633   -0.1132479    0.1833745
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0032779   -0.0796625    0.0731066
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0278506   -0.0241541    0.0798553
9-12 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0178274   -0.0267065    0.0623612
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.1832987   -0.3614401   -0.0051574
12-15 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0985067   -0.2699066    0.0728933
12-15 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0113973   -0.0690152    0.0918099
12-15 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0139510   -0.0429294    0.0708314
12-15 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0056801   -0.0647146    0.0760747
12-15 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0094422   -0.0787350    0.0598506
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.1377166    0.0119301    0.2635031
12-15 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0352639   -0.1038591    0.1743868
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0365371   -0.1219927    0.1950669
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0166113   -0.0630643    0.0962868
12-15 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <20                  [20-30)           -0.1141643   -0.2587733    0.0304447
12-15 months   IRC              INDIA                          >=30                 [20-30)           -0.0654894   -0.2328895    0.1019106
12-15 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <20                  [20-30)            0.0563861   -0.0361616    0.1489338
12-15 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0017856   -0.0677597    0.0641886
12-15 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.0638737   -0.2708245    0.1430770
12-15 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0488864   -0.1416429    0.2394156
12-15 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0701283   -0.0671675    0.2074240
12-15 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0280164   -0.1358460    0.0798132
12-15 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0494689   -0.2106433    0.1117054
12-15 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.0606280   -0.0827950    0.2040509
12-15 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <20                  [20-30)            0.0621749   -0.0389609    0.1633108
12-15 months   MAL-ED           INDIA                          >=30                 [20-30)            0.0259310   -0.1386193    0.1904814
12-15 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <20                  [20-30)           -0.0113506   -0.1241773    0.1014761
12-15 months   MAL-ED           PERU                           >=30                 [20-30)            0.0365480   -0.0804024    0.1534985
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0467534   -0.1927993    0.0992925
12-15 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0569184   -0.0735479    0.1873847
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0210827   -0.3212577    0.3634231
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0822826   -0.0487068    0.2132719
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0225867   -0.1004118    0.1455851
12-15 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1165655   -0.0394761    0.2726071
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0475046   -0.0171339    0.1121431
12-15 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0036960   -0.0601077    0.0674998
12-15 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <20                  [20-30)           -0.2071142   -0.8154933    0.4012650
12-15 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0105228   -0.5271137    0.5060681
12-15 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0709401   -0.0194565    0.1613368
12-15 months   PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0894018    0.0180601    0.1607434
12-15 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0169508   -0.0955736    0.0616719
12-15 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.0804862   -0.1724964    0.0115240
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1149443   -0.0476605    0.2775491
12-15 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.1239887   -0.0216742    0.2696515
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0345616   -0.1467892    0.2159124
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0489306   -0.0321775    0.1300387
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0096217   -0.0918925    0.0726490
12-15 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0009847   -0.0687388    0.0707082
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0909693   -0.1680511    0.3499898
15-18 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0282055   -0.2331110    0.1767001
15-18 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0044990   -0.0985309    0.0895329
15-18 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0294216   -0.0351629    0.0940061
15-18 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0830305    0.0019260    0.1641350
15-18 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0686322   -0.0072711    0.1445355
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)            0.0049449   -0.0719310    0.0818208
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)            0.0207791   -0.0460759    0.0876341
15-18 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <20                  [20-30)            0.0115056   -0.0945838    0.1175950
15-18 months   IRC              INDIA                          >=30                 [20-30)            0.0258131   -0.1173705    0.1689967
15-18 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0129911   -0.1088761    0.0828939
15-18 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0198284   -0.0864564    0.0467996
15-18 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.0106753   -0.2651093    0.2437586
15-18 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0680581   -0.0956743    0.2317906
15-18 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.1018076   -0.1996115   -0.0040036
15-18 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0000254   -0.1014090    0.1013582
15-18 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.1265629   -0.0263729    0.2794986
15-18 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0588038   -0.2270284    0.1094207
15-18 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0344796   -0.1337440    0.0647847
15-18 months   MAL-ED           INDIA                          >=30                 [20-30)            0.1083356   -0.0318449    0.2485162
15-18 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <20                  [20-30)            0.0473215   -0.0599456    0.1545886
15-18 months   MAL-ED           PERU                           >=30                 [20-30)            0.0204173   -0.0778781    0.1187128
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.0891043   -0.2314399    0.0532314
15-18 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.1039972   -0.2201812    0.0121868
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0644306   -0.3279025    0.1990412
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0302219   -0.0959479    0.1563916
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0247019   -0.1656963    0.1162925
15-18 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0106961   -0.0922540    0.1136462
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0125227   -0.0675999    0.0425545
15-18 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0054180   -0.0589507    0.0697868
15-18 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <20                  [20-30)            0.2357711   -0.3709578    0.8425000
15-18 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0232683   -0.5978932    0.5513565
15-18 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0850298   -0.1624074   -0.0076523
15-18 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0513499   -0.1106585    0.0079586
15-18 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0280707   -0.1435227    0.0873812
15-18 months   SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0281213   -0.1640955    0.2203382
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0315519   -0.0556271    0.1187310
15-18 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)            0.0430717   -0.0480918    0.1342352
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0768965   -0.1118672    0.2656602
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0536638   -0.1441903    0.0368627
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0982046   -0.1859449   -0.0104644
15-18 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0134307   -0.0965294    0.0696680
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0757196   -0.2698648    0.1184255
18-21 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.1130770   -0.2895044    0.0633504
18-21 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0702652   -0.1542252    0.0136949
18-21 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0334547   -0.0300846    0.0969941
18-21 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0297297   -0.1008688    0.0414095
18-21 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0026254   -0.0705683    0.0758191
18-21 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <20                  [20-30)           -0.0656691   -0.2112376    0.0798993
18-21 months   IRC              INDIA                          >=30                 [20-30)           -0.1415425   -0.2603304   -0.0227546
18-21 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0187979   -0.1237113    0.0861155
18-21 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0095902   -0.0626547    0.0818351
18-21 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <20                  [20-30)            0.0255021   -0.0851014    0.1361057
18-21 months   LCNI-5           MALAWI                         >=30                 [20-30)           -0.0528246   -0.1858708    0.0802217
18-21 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0362691   -0.0607646    0.1333029
18-21 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0860749   -0.1693203   -0.0028295
18-21 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.1099967   -0.0382407    0.2582340
18-21 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.0171318   -0.2339937    0.1997301
18-21 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <20                  [20-30)            0.0049403   -0.0869712    0.0968518
18-21 months   MAL-ED           INDIA                          >=30                 [20-30)           -0.0254018   -0.1531288    0.1023253
18-21 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <20                  [20-30)           -0.0787338   -0.1850602    0.0275927
18-21 months   MAL-ED           PERU                           >=30                 [20-30)           -0.0212386   -0.1284119    0.0859347
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0451484   -0.1088997    0.1991966
18-21 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0669521   -0.0558818    0.1897860
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2124272   -0.1575490    0.5824035
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0928635   -0.0440008    0.2297279
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1124420   -0.0111359    0.2360198
18-21 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0194906   -0.0701365    0.1091178
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0179147   -0.0404629    0.0762923
18-21 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0463669   -0.0262034    0.1189373
18-21 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        <20                  [20-30)            0.1142951   -2.7121196    2.9407098
18-21 months   PROBIT           BELARUS                        >=30                 [20-30)            0.0894066   -1.5669189    1.7457321
18-21 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0399264   -0.0494552    0.1293080
18-21 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0742773   -0.1333837   -0.0151709
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0892239   -0.0041698    0.1826176
18-21 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0234291   -0.1161332    0.0692749
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0255711   -0.2218566    0.1707143
21-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.1764545   -0.3052733   -0.0476357
21-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0531927   -0.0115644    0.1179499
21-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0175978   -0.0340309    0.0692266
21-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)            0.0650822   -0.0618219    0.1919862
21-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0605657   -0.0409827    0.1621142
21-24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <20                  [20-30)           -0.0014317   -0.1407716    0.1379082
21-24 months   IRC              INDIA                          >=30                 [20-30)           -0.1523065   -0.2680598   -0.0365533
21-24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0420220   -0.1484427    0.0643988
21-24 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0342530   -0.0369732    0.1054793
21-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <20                  [20-30)            0.0368926   -0.1232626    0.1970479
21-24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0626640   -0.0411470    0.1664749
21-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)            0.0173652   -0.0909046    0.1256350
21-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0486246   -0.0547382    0.1519874
21-24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.0950209   -0.0169395    0.2069814
21-24 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.0711472   -0.0291766    0.1714710
21-24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <20                  [20-30)            0.0651481   -0.0092444    0.1395406
21-24 months   MAL-ED           INDIA                          >=30                 [20-30)           -0.0804422   -0.1890333    0.0281489
21-24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <20                  [20-30)           -0.0832428   -0.1859564    0.0194708
21-24 months   MAL-ED           PERU                           >=30                 [20-30)            0.0365384   -0.0838410    0.1569177
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0462248   -0.1496057    0.2420553
21-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0163977   -0.1160653    0.0832700
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0166183   -0.3394810    0.3062443
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1002058   -0.0295555    0.2299672
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0617973   -0.0816864    0.2052810
21-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0571450   -0.1404546    0.0261646
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0046619   -0.0679937    0.0586699
21-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0535803   -0.0177686    0.1249293
21-24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        <20                  [20-30)           -0.0776577   -1.5441604    1.3888450
21-24 months   PROBIT           BELARUS                        >=30                 [20-30)            0.0941804   -1.6365001    1.8248609
21-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)            0.0661167   -0.0124913    0.1447246
21-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0369754   -0.1079702    0.0340194
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0059354   -0.0961609    0.1080317
21-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0572406   -0.0425290    0.1570101


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      [20-30)              NA                -0.0410338   -0.0863389    0.0042713
0-3 months     COHORTS          INDIA                          [20-30)              NA                -0.0261014   -0.0381430   -0.0140598
0-3 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0093699   -0.0468523    0.0281124
0-3 months     IRC              INDIA                          [20-30)              NA                -0.0097084   -0.0578217    0.0384048
0-3 months     Keneba           GAMBIA                         [20-30)              NA                -0.0187484   -0.0700190    0.0325221
0-3 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0869507   -0.1343995   -0.0395020
0-3 months     MAL-ED           BRAZIL                         [20-30)              NA                -0.0333630   -0.1251406    0.0584147
0-3 months     MAL-ED           INDIA                          [20-30)              NA                 0.0114265   -0.0404406    0.0632936
0-3 months     MAL-ED           NEPAL                          [20-30)              NA                 0.0185120   -0.0328086    0.0698326
0-3 months     MAL-ED           PERU                           [20-30)              NA                -0.0359989   -0.1022172    0.0302193
0-3 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0548727   -0.0399335    0.1496790
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0868694   -0.1557794   -0.0179595
0-3 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0095915   -0.0447107    0.0255277
0-3 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0003592   -0.0276463    0.0269279
0-3 months     PROBIT           BELARUS                        [20-30)              NA                -0.0012353   -0.0113032    0.0088325
0-3 months     PROVIDE          BANGLADESH                     [20-30)              NA                 0.0025538   -0.0225926    0.0277001
0-3 months     SAS-CompFeed     INDIA                          [20-30)              NA                -0.0179608   -0.0455700    0.0096484
0-3 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0287699   -0.0434260   -0.0141139
3-6 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0228249   -0.0339422    0.0795920
3-6 months     COHORTS          GUATEMALA                      [20-30)              NA                 0.0096186   -0.0215323    0.0407695
3-6 months     COHORTS          INDIA                          [20-30)              NA                -0.0067045   -0.0164888    0.0030798
3-6 months     GMS-Nepal        NEPAL                          [20-30)              NA                -0.0087048   -0.0367778    0.0193682
3-6 months     IRC              INDIA                          [20-30)              NA                 0.0270957   -0.0037603    0.0579518
3-6 months     Keneba           GAMBIA                         [20-30)              NA                -0.0013310   -0.0437106    0.0410486
3-6 months     MAL-ED           BANGLADESH                     [20-30)              NA                 0.0103879   -0.0223536    0.0431294
3-6 months     MAL-ED           BRAZIL                         [20-30)              NA                 0.0298668   -0.0339345    0.0936681
3-6 months     MAL-ED           INDIA                          [20-30)              NA                 0.0221711   -0.0114332    0.0557753
3-6 months     MAL-ED           NEPAL                          [20-30)              NA                -0.0001916   -0.0291393    0.0287560
3-6 months     MAL-ED           PERU                           [20-30)              NA                -0.0092989   -0.0758054    0.0572076
3-6 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0317374   -0.1192315    0.0557568
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0656466    0.0015247    0.1297686
3-6 months     NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0116059   -0.0449892    0.0217773
3-6 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0062931   -0.0327883    0.0202021
3-6 months     PROBIT           BELARUS                        [20-30)              NA                -0.0036273   -0.0108878    0.0036333
3-6 months     PROVIDE          BANGLADESH                     [20-30)              NA                -0.0137043   -0.0359971    0.0085885
3-6 months     SAS-CompFeed     INDIA                          [20-30)              NA                 0.0038214   -0.0237902    0.0314330
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0148489   -0.0118167    0.0415145
3-6 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010512   -0.0150930    0.0129906
6-9 months     CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0125218   -0.0306450    0.0556887
6-9 months     COHORTS          GUATEMALA                      [20-30)              NA                 0.0269562   -0.0005213    0.0544337
6-9 months     COHORTS          INDIA                          [20-30)              NA                -0.0055118   -0.0147377    0.0037141
6-9 months     GMS-Nepal        NEPAL                          [20-30)              NA                 0.0030321   -0.0228749    0.0289390
6-9 months     Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0082158   -0.0242833    0.0407149
6-9 months     IRC              INDIA                          [20-30)              NA                 0.0023989   -0.0209286    0.0257263
6-9 months     Keneba           GAMBIA                         [20-30)              NA                -0.0410522   -0.0939867    0.0118822
6-9 months     LCNI-5           MALAWI                         [20-30)              NA                 0.0002153   -0.0372898    0.0377204
6-9 months     MAL-ED           BANGLADESH                     [20-30)              NA                -0.0170580   -0.0432969    0.0091809
6-9 months     MAL-ED           BRAZIL                         [20-30)              NA                -0.0804281   -0.1431785   -0.0176776
6-9 months     MAL-ED           INDIA                          [20-30)              NA                 0.0324697    0.0047497    0.0601898
6-9 months     MAL-ED           PERU                           [20-30)              NA                 0.0342646   -0.0217419    0.0902712
6-9 months     MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0110095   -0.0615388    0.0835579
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0427006   -0.0342015    0.1196027
6-9 months     NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0109488   -0.0169623    0.0388599
6-9 months     NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0219233   -0.0427276   -0.0011189
6-9 months     PROBIT           BELARUS                        [20-30)              NA                -0.0055311   -0.0131787    0.0021164
6-9 months     PROVIDE          BANGLADESH                     [20-30)              NA                 0.0037350   -0.0122388    0.0197088
6-9 months     SAS-CompFeed     INDIA                          [20-30)              NA                 0.0010174   -0.0303903    0.0324251
6-9 months     SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0002681   -0.0298288    0.0303650
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0083473   -0.0351145    0.0184200
6-9 months     ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0107673   -0.0242741    0.0027395
9-12 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0029279   -0.0335472    0.0394030
9-12 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0161991   -0.0088650    0.0412631
9-12 months    COHORTS          INDIA                          [20-30)              NA                -0.0032799   -0.0132348    0.0066749
9-12 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0172984   -0.0031210    0.0377177
9-12 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0207436   -0.0113971    0.0528842
9-12 months    iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0158877   -0.0155146    0.0472900
9-12 months    IRC              INDIA                          [20-30)              NA                 0.0057144   -0.0134277    0.0248566
9-12 months    Keneba           GAMBIA                         [20-30)              NA                -0.0092474   -0.0554006    0.0369057
9-12 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0340220   -0.0809373    0.0128934
9-12 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0025055   -0.0302973    0.0252862
9-12 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0428173   -0.0209518    0.1065865
9-12 months    MAL-ED           INDIA                          [20-30)              NA                -0.0148137   -0.0377173    0.0080899
9-12 months    MAL-ED           PERU                           [20-30)              NA                 0.0259405   -0.0255795    0.0774605
9-12 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0203042   -0.0908531    0.0502447
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1077616   -0.1872554   -0.0282678
9-12 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0127091   -0.0365915    0.0111734
9-12 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0029078   -0.0167328    0.0225484
9-12 months    PROBIT           BELARUS                        [20-30)              NA                 0.0119493    0.0034874    0.0204113
9-12 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0044745   -0.0215751    0.0126261
9-12 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0086305   -0.0110573    0.0283183
9-12 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0323351   -0.0659886    0.1306588
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0012416   -0.0241252    0.0266084
9-12 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0075587   -0.0051762    0.0202935
12-15 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0278341   -0.0568398    0.0011716
12-15 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0066893   -0.0198851    0.0332638
12-15 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0005047   -0.0194966    0.0184872
12-15 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0246308   -0.0232808    0.0725424
12-15 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0100770   -0.0231792    0.0433332
12-15 months   IRC              INDIA                          [20-30)              NA                -0.0141939   -0.0320745    0.0036866
12-15 months   Keneba           GAMBIA                         [20-30)              NA                 0.0055215   -0.0277899    0.0388330
12-15 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0082530   -0.0731822    0.0896881
12-15 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0049020   -0.0246408    0.0344448
12-15 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0043078   -0.0435039    0.0521196
12-15 months   MAL-ED           INDIA                          [20-30)              NA                 0.0115907   -0.0112825    0.0344639
12-15 months   MAL-ED           PERU                           [20-30)              NA                 0.0051289   -0.0418939    0.0521516
12-15 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0140158   -0.0530145    0.0810461
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0361646   -0.0260839    0.0984131
12-15 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0277575   -0.0098226    0.0653377
12-15 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0090765   -0.0088642    0.0270171
12-15 months   PROBIT           BELARUS                        [20-30)              NA                -0.0218676   -0.1267267    0.0829915
12-15 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0240640    0.0062662    0.0418618
12-15 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0110807   -0.0296296    0.0074681
12-15 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0372798   -0.0059845    0.0805441
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0172820   -0.0116037    0.0461677
12-15 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010326   -0.0199697    0.0179046
15-18 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0050750   -0.0312673    0.0414173
15-18 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0103750   -0.0190890    0.0398389
15-18 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0263220    0.0036555    0.0489885
15-18 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0075466   -0.0208867    0.0359799
15-18 months   IRC              INDIA                          [20-30)              NA                 0.0028184   -0.0116991    0.0173359
15-18 months   Keneba           GAMBIA                         [20-30)              NA                -0.0101187   -0.0444574    0.0242200
15-18 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0187216   -0.0525172    0.0899603
15-18 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0148915   -0.0406504    0.0108674
15-18 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0075324   -0.0428477    0.0579125
15-18 months   MAL-ED           INDIA                          [20-30)              NA                 0.0045932   -0.0162954    0.0254818
15-18 months   MAL-ED           PERU                           [20-30)              NA                 0.0183450   -0.0255669    0.0622568
15-18 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0563178   -0.1172309    0.0045954
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0093892   -0.0496948    0.0684733
15-18 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0003075   -0.0293757    0.0287606
15-18 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0013926   -0.0176166    0.0148314
15-18 months   PROBIT           BELARUS                        [20-30)              NA                 0.0147157   -0.1326438    0.1620752
15-18 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0187709   -0.0338491   -0.0036926
15-18 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0005459   -0.0192375    0.0181457
15-18 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0124003   -0.0110739    0.0358745
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0126506   -0.0455957    0.0202945
15-18 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0157841   -0.0379840    0.0064159
18-21 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0207946   -0.0515643    0.0099750
18-21 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0041202   -0.0243691    0.0326096
18-21 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0050162   -0.0253041    0.0152717
18-21 months   IRC              INDIA                          [20-30)              NA                -0.0161749   -0.0328029    0.0004531
18-21 months   Keneba           GAMBIA                         [20-30)              NA                 0.0019288   -0.0359532    0.0398108
18-21 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0115613   -0.0599901    0.0368675
18-21 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0103791   -0.0326846    0.0119264
18-21 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0130218   -0.0480456    0.0740893
18-21 months   MAL-ED           INDIA                          [20-30)              NA                -0.0015402   -0.0204812    0.0174008
18-21 months   MAL-ED           PERU                           [20-30)              NA                -0.0277587   -0.0753440    0.0198267
18-21 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0338929   -0.0278167    0.0956024
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0506028   -0.0139066    0.1151121
18-21 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0155136   -0.0096011    0.0406283
18-21 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0105322   -0.0065540    0.0276184
18-21 months   PROBIT           BELARUS                        [20-30)              NA                 0.0285101   -0.4374268    0.4944469
18-21 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0087524   -0.0244539    0.0069491
18-21 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0055559   -0.0190600    0.0301718
21-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0218034   -0.0475461    0.0039393
21-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0140024   -0.0099105    0.0379152
21-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0209941   -0.0098765    0.0518648
21-24 months   IRC              INDIA                          [20-30)              NA                -0.0114796   -0.0277827    0.0048235
21-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0096275   -0.0271000    0.0463551
21-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0247870   -0.0218055    0.0713795
21-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0110403   -0.0143030    0.0363835
21-24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0327967   -0.0026260    0.0682194
21-24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0024154   -0.0139978    0.0188286
21-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0123019   -0.0605525    0.0359487
21-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0011821   -0.0546949    0.0570590
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0420831   -0.0176012    0.1017674
21-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0068218   -0.0316572    0.0180137
21-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0075159   -0.0107684    0.0258003
21-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0076764   -0.4016407    0.4169935
21-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0011429   -0.0154393    0.0177252
21-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0125195   -0.0140011    0.0390400
