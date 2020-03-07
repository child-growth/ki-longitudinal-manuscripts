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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        meducyrs    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          High           144     331
0-3 months     CMC-V-BCS-2002   INDIA                          Low             89     331
0-3 months     CMC-V-BCS-2002   INDIA                          Medium          98     331
0-3 months     COHORTS          GUATEMALA                      High           164     791
0-3 months     COHORTS          GUATEMALA                      Low            380     791
0-3 months     COHORTS          GUATEMALA                      Medium         247     791
0-3 months     COHORTS          INDIA                          High           698    5245
0-3 months     COHORTS          INDIA                          Low           1744    5245
0-3 months     COHORTS          INDIA                          Medium        2803    5245
0-3 months     EE               PAKISTAN                       High            13     317
0-3 months     EE               PAKISTAN                       Low            280     317
0-3 months     EE               PAKISTAN                       Medium          24     317
0-3 months     GMS-Nepal        NEPAL                          High            63     506
0-3 months     GMS-Nepal        NEPAL                          Low            361     506
0-3 months     GMS-Nepal        NEPAL                          Medium          82     506
0-3 months     IRC              INDIA                          High           120     394
0-3 months     IRC              INDIA                          Low            141     394
0-3 months     IRC              INDIA                          Medium         133     394
0-3 months     JiVitA-3         BANGLADESH                     High          6200   20264
0-3 months     JiVitA-3         BANGLADESH                     Low           7871   20264
0-3 months     JiVitA-3         BANGLADESH                     Medium        6193   20264
0-3 months     JiVitA-4         BANGLADESH                     High           589    1791
0-3 months     JiVitA-4         BANGLADESH                     Low            633    1791
0-3 months     JiVitA-4         BANGLADESH                     Medium         569    1791
0-3 months     MAL-ED           BANGLADESH                     High            75     200
0-3 months     MAL-ED           BANGLADESH                     Low             66     200
0-3 months     MAL-ED           BANGLADESH                     Medium          59     200
0-3 months     MAL-ED           BRAZIL                         High            74     217
0-3 months     MAL-ED           BRAZIL                         Low             60     217
0-3 months     MAL-ED           BRAZIL                         Medium          83     217
0-3 months     MAL-ED           INDIA                          High            58     207
0-3 months     MAL-ED           INDIA                          Low             72     207
0-3 months     MAL-ED           INDIA                          Medium          77     207
0-3 months     MAL-ED           NEPAL                          High            50     218
0-3 months     MAL-ED           NEPAL                          Low             92     218
0-3 months     MAL-ED           NEPAL                          Medium          76     218
0-3 months     MAL-ED           PERU                           High            85     281
0-3 months     MAL-ED           PERU                           Low             98     281
0-3 months     MAL-ED           PERU                           Medium          98     281
0-3 months     MAL-ED           SOUTH AFRICA                   High            80     272
0-3 months     MAL-ED           SOUTH AFRICA                   Low            131     272
0-3 months     MAL-ED           SOUTH AFRICA                   Medium          61     272
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             8     197
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             59     197
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         130     197
0-3 months     NIH-Birth        BANGLADESH                     High           163     565
0-3 months     NIH-Birth        BANGLADESH                     Low            205     565
0-3 months     NIH-Birth        BANGLADESH                     Medium         197     565
0-3 months     NIH-Crypto       BANGLADESH                     High           243     725
0-3 months     NIH-Crypto       BANGLADESH                     Low            230     725
0-3 months     NIH-Crypto       BANGLADESH                     Medium         252     725
0-3 months     PROBIT           BELARUS                        High          2575   15327
0-3 months     PROBIT           BELARUS                        Low           5489   15327
0-3 months     PROBIT           BELARUS                        Medium        7263   15327
0-3 months     PROVIDE          BANGLADESH                     High           218     640
0-3 months     PROVIDE          BANGLADESH                     Low            196     640
0-3 months     PROVIDE          BANGLADESH                     Medium         226     640
0-3 months     SAS-CompFeed     INDIA                          High           278    1265
0-3 months     SAS-CompFeed     INDIA                          Low            568    1265
0-3 months     SAS-CompFeed     INDIA                          Medium         419    1265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2015
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2015
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1429    2015
0-3 months     ZVITAMBO         ZIMBABWE                       High          4356    8157
0-3 months     ZVITAMBO         ZIMBABWE                       Low           1750    8157
0-3 months     ZVITAMBO         ZIMBABWE                       Medium        2051    8157
3-6 months     CMC-V-BCS-2002   INDIA                          High           135     322
3-6 months     CMC-V-BCS-2002   INDIA                          Low             90     322
3-6 months     CMC-V-BCS-2002   INDIA                          Medium          97     322
3-6 months     COHORTS          GUATEMALA                      High           161     802
3-6 months     COHORTS          GUATEMALA                      Low            383     802
3-6 months     COHORTS          GUATEMALA                      Medium         258     802
3-6 months     COHORTS          INDIA                          High           723    5299
3-6 months     COHORTS          INDIA                          Low           1736    5299
3-6 months     COHORTS          INDIA                          Medium        2840    5299
3-6 months     EE               PAKISTAN                       High            11     273
3-6 months     EE               PAKISTAN                       Low            240     273
3-6 months     EE               PAKISTAN                       Medium          22     273
3-6 months     GMS-Nepal        NEPAL                          High            58     466
3-6 months     GMS-Nepal        NEPAL                          Low            334     466
3-6 months     GMS-Nepal        NEPAL                          Medium          74     466
3-6 months     IRC              INDIA                          High           120     399
3-6 months     IRC              INDIA                          Low            142     399
3-6 months     IRC              INDIA                          Medium         137     399
3-6 months     JiVitA-3         BANGLADESH                     High          4374   12708
3-6 months     JiVitA-3         BANGLADESH                     Low           4433   12708
3-6 months     JiVitA-3         BANGLADESH                     Medium        3901   12708
3-6 months     JiVitA-4         BANGLADESH                     High           628    1816
3-6 months     JiVitA-4         BANGLADESH                     Low            622    1816
3-6 months     JiVitA-4         BANGLADESH                     Medium         566    1816
3-6 months     MAL-ED           BANGLADESH                     High            73     190
3-6 months     MAL-ED           BANGLADESH                     Low             62     190
3-6 months     MAL-ED           BANGLADESH                     Medium          55     190
3-6 months     MAL-ED           BRAZIL                         High            71     207
3-6 months     MAL-ED           BRAZIL                         Low             55     207
3-6 months     MAL-ED           BRAZIL                         Medium          81     207
3-6 months     MAL-ED           INDIA                          High            56     202
3-6 months     MAL-ED           INDIA                          Low             69     202
3-6 months     MAL-ED           INDIA                          Medium          77     202
3-6 months     MAL-ED           NEPAL                          High            50     218
3-6 months     MAL-ED           NEPAL                          Low             93     218
3-6 months     MAL-ED           NEPAL                          Medium          75     218
3-6 months     MAL-ED           PERU                           High            81     266
3-6 months     MAL-ED           PERU                           Low             92     266
3-6 months     MAL-ED           PERU                           Medium          93     266
3-6 months     MAL-ED           SOUTH AFRICA                   High            67     243
3-6 months     MAL-ED           SOUTH AFRICA                   Low            121     243
3-6 months     MAL-ED           SOUTH AFRICA                   Medium          55     243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             9     198
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             62     198
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         127     198
3-6 months     NIH-Birth        BANGLADESH                     High           147     522
3-6 months     NIH-Birth        BANGLADESH                     Low            192     522
3-6 months     NIH-Birth        BANGLADESH                     Medium         183     522
3-6 months     NIH-Crypto       BANGLADESH                     High           235     702
3-6 months     NIH-Crypto       BANGLADESH                     Low            222     702
3-6 months     NIH-Crypto       BANGLADESH                     Medium         245     702
3-6 months     PROBIT           BELARUS                        High          2240   13317
3-6 months     PROBIT           BELARUS                        Low           4771   13317
3-6 months     PROBIT           BELARUS                        Medium        6306   13317
3-6 months     PROVIDE          BANGLADESH                     High           207     601
3-6 months     PROVIDE          BANGLADESH                     Low            186     601
3-6 months     PROVIDE          BANGLADESH                     Medium         208     601
3-6 months     SAS-CompFeed     INDIA                          High           249    1118
3-6 months     SAS-CompFeed     INDIA                          Low            510    1118
3-6 months     SAS-CompFeed     INDIA                          Medium         359    1118
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           408    1660
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             57    1660
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1195    1660
3-6 months     ZVITAMBO         ZIMBABWE                       High          3272    6126
3-6 months     ZVITAMBO         ZIMBABWE                       Low           1282    6126
3-6 months     ZVITAMBO         ZIMBABWE                       Medium        1572    6126
6-9 months     CMC-V-BCS-2002   INDIA                          High           138     325
6-9 months     CMC-V-BCS-2002   INDIA                          Low             94     325
6-9 months     CMC-V-BCS-2002   INDIA                          Medium          93     325
6-9 months     COHORTS          GUATEMALA                      High           159     821
6-9 months     COHORTS          GUATEMALA                      Low            380     821
6-9 months     COHORTS          GUATEMALA                      Medium         282     821
6-9 months     COHORTS          INDIA                          High           646    4742
6-9 months     COHORTS          INDIA                          Low           1541    4742
6-9 months     COHORTS          INDIA                          Medium        2555    4742
6-9 months     EE               PAKISTAN                       High            12     299
6-9 months     EE               PAKISTAN                       Low            258     299
6-9 months     EE               PAKISTAN                       Medium          29     299
6-9 months     GMS-Nepal        NEPAL                          High            55     475
6-9 months     GMS-Nepal        NEPAL                          Low            339     475
6-9 months     GMS-Nepal        NEPAL                          Medium          81     475
6-9 months     Guatemala BSC    GUATEMALA                      High            89     212
6-9 months     Guatemala BSC    GUATEMALA                      Low             58     212
6-9 months     Guatemala BSC    GUATEMALA                      Medium          65     212
6-9 months     IRC              INDIA                          High           124     410
6-9 months     IRC              INDIA                          Low            147     410
6-9 months     IRC              INDIA                          Medium         139     410
6-9 months     JiVitA-4         BANGLADESH                     High          1105    3068
6-9 months     JiVitA-4         BANGLADESH                     Low           1011    3068
6-9 months     JiVitA-4         BANGLADESH                     Medium         952    3068
6-9 months     LCNI-5           MALAWI                         High           217     554
6-9 months     LCNI-5           MALAWI                         Low            174     554
6-9 months     LCNI-5           MALAWI                         Medium         163     554
6-9 months     MAL-ED           BANGLADESH                     High            69     185
6-9 months     MAL-ED           BANGLADESH                     Low             61     185
6-9 months     MAL-ED           BANGLADESH                     Medium          55     185
6-9 months     MAL-ED           BRAZIL                         High            67     197
6-9 months     MAL-ED           BRAZIL                         Low             51     197
6-9 months     MAL-ED           BRAZIL                         Medium          79     197
6-9 months     MAL-ED           INDIA                          High            57     202
6-9 months     MAL-ED           INDIA                          Low             68     202
6-9 months     MAL-ED           INDIA                          Medium          77     202
6-9 months     MAL-ED           NEPAL                          High            50     215
6-9 months     MAL-ED           NEPAL                          Low             92     215
6-9 months     MAL-ED           NEPAL                          Medium          73     215
6-9 months     MAL-ED           PERU                           High            74     244
6-9 months     MAL-ED           PERU                           Low             82     244
6-9 months     MAL-ED           PERU                           Medium          88     244
6-9 months     MAL-ED           SOUTH AFRICA                   High            64     231
6-9 months     MAL-ED           SOUTH AFRICA                   Low            113     231
6-9 months     MAL-ED           SOUTH AFRICA                   Medium          54     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             8     187
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             60     187
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         119     187
6-9 months     NIH-Birth        BANGLADESH                     High           142     498
6-9 months     NIH-Birth        BANGLADESH                     Low            180     498
6-9 months     NIH-Birth        BANGLADESH                     Medium         176     498
6-9 months     NIH-Crypto       BANGLADESH                     High           236     693
6-9 months     NIH-Crypto       BANGLADESH                     Low            220     693
6-9 months     NIH-Crypto       BANGLADESH                     Medium         237     693
6-9 months     PROBIT           BELARUS                        High          2078   12436
6-9 months     PROBIT           BELARUS                        Low           4471   12436
6-9 months     PROBIT           BELARUS                        Medium        5887   12436
6-9 months     PROVIDE          BANGLADESH                     High           197     576
6-9 months     PROVIDE          BANGLADESH                     Low            177     576
6-9 months     PROVIDE          BANGLADESH                     Medium         202     576
6-9 months     SAS-CompFeed     INDIA                          High           239    1138
6-9 months     SAS-CompFeed     INDIA                          Low            519    1138
6-9 months     SAS-CompFeed     INDIA                          Medium         380    1138
6-9 months     SAS-FoodSuppl    INDIA                          High            29     309
6-9 months     SAS-FoodSuppl    INDIA                          Low            247     309
6-9 months     SAS-FoodSuppl    INDIA                          Medium          33     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           364    1489
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             43    1489
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1082    1489
6-9 months     ZVITAMBO         ZIMBABWE                       High          2996    5560
6-9 months     ZVITAMBO         ZIMBABWE                       Low           1147    5560
6-9 months     ZVITAMBO         ZIMBABWE                       Medium        1417    5560
9-12 months    CMC-V-BCS-2002   INDIA                          High           137     327
9-12 months    CMC-V-BCS-2002   INDIA                          Low             95     327
9-12 months    CMC-V-BCS-2002   INDIA                          Medium          95     327
9-12 months    COHORTS          GUATEMALA                      High           189     926
9-12 months    COHORTS          GUATEMALA                      Low            423     926
9-12 months    COHORTS          GUATEMALA                      Medium         314     926
9-12 months    COHORTS          INDIA                          High           573    4099
9-12 months    COHORTS          INDIA                          Low           1284    4099
9-12 months    COHORTS          INDIA                          Medium        2242    4099
9-12 months    EE               PAKISTAN                       High            13     322
9-12 months    EE               PAKISTAN                       Low            277     322
9-12 months    EE               PAKISTAN                       Medium          32     322
9-12 months    GMS-Nepal        NEPAL                          High            49     452
9-12 months    GMS-Nepal        NEPAL                          Low            328     452
9-12 months    GMS-Nepal        NEPAL                          Medium          75     452
9-12 months    Guatemala BSC    GUATEMALA                      High            80     185
9-12 months    Guatemala BSC    GUATEMALA                      Low             51     185
9-12 months    Guatemala BSC    GUATEMALA                      Medium          54     185
9-12 months    IRC              INDIA                          High           121     403
9-12 months    IRC              INDIA                          Low            145     403
9-12 months    IRC              INDIA                          Medium         137     403
9-12 months    JiVitA-4         BANGLADESH                     High          1236    3511
9-12 months    JiVitA-4         BANGLADESH                     Low           1138    3511
9-12 months    JiVitA-4         BANGLADESH                     Medium        1137    3511
9-12 months    LCNI-5           MALAWI                         High           142     379
9-12 months    LCNI-5           MALAWI                         Low            123     379
9-12 months    LCNI-5           MALAWI                         Medium         114     379
9-12 months    MAL-ED           BANGLADESH                     High            67     187
9-12 months    MAL-ED           BANGLADESH                     Low             63     187
9-12 months    MAL-ED           BANGLADESH                     Medium          57     187
9-12 months    MAL-ED           BRAZIL                         High            67     193
9-12 months    MAL-ED           BRAZIL                         Low             50     193
9-12 months    MAL-ED           BRAZIL                         Medium          76     193
9-12 months    MAL-ED           INDIA                          High            56     199
9-12 months    MAL-ED           INDIA                          Low             69     199
9-12 months    MAL-ED           INDIA                          Medium          74     199
9-12 months    MAL-ED           NEPAL                          High            50     215
9-12 months    MAL-ED           NEPAL                          Low             92     215
9-12 months    MAL-ED           NEPAL                          Medium          73     215
9-12 months    MAL-ED           PERU                           High            72     234
9-12 months    MAL-ED           PERU                           Low             81     234
9-12 months    MAL-ED           PERU                           Medium          81     234
9-12 months    MAL-ED           SOUTH AFRICA                   High            67     233
9-12 months    MAL-ED           SOUTH AFRICA                   Low            115     233
9-12 months    MAL-ED           SOUTH AFRICA                   Medium          51     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             8     185
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             57     185
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         120     185
9-12 months    NIH-Birth        BANGLADESH                     High           140     481
9-12 months    NIH-Birth        BANGLADESH                     Low            175     481
9-12 months    NIH-Birth        BANGLADESH                     Medium         166     481
9-12 months    NIH-Crypto       BANGLADESH                     High           235     683
9-12 months    NIH-Crypto       BANGLADESH                     Low            217     683
9-12 months    NIH-Crypto       BANGLADESH                     Medium         231     683
9-12 months    PROBIT           BELARUS                        High          2108   12687
9-12 months    PROBIT           BELARUS                        Low           4545   12687
9-12 months    PROBIT           BELARUS                        Medium        6034   12687
9-12 months    PROVIDE          BANGLADESH                     High           195     569
9-12 months    PROVIDE          BANGLADESH                     Low            170     569
9-12 months    PROVIDE          BANGLADESH                     Medium         204     569
9-12 months    SAS-CompFeed     INDIA                          High           238    1141
9-12 months    SAS-CompFeed     INDIA                          Low            506    1141
9-12 months    SAS-CompFeed     INDIA                          Medium         397    1141
9-12 months    SAS-FoodSuppl    INDIA                          High            29     298
9-12 months    SAS-FoodSuppl    INDIA                          Low            236     298
9-12 months    SAS-FoodSuppl    INDIA                          Medium          33     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           270    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             35    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         773    1078
9-12 months    ZVITAMBO         ZIMBABWE                       High          2690    5047
9-12 months    ZVITAMBO         ZIMBABWE                       Low           1067    5047
9-12 months    ZVITAMBO         ZIMBABWE                       Medium        1290    5047
12-15 months   CMC-V-BCS-2002   INDIA                          High           136     334
12-15 months   CMC-V-BCS-2002   INDIA                          Low             95     334
12-15 months   CMC-V-BCS-2002   INDIA                          Medium         103     334
12-15 months   COHORTS          GUATEMALA                      High           180     881
12-15 months   COHORTS          GUATEMALA                      Low            411     881
12-15 months   COHORTS          GUATEMALA                      Medium         290     881
12-15 months   EE               PAKISTAN                       High            12     295
12-15 months   EE               PAKISTAN                       Low            257     295
12-15 months   EE               PAKISTAN                       Medium          26     295
12-15 months   GMS-Nepal        NEPAL                          High            46     449
12-15 months   GMS-Nepal        NEPAL                          Low            328     449
12-15 months   GMS-Nepal        NEPAL                          Medium          75     449
12-15 months   Guatemala BSC    GUATEMALA                      High            42      95
12-15 months   Guatemala BSC    GUATEMALA                      Low             27      95
12-15 months   Guatemala BSC    GUATEMALA                      Medium          26      95
12-15 months   IRC              INDIA                          High           117     392
12-15 months   IRC              INDIA                          Low            142     392
12-15 months   IRC              INDIA                          Medium         133     392
12-15 months   JiVitA-4         BANGLADESH                     High          1224    3543
12-15 months   JiVitA-4         BANGLADESH                     Low           1164    3543
12-15 months   JiVitA-4         BANGLADESH                     Medium        1155    3543
12-15 months   LCNI-5           MALAWI                         High            43     125
12-15 months   LCNI-5           MALAWI                         Low             43     125
12-15 months   LCNI-5           MALAWI                         Medium          39     125
12-15 months   MAL-ED           BANGLADESH                     High            65     174
12-15 months   MAL-ED           BANGLADESH                     Low             58     174
12-15 months   MAL-ED           BANGLADESH                     Medium          51     174
12-15 months   MAL-ED           BRAZIL                         High            67     183
12-15 months   MAL-ED           BRAZIL                         Low             43     183
12-15 months   MAL-ED           BRAZIL                         Medium          73     183
12-15 months   MAL-ED           INDIA                          High            56     198
12-15 months   MAL-ED           INDIA                          Low             69     198
12-15 months   MAL-ED           INDIA                          Medium          73     198
12-15 months   MAL-ED           NEPAL                          High            50     216
12-15 months   MAL-ED           NEPAL                          Low             92     216
12-15 months   MAL-ED           NEPAL                          Medium          74     216
12-15 months   MAL-ED           PERU                           High            70     223
12-15 months   MAL-ED           PERU                           Low             78     223
12-15 months   MAL-ED           PERU                           Medium          75     223
12-15 months   MAL-ED           SOUTH AFRICA                   High            64     228
12-15 months   MAL-ED           SOUTH AFRICA                   Low            118     228
12-15 months   MAL-ED           SOUTH AFRICA                   Medium          46     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             8     186
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             58     186
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         120     186
12-15 months   NIH-Birth        BANGLADESH                     High           137     461
12-15 months   NIH-Birth        BANGLADESH                     Low            169     461
12-15 months   NIH-Birth        BANGLADESH                     Medium         155     461
12-15 months   NIH-Crypto       BANGLADESH                     High           228     666
12-15 months   NIH-Crypto       BANGLADESH                     Low            211     666
12-15 months   NIH-Crypto       BANGLADESH                     Medium         227     666
12-15 months   PROBIT           BELARUS                        High           161    1001
12-15 months   PROBIT           BELARUS                        Low            353    1001
12-15 months   PROBIT           BELARUS                        Medium         487    1001
12-15 months   PROVIDE          BANGLADESH                     High           186     537
12-15 months   PROVIDE          BANGLADESH                     Low            160     537
12-15 months   PROVIDE          BANGLADESH                     Medium         191     537
12-15 months   SAS-CompFeed     INDIA                          High           247    1165
12-15 months   SAS-CompFeed     INDIA                          Low            515    1165
12-15 months   SAS-CompFeed     INDIA                          Medium         403    1165
12-15 months   SAS-FoodSuppl    INDIA                          High            33     300
12-15 months   SAS-FoodSuppl    INDIA                          Low            233     300
12-15 months   SAS-FoodSuppl    INDIA                          Medium          34     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           188     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             29     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         569     786
12-15 months   ZVITAMBO         ZIMBABWE                       High           907    1857
12-15 months   ZVITAMBO         ZIMBABWE                       Low            441    1857
12-15 months   ZVITAMBO         ZIMBABWE                       Medium         509    1857
15-18 months   CMC-V-BCS-2002   INDIA                          High           134     325
15-18 months   CMC-V-BCS-2002   INDIA                          Low             92     325
15-18 months   CMC-V-BCS-2002   INDIA                          Medium          99     325
15-18 months   COHORTS          GUATEMALA                      High           153     793
15-18 months   COHORTS          GUATEMALA                      Low            372     793
15-18 months   COHORTS          GUATEMALA                      Medium         268     793
15-18 months   EE               PAKISTAN                       High            10     275
15-18 months   EE               PAKISTAN                       Low            241     275
15-18 months   EE               PAKISTAN                       Medium          24     275
15-18 months   GMS-Nepal        NEPAL                          High            54     474
15-18 months   GMS-Nepal        NEPAL                          Low            341     474
15-18 months   GMS-Nepal        NEPAL                          Medium          79     474
15-18 months   IRC              INDIA                          High           117     383
15-18 months   IRC              INDIA                          Low            136     383
15-18 months   IRC              INDIA                          Medium         130     383
15-18 months   JiVitA-4         BANGLADESH                     High          1208    3501
15-18 months   JiVitA-4         BANGLADESH                     Low           1164    3501
15-18 months   JiVitA-4         BANGLADESH                     Medium        1129    3501
15-18 months   LCNI-5           MALAWI                         High            37     118
15-18 months   LCNI-5           MALAWI                         Low             43     118
15-18 months   LCNI-5           MALAWI                         Medium          38     118
15-18 months   MAL-ED           BANGLADESH                     High            67     173
15-18 months   MAL-ED           BANGLADESH                     Low             57     173
15-18 months   MAL-ED           BANGLADESH                     Medium          49     173
15-18 months   MAL-ED           BRAZIL                         High            64     174
15-18 months   MAL-ED           BRAZIL                         Low             42     174
15-18 months   MAL-ED           BRAZIL                         Medium          68     174
15-18 months   MAL-ED           INDIA                          High            56     198
15-18 months   MAL-ED           INDIA                          Low             68     198
15-18 months   MAL-ED           INDIA                          Medium          74     198
15-18 months   MAL-ED           NEPAL                          High            49     212
15-18 months   MAL-ED           NEPAL                          Low             90     212
15-18 months   MAL-ED           NEPAL                          Medium          73     212
15-18 months   MAL-ED           PERU                           High            66     213
15-18 months   MAL-ED           PERU                           Low             74     213
15-18 months   MAL-ED           PERU                           Medium          73     213
15-18 months   MAL-ED           SOUTH AFRICA                   High            63     225
15-18 months   MAL-ED           SOUTH AFRICA                   Low            114     225
15-18 months   MAL-ED           SOUTH AFRICA                   Medium          48     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     181
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             57     181
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         117     181
15-18 months   NIH-Birth        BANGLADESH                     High           133     449
15-18 months   NIH-Birth        BANGLADESH                     Low            163     449
15-18 months   NIH-Birth        BANGLADESH                     Medium         153     449
15-18 months   NIH-Crypto       BANGLADESH                     High           211     605
15-18 months   NIH-Crypto       BANGLADESH                     Low            184     605
15-18 months   NIH-Crypto       BANGLADESH                     Medium         210     605
15-18 months   PROBIT           BELARUS                        High            62     279
15-18 months   PROBIT           BELARUS                        Low             95     279
15-18 months   PROBIT           BELARUS                        Medium         122     279
15-18 months   PROVIDE          BANGLADESH                     High           185     533
15-18 months   PROVIDE          BANGLADESH                     Low            160     533
15-18 months   PROVIDE          BANGLADESH                     Medium         188     533
15-18 months   SAS-CompFeed     INDIA                          High           252    1171
15-18 months   SAS-CompFeed     INDIA                          Low            521    1171
15-18 months   SAS-CompFeed     INDIA                          Medium         398    1171
15-18 months   SAS-FoodSuppl    INDIA                          High            29     290
15-18 months   SAS-FoodSuppl    INDIA                          Low            226     290
15-18 months   SAS-FoodSuppl    INDIA                          Medium          35     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           153     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             18     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         491     662
15-18 months   ZVITAMBO         ZIMBABWE                       High           558    1198
15-18 months   ZVITAMBO         ZIMBABWE                       Low            311    1198
15-18 months   ZVITAMBO         ZIMBABWE                       Medium         329    1198
18-21 months   CMC-V-BCS-2002   INDIA                          High           132     310
18-21 months   CMC-V-BCS-2002   INDIA                          Low             86     310
18-21 months   CMC-V-BCS-2002   INDIA                          Medium          92     310
18-21 months   COHORTS          GUATEMALA                      High           150     791
18-21 months   COHORTS          GUATEMALA                      Low            372     791
18-21 months   COHORTS          GUATEMALA                      Medium         269     791
18-21 months   EE               PAKISTAN                       High             9     253
18-21 months   EE               PAKISTAN                       Low            220     253
18-21 months   EE               PAKISTAN                       Medium          24     253
18-21 months   GMS-Nepal        NEPAL                          High            53     444
18-21 months   GMS-Nepal        NEPAL                          Low            311     444
18-21 months   GMS-Nepal        NEPAL                          Medium          80     444
18-21 months   IRC              INDIA                          High           119     380
18-21 months   IRC              INDIA                          Low            134     380
18-21 months   IRC              INDIA                          Medium         127     380
18-21 months   LCNI-5           MALAWI                         High           169     450
18-21 months   LCNI-5           MALAWI                         Low            144     450
18-21 months   LCNI-5           MALAWI                         Medium         137     450
18-21 months   MAL-ED           BANGLADESH                     High            64     170
18-21 months   MAL-ED           BANGLADESH                     Low             57     170
18-21 months   MAL-ED           BANGLADESH                     Medium          49     170
18-21 months   MAL-ED           BRAZIL                         High            62     166
18-21 months   MAL-ED           BRAZIL                         Low             41     166
18-21 months   MAL-ED           BRAZIL                         Medium          63     166
18-21 months   MAL-ED           INDIA                          High            56     198
18-21 months   MAL-ED           INDIA                          Low             67     198
18-21 months   MAL-ED           INDIA                          Medium          75     198
18-21 months   MAL-ED           NEPAL                          High            49     212
18-21 months   MAL-ED           NEPAL                          Low             90     212
18-21 months   MAL-ED           NEPAL                          Medium          73     212
18-21 months   MAL-ED           PERU                           High            60     201
18-21 months   MAL-ED           PERU                           Low             71     201
18-21 months   MAL-ED           PERU                           Medium          70     201
18-21 months   MAL-ED           SOUTH AFRICA                   High            66     233
18-21 months   MAL-ED           SOUTH AFRICA                   Low            117     233
18-21 months   MAL-ED           SOUTH AFRICA                   Medium          50     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             53     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         110     170
18-21 months   NIH-Birth        BANGLADESH                     High           125     422
18-21 months   NIH-Birth        BANGLADESH                     Low            158     422
18-21 months   NIH-Birth        BANGLADESH                     Medium         139     422
18-21 months   NIH-Crypto       BANGLADESH                     High           199     547
18-21 months   NIH-Crypto       BANGLADESH                     Low            159     547
18-21 months   NIH-Crypto       BANGLADESH                     Medium         189     547
18-21 months   PROBIT           BELARUS                        High            37     214
18-21 months   PROBIT           BELARUS                        Low             71     214
18-21 months   PROBIT           BELARUS                        Medium         106     214
18-21 months   PROVIDE          BANGLADESH                     High           181     542
18-21 months   PROVIDE          BANGLADESH                     Low            164     542
18-21 months   PROVIDE          BANGLADESH                     Medium         197     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             3      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           7      11
18-21 months   ZVITAMBO         ZIMBABWE                       High           290     657
18-21 months   ZVITAMBO         ZIMBABWE                       Low            170     657
18-21 months   ZVITAMBO         ZIMBABWE                       Medium         197     657
21-24 months   CMC-V-BCS-2002   INDIA                          High           131     311
21-24 months   CMC-V-BCS-2002   INDIA                          Low             85     311
21-24 months   CMC-V-BCS-2002   INDIA                          Medium          95     311
21-24 months   COHORTS          GUATEMALA                      High           170     869
21-24 months   COHORTS          GUATEMALA                      Low            406     869
21-24 months   COHORTS          GUATEMALA                      Medium         293     869
21-24 months   EE               PAKISTAN                       High             3     105
21-24 months   EE               PAKISTAN                       Low             88     105
21-24 months   EE               PAKISTAN                       Medium          14     105
21-24 months   GMS-Nepal        NEPAL                          High            39     341
21-24 months   GMS-Nepal        NEPAL                          Low            240     341
21-24 months   GMS-Nepal        NEPAL                          Medium          62     341
21-24 months   IRC              INDIA                          High           119     389
21-24 months   IRC              INDIA                          Low            139     389
21-24 months   IRC              INDIA                          Medium         131     389
21-24 months   LCNI-5           MALAWI                         High           154     380
21-24 months   LCNI-5           MALAWI                         Low            116     380
21-24 months   LCNI-5           MALAWI                         Medium         110     380
21-24 months   MAL-ED           BANGLADESH                     High            64     167
21-24 months   MAL-ED           BANGLADESH                     Low             55     167
21-24 months   MAL-ED           BANGLADESH                     Medium          48     167
21-24 months   MAL-ED           BRAZIL                         High            62     164
21-24 months   MAL-ED           BRAZIL                         Low             39     164
21-24 months   MAL-ED           BRAZIL                         Medium          63     164
21-24 months   MAL-ED           INDIA                          High            55     198
21-24 months   MAL-ED           INDIA                          Low             68     198
21-24 months   MAL-ED           INDIA                          Medium          75     198
21-24 months   MAL-ED           NEPAL                          High            47     212
21-24 months   MAL-ED           NEPAL                          Low             91     212
21-24 months   MAL-ED           NEPAL                          Medium          74     212
21-24 months   MAL-ED           PERU                           High            56     188
21-24 months   MAL-ED           PERU                           Low             69     188
21-24 months   MAL-ED           PERU                           Medium          63     188
21-24 months   MAL-ED           SOUTH AFRICA                   High            66     235
21-24 months   MAL-ED           SOUTH AFRICA                   Low            119     235
21-24 months   MAL-ED           SOUTH AFRICA                   Medium          50     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             53     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         107     167
21-24 months   NIH-Birth        BANGLADESH                     High           123     411
21-24 months   NIH-Birth        BANGLADESH                     Low            150     411
21-24 months   NIH-Birth        BANGLADESH                     Medium         138     411
21-24 months   NIH-Crypto       BANGLADESH                     High           186     493
21-24 months   NIH-Crypto       BANGLADESH                     Low            137     493
21-24 months   NIH-Crypto       BANGLADESH                     Medium         170     493
21-24 months   PROBIT           BELARUS                        High            39     210
21-24 months   PROBIT           BELARUS                        Low             78     210
21-24 months   PROBIT           BELARUS                        Medium          93     210
21-24 months   PROVIDE          BANGLADESH                     High           161     485
21-24 months   PROVIDE          BANGLADESH                     Low            152     485
21-24 months   PROVIDE          BANGLADESH                     Medium         172     485
21-24 months   ZVITAMBO         ZIMBABWE                       High           120     303
21-24 months   ZVITAMBO         ZIMBABWE                       Low             83     303
21-24 months   ZVITAMBO         ZIMBABWE                       Medium         100     303


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/82badcd1-7133-4c1c-ba1c-5d18fb462245/b7f377f2-d148-4972-b043-8861dbee5792/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/82badcd1-7133-4c1c-ba1c-5d18fb462245/b7f377f2-d148-4972-b043-8861dbee5792/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/82badcd1-7133-4c1c-ba1c-5d18fb462245/b7f377f2-d148-4972-b043-8861dbee5792/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 NA                0.7711769    0.7355775   0.8067762
0-3 months     CMC-V-BCS-2002   INDIA                          Low                  NA                0.6962834    0.6489072   0.7436595
0-3 months     CMC-V-BCS-2002   INDIA                          Medium               NA                0.7567093    0.7156564   0.7977621
0-3 months     COHORTS          GUATEMALA                      High                 NA                0.8066949    0.7692856   0.8441042
0-3 months     COHORTS          GUATEMALA                      Low                  NA                0.7988049    0.7748397   0.8227701
0-3 months     COHORTS          GUATEMALA                      Medium               NA                0.7938447    0.7635190   0.8241704
0-3 months     COHORTS          INDIA                          High                 NA                0.8633376    0.8498423   0.8768329
0-3 months     COHORTS          INDIA                          Low                  NA                0.7695841    0.7604964   0.7786718
0-3 months     COHORTS          INDIA                          Medium               NA                0.8183635    0.8113335   0.8253934
0-3 months     EE               PAKISTAN                       High                 NA                0.7297245    0.6550247   0.8044243
0-3 months     EE               PAKISTAN                       Low                  NA                0.6898963    0.6649864   0.7148062
0-3 months     EE               PAKISTAN                       Medium               NA                0.7191530    0.6367319   0.8015741
0-3 months     GMS-Nepal        NEPAL                          High                 NA                0.8705207    0.8259379   0.9151034
0-3 months     GMS-Nepal        NEPAL                          Low                  NA                0.8131389    0.7921609   0.8341168
0-3 months     GMS-Nepal        NEPAL                          Medium               NA                0.8489438    0.8147329   0.8831547
0-3 months     IRC              INDIA                          High                 NA                0.7870925    0.7536612   0.8205238
0-3 months     IRC              INDIA                          Low                  NA                0.7679986    0.7350702   0.8009270
0-3 months     IRC              INDIA                          Medium               NA                0.7507472    0.7165335   0.7849609
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                0.8956212    0.8902607   0.9009818
0-3 months     JiVitA-3         BANGLADESH                     Low                  NA                0.8511948    0.8464712   0.8559184
0-3 months     JiVitA-3         BANGLADESH                     Medium               NA                0.8717626    0.8666978   0.8768274
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                0.9021668    0.8855697   0.9187640
0-3 months     JiVitA-4         BANGLADESH                     Low                  NA                0.8833796    0.8660673   0.9006920
0-3 months     JiVitA-4         BANGLADESH                     Medium               NA                0.8847345    0.8649935   0.9044755
0-3 months     MAL-ED           BANGLADESH                     High                 NA                0.9305174    0.8941247   0.9669101
0-3 months     MAL-ED           BANGLADESH                     Low                  NA                0.8365428    0.7894276   0.8836579
0-3 months     MAL-ED           BANGLADESH                     Medium               NA                0.9135288    0.8719832   0.9550744
0-3 months     MAL-ED           BRAZIL                         High                 NA                1.1085343    1.0440383   1.1730302
0-3 months     MAL-ED           BRAZIL                         Low                  NA                0.9935084    0.9435835   1.0434332
0-3 months     MAL-ED           BRAZIL                         Medium               NA                1.0785006    1.0218389   1.1351623
0-3 months     MAL-ED           INDIA                          High                 NA                0.7783475    0.7409956   0.8156995
0-3 months     MAL-ED           INDIA                          Low                  NA                0.7605717    0.7189521   0.8021914
0-3 months     MAL-ED           INDIA                          Medium               NA                0.7684997    0.7297198   0.8072797
0-3 months     MAL-ED           NEPAL                          High                 NA                0.9875894    0.9340077   1.0411711
0-3 months     MAL-ED           NEPAL                          Low                  NA                0.9689717    0.9262712   1.0116722
0-3 months     MAL-ED           NEPAL                          Medium               NA                0.9261972    0.8779694   0.9744250
0-3 months     MAL-ED           PERU                           High                 NA                0.9798261    0.9377112   1.0219410
0-3 months     MAL-ED           PERU                           Low                  NA                0.9404675    0.9005338   0.9804011
0-3 months     MAL-ED           PERU                           Medium               NA                0.9931012    0.9463133   1.0398891
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                0.9799490    0.9291292   1.0307688
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.9175474    0.8801324   0.9549625
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.9392848    0.8861964   0.9923732
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                1.0408683    0.9109955   1.1707411
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.8939697    0.8294061   0.9585332
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8781303    0.8401230   0.9161376
0-3 months     NIH-Birth        BANGLADESH                     High                 NA                0.8464060    0.8105621   0.8822499
0-3 months     NIH-Birth        BANGLADESH                     Low                  NA                0.7720011    0.7467306   0.7972716
0-3 months     NIH-Birth        BANGLADESH                     Medium               NA                0.8376311    0.8113300   0.8639322
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                0.9010729    0.8771137   0.9250321
0-3 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.8568220    0.8316695   0.8819744
0-3 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.8938438    0.8678666   0.9198211
0-3 months     PROBIT           BELARUS                        High                 NA                0.8451082    0.8314087   0.8588076
0-3 months     PROBIT           BELARUS                        Low                  NA                0.8268184    0.8143622   0.8392747
0-3 months     PROBIT           BELARUS                        Medium               NA                0.8389525    0.8279913   0.8499138
0-3 months     PROVIDE          BANGLADESH                     High                 NA                0.9226057    0.8978988   0.9473125
0-3 months     PROVIDE          BANGLADESH                     Low                  NA                0.8748081    0.8494295   0.9001867
0-3 months     PROVIDE          BANGLADESH                     Medium               NA                0.9047070    0.8787132   0.9307007
0-3 months     SAS-CompFeed     INDIA                          High                 NA                0.8340257    0.8064225   0.8616289
0-3 months     SAS-CompFeed     INDIA                          Low                  NA                0.7587828    0.7401285   0.7774372
0-3 months     SAS-CompFeed     INDIA                          Medium               NA                0.8056303    0.7759719   0.8352887
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9194565    0.8993843   0.9395286
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9057568    0.8541889   0.9573247
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9244326    0.9123252   0.9365400
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.9671562    0.9601439   0.9741684
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.9240857    0.9131414   0.9350300
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.9341109    0.9238652   0.9443565
3-6 months     CMC-V-BCS-2002   INDIA                          High                 NA                0.4805767    0.4517574   0.5093960
3-6 months     CMC-V-BCS-2002   INDIA                          Low                  NA                0.4627827    0.4243196   0.5012457
3-6 months     CMC-V-BCS-2002   INDIA                          Medium               NA                0.4790943    0.4466696   0.5115189
3-6 months     COHORTS          GUATEMALA                      High                 NA                0.4556506    0.4315269   0.4797744
3-6 months     COHORTS          GUATEMALA                      Low                  NA                0.4532448    0.4372449   0.4692447
3-6 months     COHORTS          GUATEMALA                      Medium               NA                0.4743275    0.4555192   0.4931357
3-6 months     COHORTS          INDIA                          High                 NA                0.5376333    0.5266844   0.5485822
3-6 months     COHORTS          INDIA                          Low                  NA                0.4381929    0.4309537   0.4454320
3-6 months     COHORTS          INDIA                          Medium               NA                0.4903715    0.4846069   0.4961361
3-6 months     EE               PAKISTAN                       High                 NA                0.5024961    0.4441951   0.5607971
3-6 months     EE               PAKISTAN                       Low                  NA                0.4658884    0.4456159   0.4861609
3-6 months     EE               PAKISTAN                       Medium               NA                0.5511937    0.4796882   0.6226992
3-6 months     GMS-Nepal        NEPAL                          High                 NA                0.5577539    0.5155575   0.5999503
3-6 months     GMS-Nepal        NEPAL                          Low                  NA                0.4862339    0.4702087   0.5022591
3-6 months     GMS-Nepal        NEPAL                          Medium               NA                0.4988133    0.4655054   0.5321212
3-6 months     IRC              INDIA                          High                 NA                0.4974937    0.4636817   0.5313056
3-6 months     IRC              INDIA                          Low                  NA                0.4520336    0.4268924   0.4771748
3-6 months     IRC              INDIA                          Medium               NA                0.4530992    0.4210571   0.4851413
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                0.4532090    0.4479934   0.4584246
3-6 months     JiVitA-3         BANGLADESH                     Low                  NA                0.4312349    0.4266242   0.4358456
3-6 months     JiVitA-3         BANGLADESH                     Medium               NA                0.4396840    0.4349056   0.4444624
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                0.4465069    0.4337162   0.4592976
3-6 months     JiVitA-4         BANGLADESH                     Low                  NA                0.4282905    0.4157365   0.4408446
3-6 months     JiVitA-4         BANGLADESH                     Medium               NA                0.4428340    0.4230425   0.4626255
3-6 months     MAL-ED           BANGLADESH                     High                 NA                0.4851822    0.4542079   0.5161566
3-6 months     MAL-ED           BANGLADESH                     Low                  NA                0.4700884    0.4380090   0.5021678
3-6 months     MAL-ED           BANGLADESH                     Medium               NA                0.4855322    0.4520206   0.5190437
3-6 months     MAL-ED           BRAZIL                         High                 NA                0.5788147    0.5220629   0.6355665
3-6 months     MAL-ED           BRAZIL                         Low                  NA                0.5666807    0.5109166   0.6224448
3-6 months     MAL-ED           BRAZIL                         Medium               NA                0.5886522    0.5389144   0.6383899
3-6 months     MAL-ED           INDIA                          High                 NA                0.4052039    0.3714733   0.4389346
3-6 months     MAL-ED           INDIA                          Low                  NA                0.4515431    0.4213097   0.4817765
3-6 months     MAL-ED           INDIA                          Medium               NA                0.4668908    0.4344319   0.4993497
3-6 months     MAL-ED           NEPAL                          High                 NA                0.5865427    0.5370695   0.6360158
3-6 months     MAL-ED           NEPAL                          Low                  NA                0.4981798    0.4686195   0.5277400
3-6 months     MAL-ED           NEPAL                          Medium               NA                0.5163705    0.4825050   0.5502360
3-6 months     MAL-ED           PERU                           High                 NA                0.5095599    0.4754215   0.5436983
3-6 months     MAL-ED           PERU                           Low                  NA                0.5113850    0.4783796   0.5443905
3-6 months     MAL-ED           PERU                           Medium               NA                0.4768941    0.4457248   0.5080634
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                0.4737146    0.4292156   0.5182136
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.4399378    0.4051108   0.4747648
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.5117611    0.4487724   0.5747499
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3846395    0.2590061   0.5102729
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4541737    0.4055978   0.5027495
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4587882    0.4256605   0.4919158
3-6 months     NIH-Birth        BANGLADESH                     High                 NA                0.4828878    0.4443107   0.5214648
3-6 months     NIH-Birth        BANGLADESH                     Low                  NA                0.4607956    0.4345707   0.4870206
3-6 months     NIH-Birth        BANGLADESH                     Medium               NA                0.4390613    0.4132767   0.4648459
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                0.5066214    0.4877044   0.5255384
3-6 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.4861482    0.4684439   0.5038524
3-6 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.5006256    0.4802442   0.5210070
3-6 months     PROBIT           BELARUS                        High                 NA                0.6629068    0.6509613   0.6748523
3-6 months     PROBIT           BELARUS                        Low                  NA                0.6605278    0.6505475   0.6705081
3-6 months     PROBIT           BELARUS                        Medium               NA                0.6703861    0.6611593   0.6796129
3-6 months     PROVIDE          BANGLADESH                     High                 NA                0.4988699    0.4781071   0.5196327
3-6 months     PROVIDE          BANGLADESH                     Low                  NA                0.4733968    0.4467255   0.5000681
3-6 months     PROVIDE          BANGLADESH                     Medium               NA                0.4933070    0.4727893   0.5138248
3-6 months     SAS-CompFeed     INDIA                          High                 NA                0.4684476    0.4568409   0.4800542
3-6 months     SAS-CompFeed     INDIA                          Low                  NA                0.4350044    0.4090009   0.4610078
3-6 months     SAS-CompFeed     INDIA                          Medium               NA                0.4591541    0.4390945   0.4792138
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4282294    0.4098180   0.4466408
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4408272    0.4010793   0.4805750
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4156852    0.4055870   0.4257835
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.4874005    0.4813758   0.4934253
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.4642522    0.4542725   0.4742320
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.4705892    0.4612401   0.4799384
6-9 months     CMC-V-BCS-2002   INDIA                          High                 NA                0.2524881    0.2279782   0.2769981
6-9 months     CMC-V-BCS-2002   INDIA                          Low                  NA                0.2811062    0.2451243   0.3170880
6-9 months     CMC-V-BCS-2002   INDIA                          Medium               NA                0.2483770    0.2263350   0.2704190
6-9 months     COHORTS          GUATEMALA                      High                 NA                0.2038064    0.1822911   0.2253218
6-9 months     COHORTS          GUATEMALA                      Low                  NA                0.2114624    0.1970470   0.2258779
6-9 months     COHORTS          GUATEMALA                      Medium               NA                0.2210256    0.2045903   0.2374610
6-9 months     COHORTS          INDIA                          High                 NA                0.3320313    0.3200260   0.3440366
6-9 months     COHORTS          INDIA                          Low                  NA                0.2338699    0.2262961   0.2414436
6-9 months     COHORTS          INDIA                          Medium               NA                0.2850410    0.2790715   0.2910105
6-9 months     EE               PAKISTAN                       High                 NA                0.3092132    0.2399392   0.3784871
6-9 months     EE               PAKISTAN                       Low                  NA                0.2509754    0.2347764   0.2671745
6-9 months     EE               PAKISTAN                       Medium               NA                0.2556851    0.2136335   0.2977367
6-9 months     GMS-Nepal        NEPAL                          High                 NA                0.2151531    0.1827357   0.2475705
6-9 months     GMS-Nepal        NEPAL                          Low                  NA                0.1871921    0.1718287   0.2025555
6-9 months     GMS-Nepal        NEPAL                          Medium               NA                0.1699446    0.1500810   0.1898082
6-9 months     Guatemala BSC    GUATEMALA                      High                 NA                0.2495695    0.2231968   0.2759421
6-9 months     Guatemala BSC    GUATEMALA                      Low                  NA                0.2160199    0.1861563   0.2458835
6-9 months     Guatemala BSC    GUATEMALA                      Medium               NA                0.2633450    0.2270059   0.2996842
6-9 months     IRC              INDIA                          High                 NA                0.2707143    0.2485844   0.2928442
6-9 months     IRC              INDIA                          Low                  NA                0.2623469    0.2395863   0.2851076
6-9 months     IRC              INDIA                          Medium               NA                0.2557204    0.2292428   0.2821980
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                0.2452683    0.2366492   0.2538874
6-9 months     JiVitA-4         BANGLADESH                     Low                  NA                0.2347688    0.2261542   0.2433835
6-9 months     JiVitA-4         BANGLADESH                     Medium               NA                0.2388978    0.2298018   0.2479938
6-9 months     LCNI-5           MALAWI                         High                 NA                0.2923418    0.2703574   0.3143262
6-9 months     LCNI-5           MALAWI                         Low                  NA                0.2746264    0.2550469   0.2942058
6-9 months     LCNI-5           MALAWI                         Medium               NA                0.2858940    0.2625357   0.3092524
6-9 months     MAL-ED           BANGLADESH                     High                 NA                0.2372473    0.2067658   0.2677287
6-9 months     MAL-ED           BANGLADESH                     Low                  NA                0.2361386    0.2145159   0.2577613
6-9 months     MAL-ED           BANGLADESH                     Medium               NA                0.2575386    0.2297344   0.2853429
6-9 months     MAL-ED           BRAZIL                         High                 NA                0.4187489    0.3732048   0.4642930
6-9 months     MAL-ED           BRAZIL                         Low                  NA                0.3554714    0.3057868   0.4051561
6-9 months     MAL-ED           BRAZIL                         Medium               NA                0.3723067    0.3316153   0.4129980
6-9 months     MAL-ED           INDIA                          High                 NA                0.2356332    0.2096122   0.2616542
6-9 months     MAL-ED           INDIA                          Low                  NA                0.2247769    0.1971353   0.2524185
6-9 months     MAL-ED           INDIA                          Medium               NA                0.2304530    0.2018124   0.2590935
6-9 months     MAL-ED           NEPAL                          High                 NA                0.2847012    0.2550065   0.3143958
6-9 months     MAL-ED           NEPAL                          Low                  NA                0.2741027    0.2497776   0.2984279
6-9 months     MAL-ED           NEPAL                          Medium               NA                0.2601117    0.2343949   0.2858284
6-9 months     MAL-ED           PERU                           High                 NA                0.2756602    0.2492830   0.3020374
6-9 months     MAL-ED           PERU                           Low                  NA                0.2595522    0.2294529   0.2896515
6-9 months     MAL-ED           PERU                           Medium               NA                0.2512209    0.2273582   0.2750836
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                0.2523650    0.2191669   0.2855632
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.2581902    0.2256088   0.2907715
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.2702199    0.2265981   0.3138417
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2405888    0.0999452   0.3812325
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2437954    0.2007151   0.2868757
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2293389    0.1941232   0.2645546
6-9 months     NIH-Birth        BANGLADESH                     High                 NA                0.2558160    0.2327141   0.2789180
6-9 months     NIH-Birth        BANGLADESH                     Low                  NA                0.2249597    0.2007201   0.2491992
6-9 months     NIH-Birth        BANGLADESH                     Medium               NA                0.2320378    0.2088538   0.2552218
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                0.2972024    0.2762743   0.3181306
6-9 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.2513821    0.2349725   0.2677918
6-9 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.2529129    0.2366309   0.2691950
6-9 months     PROBIT           BELARUS                        High                 NA                0.4782592    0.4665481   0.4899703
6-9 months     PROBIT           BELARUS                        Low                  NA                0.4709625    0.4577815   0.4841435
6-9 months     PROBIT           BELARUS                        Medium               NA                0.4742291    0.4651248   0.4833335
6-9 months     PROVIDE          BANGLADESH                     High                 NA                0.2653444    0.2475483   0.2831405
6-9 months     PROVIDE          BANGLADESH                     Low                  NA                0.2251877    0.1975134   0.2528619
6-9 months     PROVIDE          BANGLADESH                     Medium               NA                0.2543969    0.2377600   0.2710337
6-9 months     SAS-CompFeed     INDIA                          High                 NA                0.2355227    0.2167182   0.2543272
6-9 months     SAS-CompFeed     INDIA                          Low                  NA                0.1914522    0.1670528   0.2158516
6-9 months     SAS-CompFeed     INDIA                          Medium               NA                0.2185883    0.1958305   0.2413462
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                0.2056420    0.1564241   0.2548599
6-9 months     SAS-FoodSuppl    INDIA                          Low                  NA                0.1985932    0.1799775   0.2172089
6-9 months     SAS-FoodSuppl    INDIA                          Medium               NA                0.1888910    0.1419593   0.2358228
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2783362    0.2589627   0.2977096
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1729692    0.1103616   0.2355768
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2517911    0.2418266   0.2617557
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.2649388    0.2589603   0.2709173
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.2547653    0.2442375   0.2652932
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.2477967    0.2388952   0.2566982
9-12 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.2229753    0.1990090   0.2469416
9-12 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.1888209    0.1521608   0.2254809
9-12 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.2204903    0.1879871   0.2529935
9-12 months    COHORTS          GUATEMALA                      High                 NA                0.1453909    0.1276669   0.1631148
9-12 months    COHORTS          GUATEMALA                      Low                  NA                0.1565391    0.1439851   0.1690932
9-12 months    COHORTS          GUATEMALA                      Medium               NA                0.1613409    0.1458214   0.1768604
9-12 months    COHORTS          INDIA                          High                 NA                0.2571994    0.2448034   0.2695954
9-12 months    COHORTS          INDIA                          Low                  NA                0.1878789    0.1795048   0.1962530
9-12 months    COHORTS          INDIA                          Medium               NA                0.2214264    0.2153459   0.2275069
9-12 months    EE               PAKISTAN                       High                 NA                0.3196673    0.2419971   0.3973374
9-12 months    EE               PAKISTAN                       Low                  NA                0.2431923    0.2250131   0.2613716
9-12 months    EE               PAKISTAN                       Medium               NA                0.2697774    0.2261073   0.3134475
9-12 months    GMS-Nepal        NEPAL                          High                 NA                0.1400283    0.0995451   0.1805115
9-12 months    GMS-Nepal        NEPAL                          Low                  NA                0.1374936    0.1223464   0.1526408
9-12 months    GMS-Nepal        NEPAL                          Medium               NA                0.1754403    0.1479176   0.2029629
9-12 months    Guatemala BSC    GUATEMALA                      High                 NA                0.2278372    0.1977821   0.2578923
9-12 months    Guatemala BSC    GUATEMALA                      Low                  NA                0.1481160    0.1059428   0.1902891
9-12 months    Guatemala BSC    GUATEMALA                      Medium               NA                0.2323256    0.1969770   0.2676742
9-12 months    IRC              INDIA                          High                 NA                0.2097988    0.1862285   0.2333690
9-12 months    IRC              INDIA                          Low                  NA                0.2130489    0.1911013   0.2349966
9-12 months    IRC              INDIA                          Medium               NA                0.2164357    0.1885199   0.2443515
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                0.1574216    0.1500886   0.1647546
9-12 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1515544    0.1448888   0.1582200
9-12 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1539068    0.1465249   0.1612886
9-12 months    LCNI-5           MALAWI                         High                 NA                0.2082480    0.1849977   0.2314984
9-12 months    LCNI-5           MALAWI                         Low                  NA                0.2079120    0.1803358   0.2354882
9-12 months    LCNI-5           MALAWI                         Medium               NA                0.1893864    0.1563399   0.2224328
9-12 months    MAL-ED           BANGLADESH                     High                 NA                0.1910234    0.1638219   0.2182249
9-12 months    MAL-ED           BANGLADESH                     Low                  NA                0.1721995    0.1467282   0.1976707
9-12 months    MAL-ED           BANGLADESH                     Medium               NA                0.1747384    0.1468151   0.2026617
9-12 months    MAL-ED           BRAZIL                         High                 NA                0.2651032    0.2096348   0.3205716
9-12 months    MAL-ED           BRAZIL                         Low                  NA                0.2965296    0.2356620   0.3573972
9-12 months    MAL-ED           BRAZIL                         Medium               NA                0.2920147    0.2414466   0.3425828
9-12 months    MAL-ED           INDIA                          High                 NA                0.1790106    0.1441690   0.2138522
9-12 months    MAL-ED           INDIA                          Low                  NA                0.1824828    0.1630565   0.2019092
9-12 months    MAL-ED           INDIA                          Medium               NA                0.1831672    0.1580976   0.2082368
9-12 months    MAL-ED           NEPAL                          High                 NA                0.2084606    0.1824458   0.2344754
9-12 months    MAL-ED           NEPAL                          Low                  NA                0.1795622    0.1556030   0.2035214
9-12 months    MAL-ED           NEPAL                          Medium               NA                0.1808771    0.1572990   0.2044552
9-12 months    MAL-ED           PERU                           High                 NA                0.1918206    0.1651198   0.2185215
9-12 months    MAL-ED           PERU                           Low                  NA                0.1986627    0.1719931   0.2253323
9-12 months    MAL-ED           PERU                           Medium               NA                0.1719670    0.1458969   0.1980371
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.2345960    0.1978166   0.2713754
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.1886735    0.1553933   0.2219537
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.2469957    0.2025522   0.2914392
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0713589   -0.0277419   0.1704597
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1420357    0.1059694   0.1781019
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1903442    0.1613045   0.2193838
9-12 months    NIH-Birth        BANGLADESH                     High                 NA                0.1874275    0.1656555   0.2091994
9-12 months    NIH-Birth        BANGLADESH                     Low                  NA                0.1480136    0.1226956   0.1733315
9-12 months    NIH-Birth        BANGLADESH                     Medium               NA                0.1599978    0.1404492   0.1795463
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2222713    0.2048717   0.2396709
9-12 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.1691422    0.1513480   0.1869363
9-12 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.1999586    0.1818191   0.2180982
9-12 months    PROBIT           BELARUS                        High                 NA                0.3704306    0.3570267   0.3838346
9-12 months    PROBIT           BELARUS                        Low                  NA                0.3725363    0.3545816   0.3904910
9-12 months    PROBIT           BELARUS                        Medium               NA                0.3609661    0.3469570   0.3749752
9-12 months    PROVIDE          BANGLADESH                     High                 NA                0.1989848    0.1834946   0.2144750
9-12 months    PROVIDE          BANGLADESH                     Low                  NA                0.1670851    0.1502462   0.1839241
9-12 months    PROVIDE          BANGLADESH                     Medium               NA                0.1657302    0.1499465   0.1815140
9-12 months    SAS-CompFeed     INDIA                          High                 NA                0.2177756    0.1942828   0.2412685
9-12 months    SAS-CompFeed     INDIA                          Low                  NA                0.1904297    0.1775227   0.2033366
9-12 months    SAS-CompFeed     INDIA                          Medium               NA                0.1852237    0.1688877   0.2015597
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                0.1348572    0.0863442   0.1833703
9-12 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1442552    0.1225430   0.1659674
9-12 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1235448    0.0626061   0.1844834
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2111062    0.1905867   0.2316258
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1997244    0.1473883   0.2520606
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2026422    0.1907631   0.2145214
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1841013    0.1779956   0.1902070
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1769501    0.1670011   0.1868992
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1747746    0.1655776   0.1839717
12-15 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1537139    0.1316226   0.1758052
12-15 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.1413394    0.1179978   0.1646809
12-15 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1545979    0.1283881   0.1808076
12-15 months   COHORTS          GUATEMALA                      High                 NA                0.1605569    0.1400093   0.1811045
12-15 months   COHORTS          GUATEMALA                      Low                  NA                0.1462968    0.1324127   0.1601809
12-15 months   COHORTS          GUATEMALA                      Medium               NA                0.1505960    0.1354676   0.1657245
12-15 months   EE               PAKISTAN                       High                 NA                0.1333475    0.0028271   0.2638680
12-15 months   EE               PAKISTAN                       Low                  NA                0.1355240    0.1167292   0.1543188
12-15 months   EE               PAKISTAN                       Medium               NA                0.1443778    0.0825476   0.2062080
12-15 months   GMS-Nepal        NEPAL                          High                 NA                0.1892620    0.1517046   0.2268194
12-15 months   GMS-Nepal        NEPAL                          Low                  NA                0.1725460    0.1572105   0.1878814
12-15 months   GMS-Nepal        NEPAL                          Medium               NA                0.1587242    0.1239631   0.1934852
12-15 months   Guatemala BSC    GUATEMALA                      High                 NA                0.2337804    0.1981390   0.2694218
12-15 months   Guatemala BSC    GUATEMALA                      Low                  NA                0.1522097    0.0906279   0.2137915
12-15 months   Guatemala BSC    GUATEMALA                      Medium               NA                0.1793335    0.1349717   0.2236953
12-15 months   IRC              INDIA                          High                 NA                0.1873626    0.1643847   0.2103404
12-15 months   IRC              INDIA                          Low                  NA                0.1712689    0.1500655   0.1924724
12-15 months   IRC              INDIA                          Medium               NA                0.1891601    0.1669013   0.2114188
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                0.1337655    0.1270918   0.1404393
12-15 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1287583    0.1224373   0.1350794
12-15 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1285757    0.1206416   0.1365099
12-15 months   LCNI-5           MALAWI                         High                 NA                0.1544419    0.0816533   0.2272305
12-15 months   LCNI-5           MALAWI                         Low                  NA                0.1452943    0.0943158   0.1962728
12-15 months   LCNI-5           MALAWI                         Medium               NA                0.1563235    0.1108512   0.2017959
12-15 months   MAL-ED           BANGLADESH                     High                 NA                0.1525223    0.1263090   0.1787355
12-15 months   MAL-ED           BANGLADESH                     Low                  NA                0.1551054    0.1269600   0.1832508
12-15 months   MAL-ED           BANGLADESH                     Medium               NA                0.1039477    0.0688282   0.1390671
12-15 months   MAL-ED           BRAZIL                         High                 NA                0.2441302    0.2007976   0.2874628
12-15 months   MAL-ED           BRAZIL                         Low                  NA                0.1335591    0.0905430   0.1765751
12-15 months   MAL-ED           BRAZIL                         Medium               NA                0.2259730    0.1881955   0.2637505
12-15 months   MAL-ED           INDIA                          High                 NA                0.1984522    0.1657217   0.2311827
12-15 months   MAL-ED           INDIA                          Low                  NA                0.1634277    0.1354982   0.1913572
12-15 months   MAL-ED           INDIA                          Medium               NA                0.1553625    0.1286342   0.1820908
12-15 months   MAL-ED           NEPAL                          High                 NA                0.1448419    0.1175069   0.1721768
12-15 months   MAL-ED           NEPAL                          Low                  NA                0.1544238    0.1282950   0.1805526
12-15 months   MAL-ED           NEPAL                          Medium               NA                0.1610292    0.1313291   0.1907292
12-15 months   MAL-ED           PERU                           High                 NA                0.1516559    0.1252245   0.1780873
12-15 months   MAL-ED           PERU                           Low                  NA                0.1418329    0.1092191   0.1744468
12-15 months   MAL-ED           PERU                           Medium               NA                0.1319970    0.1052269   0.1587671
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1971611    0.1538857   0.2404366
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2074946    0.1747635   0.2402256
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1323070    0.0642702   0.2003437
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2413633    0.1628826   0.3198440
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1464375    0.1042350   0.1886399
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1476922    0.1112272   0.1841572
12-15 months   NIH-Birth        BANGLADESH                     High                 NA                0.1268094    0.1071099   0.1465088
12-15 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1125781    0.0910942   0.1340620
12-15 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1533213    0.1331918   0.1734507
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1737646    0.1534297   0.1940995
12-15 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1617751    0.1450367   0.1785136
12-15 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1564372    0.1392776   0.1735969
12-15 months   PROBIT           BELARUS                        High                 NA                0.2655392    0.2080930   0.3229854
12-15 months   PROBIT           BELARUS                        Low                  NA                0.2057193    0.1272763   0.2841622
12-15 months   PROBIT           BELARUS                        Medium               NA                0.2204822    0.1015899   0.3393745
12-15 months   PROVIDE          BANGLADESH                     High                 NA                0.1844254    0.1657926   0.2030582
12-15 months   PROVIDE          BANGLADESH                     Low                  NA                0.1776738    0.1564873   0.1988603
12-15 months   PROVIDE          BANGLADESH                     Medium               NA                0.1777301    0.1567965   0.1986637
12-15 months   SAS-CompFeed     INDIA                          High                 NA                0.1886439    0.1686389   0.2086490
12-15 months   SAS-CompFeed     INDIA                          Low                  NA                0.1807422    0.1628652   0.1986193
12-15 months   SAS-CompFeed     INDIA                          Medium               NA                0.1885618    0.1716119   0.2055117
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1945665    0.1546477   0.2344853
12-15 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1682937    0.1497950   0.1867924
12-15 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.2038109    0.1530016   0.2546202
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1777332    0.1538733   0.2015931
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1327676    0.0849215   0.1806137
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1744945    0.1612111   0.1877779
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1506323    0.1398232   0.1614415
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1491845    0.1320159   0.1663531
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1492168    0.1334080   0.1650256
15-18 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1723503    0.1471376   0.1975630
15-18 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.1311288    0.1080279   0.1542297
15-18 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1444530    0.1222294   0.1666766
15-18 months   COHORTS          GUATEMALA                      High                 NA                0.1450068    0.1206295   0.1693841
15-18 months   COHORTS          GUATEMALA                      Low                  NA                0.1319828    0.1143899   0.1495757
15-18 months   COHORTS          GUATEMALA                      Medium               NA                0.1468344    0.1306560   0.1630128
15-18 months   EE               PAKISTAN                       High                 NA                0.0900486    0.0081031   0.1719942
15-18 months   EE               PAKISTAN                       Low                  NA                0.0898274    0.0743793   0.1052754
15-18 months   EE               PAKISTAN                       Medium               NA                0.0799753    0.0368407   0.1231100
15-18 months   GMS-Nepal        NEPAL                          High                 NA                0.2442222    0.2074581   0.2809863
15-18 months   GMS-Nepal        NEPAL                          Low                  NA                0.2361567    0.2172366   0.2550768
15-18 months   GMS-Nepal        NEPAL                          Medium               NA                0.2236495    0.1896466   0.2576524
15-18 months   IRC              INDIA                          High                 NA                0.1745182    0.1468812   0.2021552
15-18 months   IRC              INDIA                          Low                  NA                0.1661600    0.1450183   0.1873016
15-18 months   IRC              INDIA                          Medium               NA                0.1418405    0.1200847   0.1635964
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                0.1595566    0.1517828   0.1673304
15-18 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1576765    0.1497509   0.1656020
15-18 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1613596    0.1529412   0.1697780
15-18 months   LCNI-5           MALAWI                         High                 NA                0.1657833    0.1011032   0.2304635
15-18 months   LCNI-5           MALAWI                         Low                  NA                0.1937247    0.1452446   0.2422049
15-18 months   LCNI-5           MALAWI                         Medium               NA                0.1592784    0.1088712   0.2096856
15-18 months   MAL-ED           BANGLADESH                     High                 NA                0.1463566    0.1176179   0.1750952
15-18 months   MAL-ED           BANGLADESH                     Low                  NA                0.1275324    0.0965872   0.1584777
15-18 months   MAL-ED           BANGLADESH                     Medium               NA                0.1436565    0.1121654   0.1751476
15-18 months   MAL-ED           BRAZIL                         High                 NA                0.2442537    0.1980805   0.2904269
15-18 months   MAL-ED           BRAZIL                         Low                  NA                0.2329362    0.1718061   0.2940663
15-18 months   MAL-ED           BRAZIL                         Medium               NA                0.1459051    0.1131507   0.1786596
15-18 months   MAL-ED           INDIA                          High                 NA                0.1553324    0.1211080   0.1895568
15-18 months   MAL-ED           INDIA                          Low                  NA                0.1644569    0.1379829   0.1909309
15-18 months   MAL-ED           INDIA                          Medium               NA                0.1762782    0.1516959   0.2008605
15-18 months   MAL-ED           NEPAL                          High                 NA                0.1581945    0.1292010   0.1871880
15-18 months   MAL-ED           NEPAL                          Low                  NA                0.1693907    0.1454518   0.1933296
15-18 months   MAL-ED           NEPAL                          Medium               NA                0.1911163    0.1619729   0.2202597
15-18 months   MAL-ED           PERU                           High                 NA                0.1285010    0.0950328   0.1619691
15-18 months   MAL-ED           PERU                           Low                  NA                0.1487308    0.1163695   0.1810922
15-18 months   MAL-ED           PERU                           Medium               NA                0.1580402    0.1258897   0.1901907
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2076280    0.1461813   0.2690748
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2327080    0.1968122   0.2686038
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.2229807    0.1607511   0.2852103
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0022254   -0.1065004   0.1109512
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1376774    0.0929164   0.1824385
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1803573    0.1520740   0.2086406
15-18 months   NIH-Birth        BANGLADESH                     High                 NA                0.1806263    0.1547131   0.2065395
15-18 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1517272    0.1267329   0.1767215
15-18 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1302948    0.1063149   0.1542746
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1897862    0.1707190   0.2088533
15-18 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1445791    0.1262693   0.1628888
15-18 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1470330    0.1304885   0.1635775
15-18 months   PROBIT           BELARUS                        High                 NA                0.2242767    0.1532347   0.2953188
15-18 months   PROBIT           BELARUS                        Low                  NA                0.2256072    0.0968587   0.3543556
15-18 months   PROBIT           BELARUS                        Medium               NA                0.2234736    0.1505381   0.2964092
15-18 months   PROVIDE          BANGLADESH                     High                 NA                0.1715957    0.1515442   0.1916471
15-18 months   PROVIDE          BANGLADESH                     Low                  NA                0.1459117    0.1249309   0.1668925
15-18 months   PROVIDE          BANGLADESH                     Medium               NA                0.1502354    0.1302900   0.1701807
15-18 months   SAS-CompFeed     INDIA                          High                 NA                0.1666976    0.1285269   0.2048683
15-18 months   SAS-CompFeed     INDIA                          Low                  NA                0.1833759    0.1687351   0.1980167
15-18 months   SAS-CompFeed     INDIA                          Medium               NA                0.1769040    0.1497085   0.2040994
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1549978    0.1215524   0.1884433
15-18 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1709675    0.1528629   0.1890722
15-18 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1337978    0.0838373   0.1837583
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1809672    0.1498788   0.2120555
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1909409    0.1205678   0.2613140
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1661008    0.1496907   0.1825109
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1275330    0.1119327   0.1431332
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1430280    0.1234221   0.1626339
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1354365    0.1142724   0.1566006
18-21 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1364334    0.1085390   0.1643278
18-21 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.1286237    0.1046601   0.1525873
18-21 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1396881    0.1170640   0.1623122
18-21 months   COHORTS          GUATEMALA                      High                 NA                0.1657399    0.1417880   0.1896917
18-21 months   COHORTS          GUATEMALA                      Low                  NA                0.1595079    0.1434336   0.1755821
18-21 months   COHORTS          GUATEMALA                      Medium               NA                0.1677115    0.1499523   0.1854708
18-21 months   EE               PAKISTAN                       High                 NA                0.2288057    0.1696739   0.2879375
18-21 months   EE               PAKISTAN                       Low                  NA                0.1270000    0.1100476   0.1439523
18-21 months   EE               PAKISTAN                       Medium               NA                0.1244429    0.0708921   0.1779938
18-21 months   GMS-Nepal        NEPAL                          High                 NA                0.1035264    0.0650023   0.1420506
18-21 months   GMS-Nepal        NEPAL                          Low                  NA                0.1447603    0.1265160   0.1630047
18-21 months   GMS-Nepal        NEPAL                          Medium               NA                0.1585126    0.1162701   0.2007551
18-21 months   IRC              INDIA                          High                 NA                0.1482693    0.1268948   0.1696438
18-21 months   IRC              INDIA                          Low                  NA                0.1642228    0.1390158   0.1894297
18-21 months   IRC              INDIA                          Medium               NA                0.1634817    0.1413484   0.1856150
18-21 months   LCNI-5           MALAWI                         High                 NA                0.1650424    0.1326892   0.1973955
18-21 months   LCNI-5           MALAWI                         Low                  NA                0.1972257    0.1641439   0.2303075
18-21 months   LCNI-5           MALAWI                         Medium               NA                0.1887439    0.1489518   0.2285359
18-21 months   MAL-ED           BANGLADESH                     High                 NA                0.1518176    0.1173382   0.1862970
18-21 months   MAL-ED           BANGLADESH                     Low                  NA                0.1344510    0.1013991   0.1675029
18-21 months   MAL-ED           BANGLADESH                     Medium               NA                0.1533325    0.1231328   0.1835321
18-21 months   MAL-ED           BRAZIL                         High                 NA                0.1537478    0.1182863   0.1892094
18-21 months   MAL-ED           BRAZIL                         Low                  NA                0.1564983    0.1035450   0.2094516
18-21 months   MAL-ED           BRAZIL                         Medium               NA                0.1698108    0.1288822   0.2107393
18-21 months   MAL-ED           INDIA                          High                 NA                0.1994059    0.1720710   0.2267408
18-21 months   MAL-ED           INDIA                          Low                  NA                0.1522187    0.1233078   0.1811297
18-21 months   MAL-ED           INDIA                          Medium               NA                0.1677833    0.1431534   0.1924131
18-21 months   MAL-ED           NEPAL                          High                 NA                0.1580036    0.1235046   0.1925026
18-21 months   MAL-ED           NEPAL                          Low                  NA                0.1463971    0.1223640   0.1704301
18-21 months   MAL-ED           NEPAL                          Medium               NA                0.1438644    0.1088486   0.1788801
18-21 months   MAL-ED           PERU                           High                 NA                0.1867804    0.1545607   0.2190002
18-21 months   MAL-ED           PERU                           Low                  NA                0.1492517    0.1126434   0.1858600
18-21 months   MAL-ED           PERU                           Medium               NA                0.1543248    0.1260355   0.1826140
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2224674    0.1739957   0.2709390
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1673197    0.1296279   0.2050116
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1400071    0.0842380   0.1957761
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2703222    0.1055206   0.4351238
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1473736    0.1006492   0.1940981
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1298778    0.0967225   0.1630331
18-21 months   NIH-Birth        BANGLADESH                     High                 NA                0.1646669    0.1342211   0.1951127
18-21 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1864557    0.1577717   0.2151397
18-21 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1634963    0.1395801   0.1874125
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1425803    0.1258232   0.1593373
18-21 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1419666    0.1230350   0.1608982
18-21 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1433300    0.1233555   0.1633044
18-21 months   PROBIT           BELARUS                        High                 NA                0.2410395   -0.0739190   0.5559980
18-21 months   PROBIT           BELARUS                        Low                  NA                0.1673397   -0.1817997   0.5164790
18-21 months   PROBIT           BELARUS                        Medium               NA                0.1634597    0.0443858   0.2825336
18-21 months   PROVIDE          BANGLADESH                     High                 NA                0.1276738    0.1087864   0.1465613
18-21 months   PROVIDE          BANGLADESH                     Low                  NA                0.1315132    0.1098107   0.1532157
18-21 months   PROVIDE          BANGLADESH                     Medium               NA                0.1377231    0.1186738   0.1567724
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1303204    0.1063683   0.1542726
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1138691    0.0764950   0.1512432
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1132768    0.0826319   0.1439217
21-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1621283    0.1384885   0.1857681
21-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.1403966    0.1138011   0.1669921
21-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1367909    0.1157723   0.1578096
21-24 months   COHORTS          GUATEMALA                      High                 NA                0.1715761    0.1491907   0.1939616
21-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1886165    0.1740842   0.2031489
21-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1859901    0.1688355   0.2031448
21-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1783898    0.1131954   0.2435841
21-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1798228    0.1501176   0.2095280
21-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1677048    0.1107438   0.2246657
21-24 months   IRC              INDIA                          High                 NA                0.1833952    0.1597091   0.2070813
21-24 months   IRC              INDIA                          Low                  NA                0.1722877    0.1467557   0.1978196
21-24 months   IRC              INDIA                          Medium               NA                0.1783704    0.1563561   0.2003847
21-24 months   LCNI-5           MALAWI                         High                 NA                0.2050612    0.1579514   0.2521711
21-24 months   LCNI-5           MALAWI                         Low                  NA                0.1750285    0.1342375   0.2158195
21-24 months   LCNI-5           MALAWI                         Medium               NA                0.1448166    0.0958483   0.1937849
21-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1517810    0.1233784   0.1801837
21-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.1363031    0.1124209   0.1601854
21-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1419336    0.1109085   0.1729587
21-24 months   MAL-ED           BRAZIL                         High                 NA                0.1343495    0.0968348   0.1718642
21-24 months   MAL-ED           BRAZIL                         Low                  NA                0.1411662    0.0881447   0.1941877
21-24 months   MAL-ED           BRAZIL                         Medium               NA                0.1506977    0.1153253   0.1860701
21-24 months   MAL-ED           INDIA                          High                 NA                0.1615642    0.1314108   0.1917176
21-24 months   MAL-ED           INDIA                          Low                  NA                0.1496773    0.1270027   0.1723520
21-24 months   MAL-ED           INDIA                          Medium               NA                0.1545411    0.1317229   0.1773593
21-24 months   MAL-ED           NEPAL                          High                 NA                0.1693990    0.1194521   0.2193458
21-24 months   MAL-ED           NEPAL                          Low                  NA                0.1781557    0.1433662   0.2129451
21-24 months   MAL-ED           NEPAL                          Medium               NA                0.1690595    0.1414741   0.1966449
21-24 months   MAL-ED           PERU                           High                 NA                0.1424729    0.1125691   0.1723766
21-24 months   MAL-ED           PERU                           Low                  NA                0.2205456    0.1840889   0.2570024
21-24 months   MAL-ED           PERU                           Medium               NA                0.1726435    0.1408227   0.2044642
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1530854    0.1150305   0.1911402
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1988691    0.1650866   0.2326516
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.2066026    0.1491603   0.2640448
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1634872   -0.0382213   0.3651956
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0930398    0.0370101   0.1490695
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1616033    0.1265172   0.1966894
21-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.1592625    0.1323494   0.1861756
21-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1330863    0.1060986   0.1600740
21-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1362223    0.1116935   0.1607510
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1778205    0.1547569   0.2008841
21-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1719235    0.1512600   0.1925870
21-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1745384    0.1542410   0.1948359
21-24 months   PROBIT           BELARUS                        High                 NA                0.1804283   -0.0287284   0.3895851
21-24 months   PROBIT           BELARUS                        Low                  NA                0.1624772    0.0447864   0.2801680
21-24 months   PROBIT           BELARUS                        Medium               NA                0.1834994    0.0456790   0.3213199
21-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1372878    0.1180565   0.1565190
21-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1396356    0.1195477   0.1597234
21-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1484171    0.1284330   0.1684012
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1011150    0.0636217   0.1386084
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1195200    0.0577206   0.1813195
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1100135    0.0601393   0.1598876


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7988919   0.7820847   0.8156990
0-3 months     COHORTS          INDIA                          NA                   NA                0.8081291   0.8029165   0.8133416
0-3 months     EE               PAKISTAN                       NA                   NA                0.6937447   0.6706399   0.7168494
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8260856   0.8090866   0.8430847
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710734   0.8679957   0.8741512
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8899886   0.8795209   0.9004562
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8944941   0.8697748   0.9192135
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0652423   1.0308643   1.0996204
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7685014   0.7455209   0.7914820
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9583296   0.9305961   0.9860631
0-3 months     MAL-ED           PERU                           NA                   NA                0.9707294   0.9456368   0.9958219
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8894827   0.8570669   0.9218985
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356412   0.8250517   0.8462307
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224824   0.9123161   0.9326486
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496069   0.9444743   0.9547396
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4605100   0.4496066   0.4714133
3-6 months     COHORTS          INDIA                          NA                   NA                0.4797258   0.4754611   0.4839904
3-6 months     EE               PAKISTAN                       NA                   NA                0.4742379   0.4551485   0.4933273
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4971331   0.4832778   0.5109884
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413918   0.4384233   0.4443603
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4391228   0.4303289   0.4479168
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4803582   0.4617478   0.4989686
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5794401   0.5481566   0.6107237
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4445470   0.4255906   0.4635033
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5247048   0.5036147   0.5457948
3-6 months     MAL-ED           PERU                           NA                   NA                0.4987704   0.4797737   0.5177670
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4539728   0.4271395   0.4808061
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6655962   0.6576122   0.6735801
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196317   0.4109547   0.4283087
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4782423   0.4737107   0.4827739
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2132645   0.2035725   0.2229565
6-9 months     COHORTS          INDIA                          NA                   NA                0.2748135   0.2703496   0.2792773
6-9 months     EE               PAKISTAN                       NA                   NA                0.2537695   0.2388892   0.2686499
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874885   0.1753670   0.1996100
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                0.2446145   0.2267346   0.2624943
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2398316   0.2345560   0.2451073
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2848807   0.2722480   0.2975134
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2429143   0.2270933   0.2587353
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3837434   0.3575729   0.4099139
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2300040   0.2138783   0.2461296
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2718170   0.2565250   0.2871091
6-9 months     MAL-ED           PERU                           NA                   NA                0.2614327   0.2458774   0.2769879
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2344586   0.2074322   0.2614851
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4737281   0.4649839   0.4824723
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2560041   0.2471164   0.2648917
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2584713   0.2539681   0.2629745
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1558920   0.1473010   0.1644829
9-12 months    COHORTS          INDIA                          NA                   NA                0.2159185   0.2112909   0.2205460
9-12 months    EE               PAKISTAN                       NA                   NA                0.2489218   0.2322933   0.2655504
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1440649   0.1313130   0.1568167
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.2071701   0.1862339   0.2281064
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1543817   0.1501075   0.1586558
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2024655   0.1864801   0.2184509
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1797178   0.1641434   0.1952921
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2838420   0.2519083   0.3157758
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1817602   0.1666451   0.1968754
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1867292   0.1722940   0.2011645
9-12 months    MAL-ED           PERU                           NA                   NA                0.1873166   0.1719432   0.2026901
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1703146   0.1475972   0.1930320
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666836   0.3521958   0.3811713
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046674   0.1945724   0.2147625
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802056   0.1756719   0.1847392
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1506255   0.1414330   0.1598181
12-15 months   EE               PAKISTAN                       NA                   NA                0.1362158   0.1181583   0.1542732
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1719498   0.1587385   0.1851610
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1956959   0.1682516   0.2231402
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1304286   0.1263120   0.1345453
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1391459   0.1217880   0.1565039
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2109060   0.1859847   0.2358272
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1703601   0.1535128   0.1872073
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1544687   0.1380959   0.1708415
12-15 months   MAL-ED           PERU                           NA                   NA                0.1416083   0.1248418   0.1583749
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1513298   0.1240239   0.1786357
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2225230   0.1483776   0.2966684
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499005   0.1419461   0.1578550
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1395148   0.1285434   0.1504862
15-18 months   EE               PAKISTAN                       NA                   NA                0.0889756   0.0746076   0.1033436
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2349910   0.2196552   0.2503268
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1595129   0.1548087   0.1642172
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1393896   0.1218124   0.1569668
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2030868   0.1763099   0.2298637
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1662943   0.1501023   0.1824863
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1742839   0.1584111   0.1901567
15-18 months   MAL-ED           PERU                           NA                   NA                0.1456530   0.1267314   0.1645745
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600276   0.1359393   0.1841159
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2243786   0.1636115   0.2851457
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1634795   0.1527873   0.1741717
18-21 months   EE               PAKISTAN                       NA                   NA                0.1303789   0.1144733   0.1462846
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423162   0.1266831   0.1579492
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1825568   0.1623545   0.2027591
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1464313   0.1272289   0.1656336
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1605233   0.1362538   0.1847929
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1714603   0.1556689   0.1872516
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1482076   0.1304988   0.1659164
18-21 months   MAL-ED           PERU                           NA                   NA                0.1622211   0.1432000   0.1812421
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1411154   0.1139813   0.1682494
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROBIT           BELARUS                        NA                   NA                0.1781603   0.0230043   0.3333163
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1843974   0.1744519   0.1943430
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1774556   0.1529568   0.2019545
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1784541   0.1514958   0.2054124
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1438531   0.1277013   0.1600049
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1422506   0.1188847   0.1656166
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1548216   0.1404714   0.1691718
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1730392   0.1520944   0.1939841
21-24 months   MAL-ED           PERU                           NA                   NA                0.1812376   0.1614023   0.2010729
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1399226   0.1096456   0.1701996
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROBIT           BELARUS                        NA                   NA                0.1751208   0.0912401   0.2590016
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Low                  High              -0.0748935   -0.1341540   -0.0156330
0-3 months     CMC-V-BCS-2002   INDIA                          Medium               High              -0.0144676   -0.0688059    0.0398707
0-3 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low                  High              -0.0078900   -0.0523173    0.0365373
0-3 months     COHORTS          GUATEMALA                      Medium               High              -0.0128502   -0.0610073    0.0353068
0-3 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low                  High              -0.0937535   -0.1100235   -0.0774836
0-3 months     COHORTS          INDIA                          Medium               High              -0.0449741   -0.0601907   -0.0297576
0-3 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low                  High              -0.0398282   -0.1185718    0.0389154
0-3 months     EE               PAKISTAN                       Medium               High              -0.0105715   -0.1218068    0.1006638
0-3 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low                  High              -0.0573818   -0.1066535   -0.0081101
0-3 months     GMS-Nepal        NEPAL                          Medium               High              -0.0215768   -0.0777730    0.0346193
0-3 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low                  High              -0.0190939   -0.0660186    0.0278309
0-3 months     IRC              INDIA                          Medium               High              -0.0363453   -0.0841807    0.0114902
0-3 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0444264   -0.0514428   -0.0374101
0-3 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0238586   -0.0312116   -0.0165056
0-3 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0187872   -0.0425490    0.0049746
0-3 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0174323   -0.0433396    0.0084750
0-3 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low                  High              -0.0939746   -0.1535084   -0.0344409
0-3 months     MAL-ED           BANGLADESH                     Medium               High              -0.0169886   -0.0722196    0.0382424
0-3 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low                  High              -0.1150259   -0.1965870   -0.0334647
0-3 months     MAL-ED           BRAZIL                         Medium               High              -0.0300337   -0.1158840    0.0558167
0-3 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low                  High              -0.0177758   -0.0736987    0.0381470
0-3 months     MAL-ED           INDIA                          Medium               High              -0.0098478   -0.0636906    0.0439950
0-3 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low                  High              -0.0186177   -0.0871329    0.0498975
0-3 months     MAL-ED           NEPAL                          Medium               High              -0.0613922   -0.1334819    0.0106975
0-3 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low                  High              -0.0393587   -0.0973963    0.0186790
0-3 months     MAL-ED           PERU                           Medium               High               0.0132751   -0.0496754    0.0762257
0-3 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0624015   -0.1255089    0.0007059
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.0406642   -0.1141558    0.0328275
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1468987   -0.2919345   -0.0018628
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1627380   -0.2980580   -0.0274181
0-3 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low                  High              -0.0744049   -0.1182613   -0.0305485
0-3 months     NIH-Birth        BANGLADESH                     Medium               High              -0.0087749   -0.0532331    0.0356834
0-3 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0442510   -0.0789884   -0.0095135
0-3 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0072291   -0.0425683    0.0281101
0-3 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Low                  High              -0.0182897   -0.0325257   -0.0040537
0-3 months     PROBIT           BELARUS                        Medium               High              -0.0061556   -0.0184611    0.0061499
0-3 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low                  High              -0.0477976   -0.0832166   -0.0123787
0-3 months     PROVIDE          BANGLADESH                     Medium               High              -0.0178987   -0.0537610    0.0179635
0-3 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low                  High              -0.0752428   -0.1015569   -0.0489288
0-3 months     SAS-CompFeed     INDIA                          Medium               High              -0.0283954   -0.0529458   -0.0038450
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0136997   -0.0690363    0.0416369
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0049762   -0.0184648    0.0284172
0-3 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0430705   -0.0560685   -0.0300724
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0330453   -0.0454608   -0.0206298
3-6 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low                  High              -0.0177941   -0.0658561    0.0302680
3-6 months     CMC-V-BCS-2002   INDIA                          Medium               High              -0.0014825   -0.0448635    0.0418985
3-6 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low                  High              -0.0024058   -0.0313533    0.0265416
3-6 months     COHORTS          GUATEMALA                      Medium               High               0.0186768   -0.0119125    0.0492662
3-6 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low                  High              -0.0994405   -0.1125661   -0.0863148
3-6 months     COHORTS          INDIA                          Medium               High              -0.0472618   -0.0596356   -0.0348881
3-6 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low                  High              -0.0366077   -0.0983327    0.0251174
3-6 months     EE               PAKISTAN                       Medium               High               0.0486976   -0.0435632    0.1409583
3-6 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low                  High              -0.0715200   -0.1166570   -0.0263830
3-6 months     GMS-Nepal        NEPAL                          Medium               High              -0.0589406   -0.1126989   -0.0051823
3-6 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low                  High              -0.0454601   -0.0875947   -0.0033254
3-6 months     IRC              INDIA                          Medium               High              -0.0443944   -0.0909771    0.0021882
3-6 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0219741   -0.0289763   -0.0149719
3-6 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0135250   -0.0204171   -0.0066329
3-6 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0182164   -0.0360425   -0.0003902
3-6 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0036729   -0.0271213    0.0197754
3-6 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low                  High              -0.0150938   -0.0596864    0.0294987
3-6 months     MAL-ED           BANGLADESH                     Medium               High               0.0003499   -0.0452837    0.0459836
3-6 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low                  High              -0.0121340   -0.0916978    0.0674298
3-6 months     MAL-ED           BRAZIL                         Medium               High               0.0098374   -0.0656252    0.0853001
3-6 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low                  High               0.0463391    0.0010422    0.0916361
3-6 months     MAL-ED           INDIA                          Medium               High               0.0616869    0.0148752    0.1084986
3-6 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low                  High              -0.0883629   -0.1459945   -0.0307313
3-6 months     MAL-ED           NEPAL                          Medium               High              -0.0701722   -0.1301261   -0.0102183
3-6 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low                  High               0.0018252   -0.0456595    0.0493098
3-6 months     MAL-ED           PERU                           Medium               High              -0.0326658   -0.0788931    0.0135615
3-6 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0337768   -0.0902841    0.0227306
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0380466   -0.0390751    0.1151682
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0695342   -0.0651631    0.2042315
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0741487   -0.0557790    0.2040763
3-6 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low                  High              -0.0220921   -0.0687391    0.0245548
3-6 months     NIH-Birth        BANGLADESH                     Medium               High              -0.0438265   -0.0902273    0.0025743
3-6 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0204732   -0.0463826    0.0054361
3-6 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0059958   -0.0338033    0.0218116
3-6 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Low                  High              -0.0023789   -0.0156018    0.0108439
3-6 months     PROBIT           BELARUS                        Medium               High               0.0074794   -0.0061362    0.0210950
3-6 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low                  High              -0.0254731   -0.0592733    0.0083270
3-6 months     PROVIDE          BANGLADESH                     Medium               High              -0.0055629   -0.0347532    0.0236274
3-6 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low                  High              -0.0334432   -0.0619462   -0.0049402
3-6 months     SAS-CompFeed     INDIA                          Medium               High              -0.0092934   -0.0350990    0.0165121
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0125978   -0.0312071    0.0564027
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0125442   -0.0335431    0.0084547
3-6 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0231483   -0.0348056   -0.0114910
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0168113   -0.0279336   -0.0056891
6-9 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low                  High               0.0286180   -0.0149185    0.0721546
6-9 months     CMC-V-BCS-2002   INDIA                          Medium               High              -0.0041111   -0.0370746    0.0288523
6-9 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low                  High               0.0076560   -0.0182422    0.0335542
6-9 months     COHORTS          GUATEMALA                      Medium               High               0.0172192   -0.0098554    0.0442938
6-9 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low                  High              -0.0981614   -0.1123561   -0.0839668
6-9 months     COHORTS          INDIA                          Medium               High              -0.0469903   -0.0603978   -0.0335828
6-9 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low                  High              -0.0582377   -0.1293804    0.0129050
6-9 months     EE               PAKISTAN                       Medium               High              -0.0535281   -0.1345664    0.0275103
6-9 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low                  High              -0.0279611   -0.0638348    0.0079127
6-9 months     GMS-Nepal        NEPAL                          Medium               High              -0.0452085   -0.0832276   -0.0071895
6-9 months     Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      Low                  High              -0.0335496   -0.0733911    0.0062920
6-9 months     Guatemala BSC    GUATEMALA                      Medium               High               0.0137756   -0.0311249    0.0586760
6-9 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low                  High              -0.0083673   -0.0401129    0.0233782
6-9 months     IRC              INDIA                          Medium               High              -0.0149939   -0.0495018    0.0195140
6-9 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0104995   -0.0223608    0.0013618
6-9 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0063705   -0.0185977    0.0058567
6-9 months     LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Low                  High              -0.0177154   -0.0471546    0.0117238
6-9 months     LCNI-5           MALAWI                         Medium               High              -0.0064478   -0.0385246    0.0256291
6-9 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low                  High              -0.0011087   -0.0384806    0.0362632
6-9 months     MAL-ED           BANGLADESH                     Medium               High               0.0202914   -0.0209663    0.0615491
6-9 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low                  High              -0.0632775   -0.1306780    0.0041230
6-9 months     MAL-ED           BRAZIL                         Medium               High              -0.0464422   -0.1075164    0.0146319
6-9 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low                  High              -0.0108563   -0.0488188    0.0271062
6-9 months     MAL-ED           INDIA                          Medium               High              -0.0051802   -0.0438761    0.0335157
6-9 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low                  High              -0.0105984   -0.0489844    0.0277876
6-9 months     MAL-ED           NEPAL                          Medium               High              -0.0245895   -0.0638721    0.0146931
6-9 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low                  High              -0.0161080   -0.0561295    0.0239136
6-9 months     MAL-ED           PERU                           Medium               High              -0.0244393   -0.0600087    0.0111302
6-9 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  High               0.0058251   -0.0406901    0.0523403
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0178549   -0.0369628    0.0726725
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0032066   -0.1438872    0.1503003
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0112499   -0.1562354    0.1337355
6-9 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low                  High              -0.0308564   -0.0643415    0.0026288
6-9 months     NIH-Birth        BANGLADESH                     Medium               High              -0.0237782   -0.0565074    0.0089509
6-9 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0458203   -0.0724147   -0.0192258
6-9 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0442895   -0.0708053   -0.0177736
6-9 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Low                  High              -0.0072966   -0.0214355    0.0068422
6-9 months     PROBIT           BELARUS                        Medium               High              -0.0040300   -0.0157572    0.0076971
6-9 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low                  High              -0.0401567   -0.0730591   -0.0072544
6-9 months     PROVIDE          BANGLADESH                     Medium               High              -0.0109476   -0.0353091    0.0134140
6-9 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low                  High              -0.0440705   -0.0813996   -0.0067415
6-9 months     SAS-CompFeed     INDIA                          Medium               High              -0.0169344   -0.0480371    0.0141684
6-9 months     SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          Low                  High              -0.0070488   -0.0596696    0.0455720
6-9 months     SAS-FoodSuppl    INDIA                          Medium               High              -0.0167509   -0.0847582    0.0512564
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1053670   -0.1709036   -0.0398304
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0265451   -0.0483309   -0.0047592
6-9 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0101735   -0.0222804    0.0019335
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0171421   -0.0278649   -0.0064192
9-12 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low                  High              -0.0341544   -0.0779533    0.0096445
9-12 months    CMC-V-BCS-2002   INDIA                          Medium               High              -0.0024850   -0.0428687    0.0378987
9-12 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low                  High               0.0111483   -0.0105714    0.0328679
9-12 months    COHORTS          GUATEMALA                      Medium               High               0.0159500   -0.0076083    0.0395083
9-12 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low                  High              -0.0693205   -0.0842800   -0.0543610
9-12 months    COHORTS          INDIA                          Medium               High              -0.0357730   -0.0495800   -0.0219660
9-12 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low                  High              -0.0764749   -0.1562442    0.0032943
9-12 months    EE               PAKISTAN                       Medium               High              -0.0498898   -0.1389950    0.0392153
9-12 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low                  High              -0.0025347   -0.0457588    0.0406894
9-12 months    GMS-Nepal        NEPAL                          Medium               High               0.0354119   -0.0135409    0.0843648
9-12 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.0797212   -0.1315081   -0.0279344
9-12 months    Guatemala BSC    GUATEMALA                      Medium               High               0.0044884   -0.0419102    0.0508870
9-12 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low                  High               0.0032502   -0.0289563    0.0354566
9-12 months    IRC              INDIA                          Medium               High               0.0066370   -0.0298986    0.0431726
9-12 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low                  High              -0.0058672   -0.0155560    0.0038217
9-12 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0035148   -0.0137441    0.0067144
9-12 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Low                  High              -0.0003360   -0.0364058    0.0357337
9-12 months    LCNI-5           MALAWI                         Medium               High              -0.0188617   -0.0592677    0.0215444
9-12 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low                  High              -0.0188240   -0.0560893    0.0184414
9-12 months    MAL-ED           BANGLADESH                     Medium               High              -0.0162850   -0.0552675    0.0226975
9-12 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low                  High               0.0314264   -0.0509241    0.1137770
9-12 months    MAL-ED           BRAZIL                         Medium               High               0.0269115   -0.0481476    0.1019707
9-12 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low                  High               0.0034723   -0.0364191    0.0433636
9-12 months    MAL-ED           INDIA                          Medium               High               0.0041566   -0.0387668    0.0470801
9-12 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low                  High              -0.0288984   -0.0642652    0.0064684
9-12 months    MAL-ED           NEPAL                          Medium               High              -0.0275835   -0.0626933    0.0075263
9-12 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low                  High               0.0068421   -0.0308965    0.0445807
9-12 months    MAL-ED           PERU                           Medium               High              -0.0198536   -0.0571709    0.0174638
9-12 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.0459225   -0.0955239    0.0036789
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               High               0.0123997   -0.0452887    0.0700881
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0706768   -0.0347829    0.1761365
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1189853    0.0157173    0.2222532
9-12 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low                  High              -0.0394139   -0.0728057   -0.0060220
9-12 months    NIH-Birth        BANGLADESH                     Medium               High              -0.0274297   -0.0566899    0.0018306
9-12 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0531292   -0.0780165   -0.0282419
9-12 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0223127   -0.0474481    0.0028227
9-12 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Low                  High               0.0021056   -0.0112876    0.0154988
9-12 months    PROBIT           BELARUS                        Medium               High              -0.0094646   -0.0204665    0.0015373
9-12 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low                  High              -0.0318997   -0.0547797   -0.0090196
9-12 months    PROVIDE          BANGLADESH                     Medium               High              -0.0332546   -0.0553696   -0.0111396
9-12 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low                  High              -0.0273460   -0.0519335   -0.0027584
9-12 months    SAS-CompFeed     INDIA                          Medium               High              -0.0325519   -0.0643972   -0.0007067
9-12 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0093980   -0.0437522    0.0625481
9-12 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.0113125   -0.0892037    0.0665787
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0113818   -0.0675968    0.0448332
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0084640   -0.0321740    0.0152460
9-12 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0071511   -0.0188243    0.0045220
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0093266   -0.0203659    0.0017127
12-15 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0123745   -0.0445126    0.0197635
12-15 months   CMC-V-BCS-2002   INDIA                          Medium               High               0.0008840   -0.0333940    0.0351619
12-15 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low                  High              -0.0142601   -0.0390587    0.0105385
12-15 months   COHORTS          GUATEMALA                      Medium               High              -0.0099609   -0.0354770    0.0155553
12-15 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low                  High               0.0021764   -0.1296903    0.1340432
12-15 months   EE               PAKISTAN                       Medium               High               0.0110303   -0.1333947    0.1554553
12-15 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low                  High              -0.0167160   -0.0572837    0.0238517
12-15 months   GMS-Nepal        NEPAL                          Medium               High              -0.0305378   -0.0817129    0.0206373
12-15 months   Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      Low                  High              -0.0815708   -0.1527229   -0.0104186
12-15 months   Guatemala BSC    GUATEMALA                      Medium               High              -0.0544469   -0.1113528    0.0024589
12-15 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low                  High              -0.0160936   -0.0473597    0.0151725
12-15 months   IRC              INDIA                          Medium               High               0.0017975   -0.0301937    0.0337887
12-15 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0050072   -0.0143792    0.0043648
12-15 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0051898   -0.0153074    0.0049278
12-15 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Low                  High              -0.0091476   -0.0980126    0.0797173
12-15 months   LCNI-5           MALAWI                         Medium               High               0.0018816   -0.0839433    0.0877065
12-15 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low                  High               0.0025831   -0.0358785    0.0410448
12-15 months   MAL-ED           BANGLADESH                     Medium               High              -0.0485746   -0.0923982   -0.0047510
12-15 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low                  High              -0.1105711   -0.1716293   -0.0495130
12-15 months   MAL-ED           BRAZIL                         Medium               High              -0.0181571   -0.0756450    0.0393307
12-15 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low                  High              -0.0350245   -0.0780517    0.0080027
12-15 months   MAL-ED           INDIA                          Medium               High              -0.0430897   -0.0853471   -0.0008323
12-15 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low                  High               0.0095819   -0.0282323    0.0473962
12-15 months   MAL-ED           NEPAL                          Medium               High               0.0161873   -0.0241772    0.0565518
12-15 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low                  High              -0.0098230   -0.0518025    0.0321565
12-15 months   MAL-ED           PERU                           Medium               High              -0.0196589   -0.0572788    0.0179610
12-15 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0103334   -0.0439260    0.0645929
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0648542   -0.1454877    0.0157793
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0949258   -0.1840340   -0.0058176
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0936711   -0.1802096   -0.0071326
12-15 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low                  High              -0.0142313   -0.0433796    0.0149171
12-15 months   NIH-Birth        BANGLADESH                     Medium               High               0.0265119   -0.0016531    0.0546768
12-15 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0119894   -0.0383273    0.0143484
12-15 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0173273   -0.0439349    0.0092802
12-15 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Low                  High              -0.0598200   -0.1313532    0.0117132
12-15 months   PROBIT           BELARUS                        Medium               High              -0.0450570   -0.1633173    0.0732034
12-15 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low                  High              -0.0067516   -0.0349660    0.0214627
12-15 months   PROVIDE          BANGLADESH                     Medium               High              -0.0066953   -0.0347202    0.0213296
12-15 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low                  High              -0.0079017   -0.0404324    0.0246290
12-15 months   SAS-CompFeed     INDIA                          Medium               High              -0.0000821   -0.0215082    0.0213440
12-15 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          Low                  High              -0.0262728   -0.0702695    0.0177240
12-15 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0092444   -0.0553706    0.0738594
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0449656   -0.0984309    0.0084998
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0032387   -0.0305470    0.0240697
12-15 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0014478   -0.0217357    0.0188401
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0014155   -0.0205664    0.0177354
15-18 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0412215   -0.0754170   -0.0070260
15-18 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0278973   -0.0615064    0.0057117
15-18 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low                  High              -0.0130240   -0.0430867    0.0170386
15-18 months   COHORTS          GUATEMALA                      Medium               High               0.0018276   -0.0274298    0.0310850
15-18 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low                  High              -0.0002213   -0.0836102    0.0831677
15-18 months   EE               PAKISTAN                       Medium               High              -0.0100733   -0.1026782    0.0825317
15-18 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low                  High              -0.0080655   -0.0494124    0.0332814
15-18 months   GMS-Nepal        NEPAL                          Medium               High              -0.0205727   -0.0706506    0.0295052
15-18 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low                  High              -0.0083583   -0.0431544    0.0264379
15-18 months   IRC              INDIA                          Medium               High              -0.0326777   -0.0678504    0.0024950
15-18 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0018801   -0.0130566    0.0092964
15-18 months   JiVitA-4         BANGLADESH                     Medium               High               0.0018030   -0.0093276    0.0129336
15-18 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Low                  High               0.0279414   -0.0528908    0.1087736
15-18 months   LCNI-5           MALAWI                         Medium               High              -0.0065049   -0.0885074    0.0754976
15-18 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low                  High              -0.0188241   -0.0610558    0.0234076
15-18 months   MAL-ED           BANGLADESH                     Medium               High              -0.0027001   -0.0453334    0.0399332
15-18 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low                  High              -0.0113175   -0.0879259    0.0652909
15-18 months   MAL-ED           BRAZIL                         Medium               High              -0.0983485   -0.1549596   -0.0417374
15-18 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low                  High               0.0091245   -0.0341442    0.0523932
15-18 months   MAL-ED           INDIA                          Medium               High               0.0209458   -0.0211920    0.0630837
15-18 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low                  High               0.0111962   -0.0264030    0.0487953
15-18 months   MAL-ED           NEPAL                          Medium               High               0.0329218   -0.0081873    0.0740310
15-18 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low                  High               0.0202299   -0.0263252    0.0667849
15-18 months   MAL-ED           PERU                           Medium               High               0.0295392   -0.0168695    0.0759479
15-18 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0250800   -0.0460833    0.0962433
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0153527   -0.0721015    0.1028068
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.1354520    0.0178729    0.2530311
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1781319    0.0657875    0.2904762
15-18 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low                  High              -0.0288991   -0.0649020    0.0071038
15-18 months   NIH-Birth        BANGLADESH                     Medium               High              -0.0503315   -0.0856377   -0.0150254
15-18 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0452071   -0.0716420   -0.0187722
15-18 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0427532   -0.0679975   -0.0175089
15-18 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Low                  High               0.0013304   -0.1501813    0.1528421
15-18 months   PROBIT           BELARUS                        Medium               High              -0.0008031   -0.1012939    0.0996876
15-18 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low                  High              -0.0256840   -0.0547056    0.0033377
15-18 months   PROVIDE          BANGLADESH                     Medium               High              -0.0213603   -0.0496424    0.0069218
15-18 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low                  High               0.0166783   -0.0274282    0.0607847
15-18 months   SAS-CompFeed     INDIA                          Medium               High               0.0102064   -0.0262542    0.0466669
15-18 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          Low                  High               0.0159697   -0.0220616    0.0540009
15-18 months   SAS-FoodSuppl    INDIA                          Medium               High              -0.0212000   -0.0813220    0.0389219
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0099737   -0.0669604    0.0869079
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0148664   -0.0500200    0.0202873
15-18 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0154950   -0.0095601    0.0405501
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0079035   -0.0183888    0.0341959
18-21 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0078097   -0.0445840    0.0289646
18-21 months   CMC-V-BCS-2002   INDIA                          Medium               High               0.0032547   -0.0326611    0.0391706
18-21 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low                  High              -0.0062320   -0.0350777    0.0226137
18-21 months   COHORTS          GUATEMALA                      Medium               High               0.0019717   -0.0278458    0.0317892
18-21 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low                  High              -0.1018057   -0.1633195   -0.0402919
18-21 months   EE               PAKISTAN                       Medium               High              -0.1043628   -0.1841391   -0.0245864
18-21 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low                  High               0.0412339   -0.0013920    0.0838598
18-21 months   GMS-Nepal        NEPAL                          Medium               High               0.0549862   -0.0021850    0.1121573
18-21 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low                  High               0.0159535   -0.0170959    0.0490028
18-21 months   IRC              INDIA                          Medium               High               0.0152124   -0.0155569    0.0459818
18-21 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Low                  High               0.0321833   -0.0140890    0.0784556
18-21 months   LCNI-5           MALAWI                         Medium               High               0.0237015   -0.0275833    0.0749863
18-21 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low                  High              -0.0173666   -0.0651291    0.0303959
18-21 months   MAL-ED           BANGLADESH                     Medium               High               0.0015149   -0.0443201    0.0473499
18-21 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low                  High               0.0027504   -0.0609801    0.0664809
18-21 months   MAL-ED           BRAZIL                         Medium               High               0.0160629   -0.0380912    0.0702170
18-21 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low                  High              -0.0471872   -0.0869746   -0.0073997
18-21 months   MAL-ED           INDIA                          Medium               High              -0.0316226   -0.0684170    0.0051718
18-21 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low                  High              -0.0116065   -0.0536513    0.0304383
18-21 months   MAL-ED           NEPAL                          Medium               High              -0.0141392   -0.0632949    0.0350165
18-21 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low                  High              -0.0375287   -0.0862963    0.0112389
18-21 months   MAL-ED           PERU                           Medium               High              -0.0324557   -0.0753322    0.0104208
18-21 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0551476   -0.1165494    0.0062541
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0824603   -0.1563500   -0.0085706
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1229486   -0.2942458    0.0483487
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1404445   -0.3085481    0.0276592
18-21 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low                  High               0.0217888   -0.0200408    0.0636185
18-21 months   NIH-Birth        BANGLADESH                     Medium               High              -0.0011706   -0.0398866    0.0375455
18-21 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0006137   -0.0258961    0.0246688
18-21 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0007497   -0.0253228    0.0268222
18-21 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Low                  High              -0.0736999   -0.5382198    0.3908201
18-21 months   PROBIT           BELARUS                        Medium               High              -0.0775798   -0.3922841    0.2371245
18-21 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low                  High               0.0038394   -0.0249310    0.0326098
18-21 months   PROVIDE          BANGLADESH                     Medium               High               0.0100493   -0.0167763    0.0368749
18-21 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0164513   -0.0608419    0.0279393
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0170436   -0.0559385    0.0218513
21-24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0217317   -0.0573148    0.0138514
21-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0253374   -0.0569700    0.0062953
21-24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low                  High               0.0170404   -0.0096485    0.0437293
21-24 months   COHORTS          GUATEMALA                      Medium               High               0.0144140   -0.0137887    0.0426167
21-24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low                  High               0.0014330   -0.0702099    0.0730760
21-24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0106850   -0.0972578    0.0758879
21-24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low                  High              -0.0111075   -0.0459344    0.0237193
21-24 months   IRC              INDIA                          Medium               High              -0.0050248   -0.0373615    0.0273118
21-24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Low                  High              -0.0300327   -0.0923484    0.0322829
21-24 months   LCNI-5           MALAWI                         Medium               High              -0.0602446   -0.1281949    0.0077056
21-24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low                  High              -0.0154779   -0.0525868    0.0216310
21-24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0098474   -0.0519100    0.0322153
21-24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low                  High               0.0068168   -0.0581342    0.0717678
21-24 months   MAL-ED           BRAZIL                         Medium               High               0.0163482   -0.0352130    0.0679095
21-24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low                  High              -0.0118869   -0.0496144    0.0258407
21-24 months   MAL-ED           INDIA                          Medium               High              -0.0070231   -0.0448371    0.0307909
21-24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low                  High               0.0087567   -0.0521119    0.0696253
21-24 months   MAL-ED           NEPAL                          Medium               High              -0.0003395   -0.0573977    0.0567187
21-24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low                  High               0.0780728    0.0309206    0.1252249
21-24 months   MAL-ED           PERU                           Medium               High               0.0301706   -0.0134962    0.0738374
21-24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0457837   -0.0051027    0.0966702
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0535172   -0.0153870    0.1224214
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0704474   -0.2797931    0.1388983
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0018839   -0.2066211    0.2028534
21-24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low                  High              -0.0261761   -0.0642898    0.0119375
21-24 months   NIH-Birth        BANGLADESH                     Medium               High              -0.0230402   -0.0594542    0.0133737
21-24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0058970   -0.0368633    0.0250692
21-24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0032821   -0.0340053    0.0274412
21-24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Low                  High              -0.0179511   -0.2768736    0.2409713
21-24 months   PROBIT           BELARUS                        Medium               High               0.0030711   -0.2420709    0.2482131
21-24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low                  High               0.0023478   -0.0254616    0.0301572
21-24 months   PROVIDE          BANGLADESH                     Medium               High               0.0111293   -0.0166052    0.0388639
21-24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0184050   -0.0538786    0.0906886
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0088985   -0.0534969    0.0712938


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0244210   -0.0513623    0.0025203
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.0078031   -0.0409939    0.0253878
0-3 months     COHORTS          INDIA                          High                 NA                -0.0552085   -0.0678900   -0.0425270
0-3 months     EE               PAKISTAN                       High                 NA                -0.0359798   -0.1111876    0.0392280
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0444350   -0.0866446   -0.0022255
0-3 months     IRC              INDIA                          High                 NA                -0.0191019   -0.0476473    0.0094435
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0245478   -0.0289814   -0.0201142
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0121783   -0.0264172    0.0020607
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0360233   -0.0667178   -0.0053287
0-3 months     MAL-ED           BRAZIL                         High                 NA                -0.0432919   -0.0933372    0.0067534
0-3 months     MAL-ED           INDIA                          High                 NA                -0.0098461   -0.0436313    0.0239391
0-3 months     MAL-ED           NEPAL                          High                 NA                -0.0292598   -0.0774591    0.0189395
0-3 months     MAL-ED           PERU                           High                 NA                -0.0090967   -0.0455695    0.0273760
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0391732   -0.0811661    0.0028197
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1513856   -0.2800240   -0.0227473
0-3 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0300560   -0.0588012   -0.0013108
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0165510   -0.0365725    0.0034706
0-3 months     PROBIT           BELARUS                        High                 NA                -0.0094670   -0.0198719    0.0009379
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.0209585   -0.0412639   -0.0006532
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.0431902   -0.0615681   -0.0248122
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0030259   -0.0143379    0.0203896
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0175492   -0.0223449   -0.0127536
3-6 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0054201   -0.0275969    0.0167568
3-6 months     COHORTS          GUATEMALA                      High                 NA                 0.0048593   -0.0167551    0.0264738
3-6 months     COHORTS          INDIA                          High                 NA                -0.0579076   -0.0681717   -0.0476434
3-6 months     EE               PAKISTAN                       High                 NA                -0.0282582   -0.0873302    0.0308138
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.0606208   -0.0997268   -0.0215147
3-6 months     IRC              INDIA                          High                 NA                -0.0314220   -0.0590659   -0.0037780
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0118171   -0.0158581   -0.0077762
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0073841   -0.0185541    0.0037860
3-6 months     MAL-ED           BANGLADESH                     High                 NA                -0.0048241   -0.0286679    0.0190197
3-6 months     MAL-ED           BRAZIL                         High                 NA                 0.0006254   -0.0439841    0.0452350
3-6 months     MAL-ED           INDIA                          High                 NA                 0.0393430    0.0099107    0.0687754
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0618379   -0.1039049   -0.0197709
3-6 months     MAL-ED           PERU                           High                 NA                -0.0107895   -0.0393645    0.0177855
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0082075   -0.0476524    0.0312373
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0693333   -0.0534221    0.1920887
3-6 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0234903   -0.0542313    0.0072507
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0085670   -0.0240816    0.0069476
3-6 months     PROBIT           BELARUS                        High                 NA                 0.0026894   -0.0079302    0.0133091
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0098088   -0.0272608    0.0076432
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0182400   -0.0356823   -0.0007978
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0085977   -0.0243343    0.0071388
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0091583   -0.0134078   -0.0049087
6-9 months     CMC-V-BCS-2002   INDIA                          High                 NA                 0.0071008   -0.0115872    0.0257888
6-9 months     COHORTS          GUATEMALA                      High                 NA                 0.0094581   -0.0099724    0.0288886
6-9 months     COHORTS          INDIA                          High                 NA                -0.0572178   -0.0683885   -0.0460472
6-9 months     EE               PAKISTAN                       High                 NA                -0.0554436   -0.1235252    0.0126380
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0276646   -0.0585589    0.0032296
6-9 months     Guatemala BSC    GUATEMALA                      High                 NA                -0.0049550   -0.0257212    0.0158111
6-9 months     IRC              INDIA                          High                 NA                -0.0080833   -0.0277254    0.0115588
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0054367   -0.0120265    0.0011531
6-9 months     LCNI-5           MALAWI                         High                 NA                -0.0074611   -0.0237176    0.0087953
6-9 months     MAL-ED           BANGLADESH                     High                 NA                 0.0056670   -0.0163863    0.0277204
6-9 months     MAL-ED           BRAZIL                         High                 NA                -0.0350055   -0.0717239    0.0017128
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0056292   -0.0291878    0.0179293
6-9 months     MAL-ED           NEPAL                          High                 NA                -0.0128841   -0.0394452    0.0136769
6-9 months     MAL-ED           PERU                           High                 NA                -0.0142275   -0.0369367    0.0084817
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                 0.0070234   -0.0235499    0.0375966
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0061302   -0.1433111    0.1310507
6-9 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0195564   -0.0399985    0.0008856
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0296927   -0.0455403   -0.0138452
6-9 months     PROBIT           BELARUS                        High                 NA                -0.0045310   -0.0139902    0.0049281
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0161791   -0.0318417   -0.0005165
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0257537   -0.0513371   -0.0001703
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                -0.0074234   -0.0547074    0.0398607
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0223321   -0.0387886   -0.0058757
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0064675   -0.0106510   -0.0022840
9-12 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0106445   -0.0306244    0.0093354
9-12 months    COHORTS          GUATEMALA                      High                 NA                 0.0105011   -0.0056144    0.0266166
9-12 months    COHORTS          INDIA                          High                 NA                -0.0412810   -0.0527751   -0.0297868
9-12 months    EE               PAKISTAN                       High                 NA                -0.0707454   -0.1470478    0.0055569
9-12 months    GMS-Nepal        NEPAL                          High                 NA                 0.0040365   -0.0339919    0.0420650
9-12 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0206671   -0.0443398    0.0030056
9-12 months    IRC              INDIA                          High                 NA                 0.0034256   -0.0171781    0.0240294
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0030399   -0.0086848    0.0026050
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0057825   -0.0255571    0.0139921
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0113056   -0.0325723    0.0099610
9-12 months    MAL-ED           BRAZIL                         High                 NA                 0.0187388   -0.0255367    0.0630144
9-12 months    MAL-ED           INDIA                          High                 NA                 0.0027496   -0.0248037    0.0303029
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0217314   -0.0456138    0.0021510
9-12 months    MAL-ED           PERU                           High                 NA                -0.0045040   -0.0270993    0.0180913
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0199515   -0.0525438    0.0126408
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0989557    0.0015510    0.1963604
9-12 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0238062   -0.0430589   -0.0045534
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0244265   -0.0386565   -0.0101964
9-12 months    PROBIT           BELARUS                        High                 NA                -0.0037471   -0.0132423    0.0057481
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0214532   -0.0342056   -0.0087009
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0234533   -0.0434254   -0.0034811
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0061900   -0.0413446    0.0537245
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0064388   -0.0241036    0.0112260
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0038957   -0.0081494    0.0003580
12-15 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0032471   -0.0200190    0.0135248
12-15 months   COHORTS          GUATEMALA                      High                 NA                -0.0099314   -0.0282121    0.0083493
12-15 months   EE               PAKISTAN                       High                 NA                 0.0028682   -0.1235268    0.1292633
12-15 months   GMS-Nepal        NEPAL                          High                 NA                -0.0173122   -0.0533132    0.0186888
12-15 months   Guatemala BSC    GUATEMALA                      High                 NA                -0.0380845   -0.0680892   -0.0080799
12-15 months   IRC              INDIA                          High                 NA                -0.0052200   -0.0246246    0.0141846
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0033369   -0.0088316    0.0021578
12-15 months   LCNI-5           MALAWI                         High                 NA                -0.0025597   -0.0553758    0.0502563
12-15 months   MAL-ED           BANGLADESH                     High                 NA                -0.0133764   -0.0351722    0.0084195
12-15 months   MAL-ED           BRAZIL                         High                 NA                -0.0332242   -0.0667480    0.0002996
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0280921   -0.0554624   -0.0007218
12-15 months   MAL-ED           NEPAL                          High                 NA                 0.0096268   -0.0162448    0.0354985
12-15 months   MAL-ED           PERU                           High                 NA                -0.0100476   -0.0333100    0.0132149
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0077366   -0.0459284    0.0304552
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0900335   -0.1698771   -0.0101899
12-15 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0036969   -0.0136814    0.0210751
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0097043   -0.0252442    0.0058356
12-15 months   PROBIT           BELARUS                        High                 NA                -0.0430162   -0.1106502    0.0246179
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0043930   -0.0200035    0.0112174
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0035214   -0.0225882    0.0155453
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0193575   -0.0581389    0.0194239
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0040036   -0.0246298    0.0166226
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0007318   -0.0088545    0.0073909
15-18 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0201668   -0.0378257   -0.0025079
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0054920   -0.0275219    0.0165379
15-18 months   EE               PAKISTAN                       High                 NA                -0.0010730   -0.0812799    0.0791339
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0092312   -0.0449919    0.0265295
15-18 months   IRC              INDIA                          High                 NA                -0.0140596   -0.0359963    0.0078771
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0000437   -0.0062917    0.0062044
15-18 months   LCNI-5           MALAWI                         High                 NA                 0.0080872   -0.0424551    0.0586296
15-18 months   MAL-ED           BANGLADESH                     High                 NA                -0.0069669   -0.0292188    0.0152849
15-18 months   MAL-ED           BRAZIL                         High                 NA                -0.0411669   -0.0769527   -0.0053810
15-18 months   MAL-ED           INDIA                          High                 NA                 0.0109619   -0.0168037    0.0387275
15-18 months   MAL-ED           NEPAL                          High                 NA                 0.0160894   -0.0104432    0.0426220
15-18 months   MAL-ED           PERU                           High                 NA                 0.0171520   -0.0108478    0.0451517
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0159824   -0.0336793    0.0656442
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1578022    0.0506239    0.2649805
15-18 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0276421   -0.0496682   -0.0056159
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0285889   -0.0434538   -0.0137239
15-18 months   PROBIT           BELARUS                        High                 NA                 0.0001018   -0.0826139    0.0828175
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0152442   -0.0314142    0.0009258
15-18 months   SAS-CompFeed     INDIA                          High                 NA                 0.0108894   -0.0184772    0.0402560
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0098867   -0.0239298    0.0437032
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0107551   -0.0376524    0.0161422
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0061930   -0.0051769    0.0175629
18-21 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0012006   -0.0198029    0.0174017
18-21 months   COHORTS          GUATEMALA                      High                 NA                -0.0022603   -0.0239498    0.0194291
18-21 months   EE               PAKISTAN                       High                 NA                -0.0984267   -0.1575942   -0.0392593
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0387897    0.0017197    0.0758598
18-21 months   IRC              INDIA                          High                 NA                 0.0107098   -0.0079928    0.0294125
18-21 months   LCNI-5           MALAWI                         High                 NA                 0.0175144   -0.0083439    0.0433728
18-21 months   MAL-ED           BANGLADESH                     High                 NA                -0.0053863   -0.0311242    0.0203517
18-21 months   MAL-ED           BRAZIL                         High                 NA                 0.0067755   -0.0233439    0.0368949
18-21 months   MAL-ED           INDIA                          High                 NA                -0.0279456   -0.0519020   -0.0039893
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0097960   -0.0406765    0.0210845
18-21 months   MAL-ED           PERU                           High                 NA                -0.0245594   -0.0524904    0.0033717
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0453875   -0.0869057   -0.0038694
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1292069   -0.2893916    0.0309779
18-21 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0077723   -0.0174785    0.0330232
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0000807   -0.0137602    0.0139215
18-21 months   PROBIT           BELARUS                        High                 NA                -0.0628792   -0.3336462    0.2078878
18-21 months   PROVIDE          BANGLADESH                     High                 NA                 0.0048143   -0.0109796    0.0206082
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0093673   -0.0282717    0.0095371
21-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0136792   -0.0305010    0.0031425
21-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0128213   -0.0072775    0.0329201
21-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0009341   -0.0632100    0.0613418
21-24 months   IRC              INDIA                          High                 NA                -0.0056612   -0.0258770    0.0145546
21-24 months   LCNI-5           MALAWI                         High                 NA                -0.0266071   -0.0604783    0.0072640
21-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0079279   -0.0291240    0.0132682
21-24 months   MAL-ED           BRAZIL                         High                 NA                 0.0079012   -0.0219187    0.0377211
21-24 months   MAL-ED           INDIA                          High                 NA                -0.0067426   -0.0314414    0.0179561
21-24 months   MAL-ED           NEPAL                          High                 NA                 0.0036403   -0.0391059    0.0463865
21-24 months   MAL-ED           PERU                           High                 NA                 0.0387647    0.0112886    0.0662408
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0345707   -0.0000527    0.0691942
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0235646   -0.2189927    0.1718636
21-24 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0172895   -0.0401305    0.0055515
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0027705   -0.0197492    0.0142082
21-24 months   PROBIT           BELARUS                        High                 NA                -0.0053075   -0.1967017    0.1860867
21-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0046827   -0.0112892    0.0206546
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0079784   -0.0247475    0.0407044
