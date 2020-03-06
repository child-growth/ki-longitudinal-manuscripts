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
0-3 months     CMC-V-BCS-2002   INDIA                          High            50      88
0-3 months     CMC-V-BCS-2002   INDIA                          Low             14      88
0-3 months     CMC-V-BCS-2002   INDIA                          Medium          24      88
0-3 months     COHORTS          GUATEMALA                      High           152     723
0-3 months     COHORTS          GUATEMALA                      Low            343     723
0-3 months     COHORTS          GUATEMALA                      Medium         228     723
0-3 months     COHORTS          INDIA                          High           659    5090
0-3 months     COHORTS          INDIA                          Low           1719    5090
0-3 months     COHORTS          INDIA                          Medium        2712    5090
0-3 months     EE               PAKISTAN                       High            11     300
0-3 months     EE               PAKISTAN                       Low            266     300
0-3 months     EE               PAKISTAN                       Medium          23     300
0-3 months     GMS-Nepal        NEPAL                          High            62     506
0-3 months     GMS-Nepal        NEPAL                          Low            363     506
0-3 months     GMS-Nepal        NEPAL                          Medium          81     506
0-3 months     IRC              INDIA                          High           108     377
0-3 months     IRC              INDIA                          Low            138     377
0-3 months     IRC              INDIA                          Medium         131     377
0-3 months     MAL-ED           BANGLADESH                     High            75     200
0-3 months     MAL-ED           BANGLADESH                     Low             66     200
0-3 months     MAL-ED           BANGLADESH                     Medium          59     200
0-3 months     MAL-ED           BRAZIL                         High            57     167
0-3 months     MAL-ED           BRAZIL                         Low             43     167
0-3 months     MAL-ED           BRAZIL                         Medium          67     167
0-3 months     MAL-ED           INDIA                          High            43     159
0-3 months     MAL-ED           INDIA                          Low             55     159
0-3 months     MAL-ED           INDIA                          Medium          61     159
0-3 months     MAL-ED           NEPAL                          High            32     144
0-3 months     MAL-ED           NEPAL                          Low             65     144
0-3 months     MAL-ED           NEPAL                          Medium          47     144
0-3 months     MAL-ED           PERU                           High            78     264
0-3 months     MAL-ED           PERU                           Low             93     264
0-3 months     MAL-ED           PERU                           Medium          93     264
0-3 months     MAL-ED           SOUTH AFRICA                   High            57     211
0-3 months     MAL-ED           SOUTH AFRICA                   Low            106     211
0-3 months     MAL-ED           SOUTH AFRICA                   Medium          48     211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             8     189
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             58     189
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         123     189
0-3 months     NIH-Birth        BANGLADESH                     High           163     566
0-3 months     NIH-Birth        BANGLADESH                     Low            206     566
0-3 months     NIH-Birth        BANGLADESH                     Medium         197     566
0-3 months     NIH-Crypto       BANGLADESH                     High           242     721
0-3 months     NIH-Crypto       BANGLADESH                     Low            229     721
0-3 months     NIH-Crypto       BANGLADESH                     Medium         250     721
0-3 months     PROBIT           BELARUS                        High          2575   15323
0-3 months     PROBIT           BELARUS                        Low           5485   15323
0-3 months     PROBIT           BELARUS                        Medium        7263   15323
0-3 months     PROVIDE          BANGLADESH                     High           218     640
0-3 months     PROVIDE          BANGLADESH                     Low            196     640
0-3 months     PROVIDE          BANGLADESH                     Medium         226     640
0-3 months     SAS-CompFeed     INDIA                          High           278    1261
0-3 months     SAS-CompFeed     INDIA                          Low            568    1261
0-3 months     SAS-CompFeed     INDIA                          Medium         415    1261
0-3 months     ZVITAMBO         ZIMBABWE                       High          4249    7968
0-3 months     ZVITAMBO         ZIMBABWE                       Low           1708    7968
0-3 months     ZVITAMBO         ZIMBABWE                       Medium        2011    7968
3-6 months     CMC-V-BCS-2002   INDIA                          High           132     307
3-6 months     CMC-V-BCS-2002   INDIA                          Low             85     307
3-6 months     CMC-V-BCS-2002   INDIA                          Medium          90     307
3-6 months     COHORTS          GUATEMALA                      High           161     798
3-6 months     COHORTS          GUATEMALA                      Low            378     798
3-6 months     COHORTS          GUATEMALA                      Medium         259     798
3-6 months     COHORTS          INDIA                          High           685    5145
3-6 months     COHORTS          INDIA                          Low           1711    5145
3-6 months     COHORTS          INDIA                          Medium        2749    5145
3-6 months     EE               PAKISTAN                       High            11     278
3-6 months     EE               PAKISTAN                       Low            245     278
3-6 months     EE               PAKISTAN                       Medium          22     278
3-6 months     GMS-Nepal        NEPAL                          High            57     466
3-6 months     GMS-Nepal        NEPAL                          Low            335     466
3-6 months     GMS-Nepal        NEPAL                          Medium          74     466
3-6 months     IRC              INDIA                          High           118     397
3-6 months     IRC              INDIA                          Low            142     397
3-6 months     IRC              INDIA                          Medium         137     397
3-6 months     MAL-ED           BANGLADESH                     High            73     189
3-6 months     MAL-ED           BANGLADESH                     Low             61     189
3-6 months     MAL-ED           BANGLADESH                     Medium          55     189
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
3-6 months     NIH-Birth        BANGLADESH                     High           147     523
3-6 months     NIH-Birth        BANGLADESH                     Low            193     523
3-6 months     NIH-Birth        BANGLADESH                     Medium         183     523
3-6 months     NIH-Crypto       BANGLADESH                     High           233     695
3-6 months     NIH-Crypto       BANGLADESH                     Low            220     695
3-6 months     NIH-Crypto       BANGLADESH                     Medium         242     695
3-6 months     PROBIT           BELARUS                        High          2238   13308
3-6 months     PROBIT           BELARUS                        Low           4767   13308
3-6 months     PROBIT           BELARUS                        Medium        6303   13308
3-6 months     PROVIDE          BANGLADESH                     High           207     598
3-6 months     PROVIDE          BANGLADESH                     Low            185     598
3-6 months     PROVIDE          BANGLADESH                     Medium         206     598
3-6 months     SAS-CompFeed     INDIA                          High           250    1124
3-6 months     SAS-CompFeed     INDIA                          Low            515    1124
3-6 months     SAS-CompFeed     INDIA                          Medium         359    1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           407    1657
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             57    1657
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1193    1657
3-6 months     ZVITAMBO         ZIMBABWE                       High          3298    6166
3-6 months     ZVITAMBO         ZIMBABWE                       Low           1287    6166
3-6 months     ZVITAMBO         ZIMBABWE                       Medium        1581    6166
6-9 months     CMC-V-BCS-2002   INDIA                          High           133     313
6-9 months     CMC-V-BCS-2002   INDIA                          Low             91     313
6-9 months     CMC-V-BCS-2002   INDIA                          Medium          89     313
6-9 months     COHORTS          GUATEMALA                      High           158     819
6-9 months     COHORTS          GUATEMALA                      Low            378     819
6-9 months     COHORTS          GUATEMALA                      Medium         283     819
6-9 months     COHORTS          INDIA                          High           636    4728
6-9 months     COHORTS          INDIA                          Low           1551    4728
6-9 months     COHORTS          INDIA                          Medium        2541    4728
6-9 months     EE               PAKISTAN                       High            12     302
6-9 months     EE               PAKISTAN                       Low            261     302
6-9 months     EE               PAKISTAN                       Medium          29     302
6-9 months     GMS-Nepal        NEPAL                          High            55     479
6-9 months     GMS-Nepal        NEPAL                          Low            344     479
6-9 months     GMS-Nepal        NEPAL                          Medium          80     479
6-9 months     Guatemala BSC    GUATEMALA                      High            89     211
6-9 months     Guatemala BSC    GUATEMALA                      Low             58     211
6-9 months     Guatemala BSC    GUATEMALA                      Medium          64     211
6-9 months     IRC              INDIA                          High           123     407
6-9 months     IRC              INDIA                          Low            146     407
6-9 months     IRC              INDIA                          Medium         138     407
6-9 months     LCNI-5           MALAWI                         High           217     557
6-9 months     LCNI-5           MALAWI                         Low            175     557
6-9 months     LCNI-5           MALAWI                         Medium         165     557
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
6-9 months     NIH-Crypto       BANGLADESH                     High           234     688
6-9 months     NIH-Crypto       BANGLADESH                     Low            218     688
6-9 months     NIH-Crypto       BANGLADESH                     Medium         236     688
6-9 months     PROBIT           BELARUS                        High          2078   12426
6-9 months     PROBIT           BELARUS                        Low           4465   12426
6-9 months     PROBIT           BELARUS                        Medium        5883   12426
6-9 months     PROVIDE          BANGLADESH                     High           195     565
6-9 months     PROVIDE          BANGLADESH                     Low            175     565
6-9 months     PROVIDE          BANGLADESH                     Medium         195     565
6-9 months     SAS-CompFeed     INDIA                          High           240    1144
6-9 months     SAS-CompFeed     INDIA                          Low            524    1144
6-9 months     SAS-CompFeed     INDIA                          Medium         380    1144
6-9 months     SAS-FoodSuppl    INDIA                          High            29     314
6-9 months     SAS-FoodSuppl    INDIA                          Low            252     314
6-9 months     SAS-FoodSuppl    INDIA                          Medium          33     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           363    1481
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             43    1481
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1075    1481
6-9 months     ZVITAMBO         ZIMBABWE                       High          3226    5917
6-9 months     ZVITAMBO         ZIMBABWE                       Low           1203    5917
6-9 months     ZVITAMBO         ZIMBABWE                       Medium        1488    5917
9-12 months    CMC-V-BCS-2002   INDIA                          High           133     317
9-12 months    CMC-V-BCS-2002   INDIA                          Low             93     317
9-12 months    CMC-V-BCS-2002   INDIA                          Medium          91     317
9-12 months    COHORTS          GUATEMALA                      High           189     925
9-12 months    COHORTS          GUATEMALA                      Low            423     925
9-12 months    COHORTS          GUATEMALA                      Medium         313     925
9-12 months    COHORTS          INDIA                          High           561    4077
9-12 months    COHORTS          INDIA                          Low           1289    4077
9-12 months    COHORTS          INDIA                          Medium        2227    4077
9-12 months    EE               PAKISTAN                       High            13     323
9-12 months    EE               PAKISTAN                       Low            278     323
9-12 months    EE               PAKISTAN                       Medium          32     323
9-12 months    GMS-Nepal        NEPAL                          High            51     467
9-12 months    GMS-Nepal        NEPAL                          Low            338     467
9-12 months    GMS-Nepal        NEPAL                          Medium          78     467
9-12 months    Guatemala BSC    GUATEMALA                      High            80     185
9-12 months    Guatemala BSC    GUATEMALA                      Low             51     185
9-12 months    Guatemala BSC    GUATEMALA                      Medium          54     185
9-12 months    IRC              INDIA                          High           120     400
9-12 months    IRC              INDIA                          Low            144     400
9-12 months    IRC              INDIA                          Medium         136     400
9-12 months    LCNI-5           MALAWI                         High           144     382
9-12 months    LCNI-5           MALAWI                         Low            123     382
9-12 months    LCNI-5           MALAWI                         Medium         115     382
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
9-12 months    NIH-Birth        BANGLADESH                     High           140     482
9-12 months    NIH-Birth        BANGLADESH                     Low            176     482
9-12 months    NIH-Birth        BANGLADESH                     Medium         166     482
9-12 months    NIH-Crypto       BANGLADESH                     High           232     674
9-12 months    NIH-Crypto       BANGLADESH                     Low            212     674
9-12 months    NIH-Crypto       BANGLADESH                     Medium         230     674
9-12 months    PROBIT           BELARUS                        High          2109   12681
9-12 months    PROBIT           BELARUS                        Low           4541   12681
9-12 months    PROBIT           BELARUS                        Medium        6031   12681
9-12 months    PROVIDE          BANGLADESH                     High           194     566
9-12 months    PROVIDE          BANGLADESH                     Low            170     566
9-12 months    PROVIDE          BANGLADESH                     Medium         202     566
9-12 months    SAS-CompFeed     INDIA                          High           239    1146
9-12 months    SAS-CompFeed     INDIA                          Low            510    1146
9-12 months    SAS-CompFeed     INDIA                          Medium         397    1146
9-12 months    SAS-FoodSuppl    INDIA                          High            29     311
9-12 months    SAS-FoodSuppl    INDIA                          Low            247     311
9-12 months    SAS-FoodSuppl    INDIA                          Medium          35     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           269    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             35    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         772    1076
9-12 months    ZVITAMBO         ZIMBABWE                       High          3223    5921
9-12 months    ZVITAMBO         ZIMBABWE                       Low           1218    5921
9-12 months    ZVITAMBO         ZIMBABWE                       Medium        1480    5921
12-15 months   CMC-V-BCS-2002   INDIA                          High           134     329
12-15 months   CMC-V-BCS-2002   INDIA                          Low             94     329
12-15 months   CMC-V-BCS-2002   INDIA                          Medium         101     329
12-15 months   COHORTS          GUATEMALA                      High           179     875
12-15 months   COHORTS          GUATEMALA                      Low            409     875
12-15 months   COHORTS          GUATEMALA                      Medium         287     875
12-15 months   EE               PAKISTAN                       High            12     294
12-15 months   EE               PAKISTAN                       Low            256     294
12-15 months   EE               PAKISTAN                       Medium          26     294
12-15 months   GMS-Nepal        NEPAL                          High            48     466
12-15 months   GMS-Nepal        NEPAL                          Low            339     466
12-15 months   GMS-Nepal        NEPAL                          Medium          79     466
12-15 months   Guatemala BSC    GUATEMALA                      High            42      96
12-15 months   Guatemala BSC    GUATEMALA                      Low             27      96
12-15 months   Guatemala BSC    GUATEMALA                      Medium          27      96
12-15 months   IRC              INDIA                          High           116     390
12-15 months   IRC              INDIA                          Low            142     390
12-15 months   IRC              INDIA                          Medium         132     390
12-15 months   LCNI-5           MALAWI                         High            44     126
12-15 months   LCNI-5           MALAWI                         Low             43     126
12-15 months   LCNI-5           MALAWI                         Medium          39     126
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
12-15 months   NIH-Crypto       BANGLADESH                     High           226     660
12-15 months   NIH-Crypto       BANGLADESH                     Low            208     660
12-15 months   NIH-Crypto       BANGLADESH                     Medium         226     660
12-15 months   PROBIT           BELARUS                        High           159    1001
12-15 months   PROBIT           BELARUS                        Low            353    1001
12-15 months   PROBIT           BELARUS                        Medium         489    1001
12-15 months   PROVIDE          BANGLADESH                     High           186     532
12-15 months   PROVIDE          BANGLADESH                     Low            158     532
12-15 months   PROVIDE          BANGLADESH                     Medium         188     532
12-15 months   SAS-CompFeed     INDIA                          High           248    1168
12-15 months   SAS-CompFeed     INDIA                          Low            516    1168
12-15 months   SAS-CompFeed     INDIA                          Medium         404    1168
12-15 months   SAS-FoodSuppl    INDIA                          High            33     303
12-15 months   SAS-FoodSuppl    INDIA                          Low            236     303
12-15 months   SAS-FoodSuppl    INDIA                          Medium          34     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           188     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             29     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         569     786
12-15 months   ZVITAMBO         ZIMBABWE                       High          1315    2545
12-15 months   ZVITAMBO         ZIMBABWE                       Low            557    2545
12-15 months   ZVITAMBO         ZIMBABWE                       Medium         673    2545
15-18 months   CMC-V-BCS-2002   INDIA                          High           131     321
15-18 months   CMC-V-BCS-2002   INDIA                          Low             92     321
15-18 months   CMC-V-BCS-2002   INDIA                          Medium          98     321
15-18 months   COHORTS          GUATEMALA                      High           152     783
15-18 months   COHORTS          GUATEMALA                      Low            369     783
15-18 months   COHORTS          GUATEMALA                      Medium         262     783
15-18 months   EE               PAKISTAN                       High            10     276
15-18 months   EE               PAKISTAN                       Low            242     276
15-18 months   EE               PAKISTAN                       Medium          24     276
15-18 months   GMS-Nepal        NEPAL                          High            55     477
15-18 months   GMS-Nepal        NEPAL                          Low            342     477
15-18 months   GMS-Nepal        NEPAL                          Medium          80     477
15-18 months   IRC              INDIA                          High           116     382
15-18 months   IRC              INDIA                          Low            136     382
15-18 months   IRC              INDIA                          Medium         130     382
15-18 months   LCNI-5           MALAWI                         High            38     119
15-18 months   LCNI-5           MALAWI                         Low             43     119
15-18 months   LCNI-5           MALAWI                         Medium          38     119
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
15-18 months   MAL-ED           PERU                           High            66     212
15-18 months   MAL-ED           PERU                           Low             73     212
15-18 months   MAL-ED           PERU                           Medium          73     212
15-18 months   MAL-ED           SOUTH AFRICA                   High            63     225
15-18 months   MAL-ED           SOUTH AFRICA                   Low            114     225
15-18 months   MAL-ED           SOUTH AFRICA                   Medium          48     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     178
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     178
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         116     178
15-18 months   NIH-Birth        BANGLADESH                     High           133     449
15-18 months   NIH-Birth        BANGLADESH                     Low            163     449
15-18 months   NIH-Birth        BANGLADESH                     Medium         153     449
15-18 months   NIH-Crypto       BANGLADESH                     High           211     604
15-18 months   NIH-Crypto       BANGLADESH                     Low            184     604
15-18 months   NIH-Crypto       BANGLADESH                     Medium         209     604
15-18 months   PROBIT           BELARUS                        High            60     275
15-18 months   PROBIT           BELARUS                        Low             94     275
15-18 months   PROBIT           BELARUS                        Medium         121     275
15-18 months   PROVIDE          BANGLADESH                     High           185     528
15-18 months   PROVIDE          BANGLADESH                     Low            158     528
15-18 months   PROVIDE          BANGLADESH                     Medium         185     528
15-18 months   SAS-CompFeed     INDIA                          High           252    1171
15-18 months   SAS-CompFeed     INDIA                          Low            521    1171
15-18 months   SAS-CompFeed     INDIA                          Medium         398    1171
15-18 months   SAS-FoodSuppl    INDIA                          High            29     291
15-18 months   SAS-FoodSuppl    INDIA                          Low            227     291
15-18 months   SAS-FoodSuppl    INDIA                          Medium          35     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           152     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             19     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         491     662
15-18 months   ZVITAMBO         ZIMBABWE                       High          1055    2034
15-18 months   ZVITAMBO         ZIMBABWE                       Low            475    2034
15-18 months   ZVITAMBO         ZIMBABWE                       Medium         504    2034
18-21 months   CMC-V-BCS-2002   INDIA                          High           130     305
18-21 months   CMC-V-BCS-2002   INDIA                          Low             85     305
18-21 months   CMC-V-BCS-2002   INDIA                          Medium          90     305
18-21 months   COHORTS          GUATEMALA                      High           148     774
18-21 months   COHORTS          GUATEMALA                      Low            365     774
18-21 months   COHORTS          GUATEMALA                      Medium         261     774
18-21 months   EE               PAKISTAN                       High             9     252
18-21 months   EE               PAKISTAN                       Low            219     252
18-21 months   EE               PAKISTAN                       Medium          24     252
18-21 months   GMS-Nepal        NEPAL                          High            52     442
18-21 months   GMS-Nepal        NEPAL                          Low            310     442
18-21 months   GMS-Nepal        NEPAL                          Medium          80     442
18-21 months   IRC              INDIA                          High           118     379
18-21 months   IRC              INDIA                          Low            134     379
18-21 months   IRC              INDIA                          Medium         127     379
18-21 months   LCNI-5           MALAWI                         High           180     472
18-21 months   LCNI-5           MALAWI                         Low            150     472
18-21 months   LCNI-5           MALAWI                         Medium         142     472
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     167
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             51     167
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         109     167
18-21 months   NIH-Birth        BANGLADESH                     High           125     422
18-21 months   NIH-Birth        BANGLADESH                     Low            158     422
18-21 months   NIH-Birth        BANGLADESH                     Medium         139     422
18-21 months   NIH-Crypto       BANGLADESH                     High           199     546
18-21 months   NIH-Crypto       BANGLADESH                     Low            159     546
18-21 months   NIH-Crypto       BANGLADESH                     Medium         188     546
18-21 months   PROBIT           BELARUS                        High            37     218
18-21 months   PROBIT           BELARUS                        Low             73     218
18-21 months   PROBIT           BELARUS                        Medium         108     218
18-21 months   PROVIDE          BANGLADESH                     High           181     541
18-21 months   PROVIDE          BANGLADESH                     Low            164     541
18-21 months   PROVIDE          BANGLADESH                     Medium         196     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             3       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       9
18-21 months   ZVITAMBO         ZIMBABWE                       High           818    1594
18-21 months   ZVITAMBO         ZIMBABWE                       Low            366    1594
18-21 months   ZVITAMBO         ZIMBABWE                       Medium         410    1594
21-24 months   CMC-V-BCS-2002   INDIA                          High           131     308
21-24 months   CMC-V-BCS-2002   INDIA                          Low             84     308
21-24 months   CMC-V-BCS-2002   INDIA                          Medium          93     308
21-24 months   COHORTS          GUATEMALA                      High           169     855
21-24 months   COHORTS          GUATEMALA                      Low            400     855
21-24 months   COHORTS          GUATEMALA                      Medium         286     855
21-24 months   EE               PAKISTAN                       High             3     105
21-24 months   EE               PAKISTAN                       Low             88     105
21-24 months   EE               PAKISTAN                       Medium          14     105
21-24 months   GMS-Nepal        NEPAL                          High            37     340
21-24 months   GMS-Nepal        NEPAL                          Low            240     340
21-24 months   GMS-Nepal        NEPAL                          Medium          63     340
21-24 months   IRC              INDIA                          High           119     389
21-24 months   IRC              INDIA                          Low            139     389
21-24 months   IRC              INDIA                          Medium         131     389
21-24 months   LCNI-5           MALAWI                         High           165     403
21-24 months   LCNI-5           MALAWI                         Low            123     403
21-24 months   LCNI-5           MALAWI                         Medium         115     403
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             7     166
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             52     166
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium         107     166
21-24 months   NIH-Birth        BANGLADESH                     High           123     411
21-24 months   NIH-Birth        BANGLADESH                     Low            150     411
21-24 months   NIH-Birth        BANGLADESH                     Medium         138     411
21-24 months   NIH-Crypto       BANGLADESH                     High           183     490
21-24 months   NIH-Crypto       BANGLADESH                     Low            137     490
21-24 months   NIH-Crypto       BANGLADESH                     Medium         170     490
21-24 months   PROBIT           BELARUS                        High            38     209
21-24 months   PROBIT           BELARUS                        Low             78     209
21-24 months   PROBIT           BELARUS                        Medium          93     209
21-24 months   PROVIDE          BANGLADESH                     High           155     471
21-24 months   PROVIDE          BANGLADESH                     Low            147     471
21-24 months   PROVIDE          BANGLADESH                     Medium         169     471
21-24 months   ZVITAMBO         ZIMBABWE                       High           610    1168
21-24 months   ZVITAMBO         ZIMBABWE                       Low            252    1168
21-24 months   ZVITAMBO         ZIMBABWE                       Medium         306    1168


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
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
* agecat: 12-15 months, studyid: IRC, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/f581dc1e-591b-4ddf-ad4f-636f5ed07f4c/dc83d400-c311-47a3-a47f-506181eb948c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f581dc1e-591b-4ddf-ad4f-636f5ed07f4c/dc83d400-c311-47a3-a47f-506181eb948c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f581dc1e-591b-4ddf-ad4f-636f5ed07f4c/dc83d400-c311-47a3-a47f-506181eb948c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0454427   -0.1731509    0.0822655
0-3 months     CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0095967   -0.2427231    0.2235296
0-3 months     CMC-V-BCS-2002   INDIA                          Medium               NA                -0.2218044   -0.4616903    0.0180815
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.5286884   -0.5703307   -0.4870460
0-3 months     COHORTS          GUATEMALA                      Low                  NA                -0.5331463   -0.5662458   -0.5000468
0-3 months     COHORTS          GUATEMALA                      Medium               NA                -0.5385554   -0.5769528   -0.5001579
0-3 months     COHORTS          INDIA                          High                 NA                -0.0098601   -0.0300320    0.0103118
0-3 months     COHORTS          INDIA                          Low                  NA                -0.1043154   -0.1178722   -0.0907586
0-3 months     COHORTS          INDIA                          Medium               NA                -0.0558266   -0.0665056   -0.0451475
0-3 months     EE               PAKISTAN                       High                 NA                -0.1409017   -0.3369913    0.0551879
0-3 months     EE               PAKISTAN                       Low                  NA                -0.2244078   -0.2704809   -0.1783347
0-3 months     EE               PAKISTAN                       Medium               NA                -0.1630964   -0.3065684   -0.0196245
0-3 months     GMS-Nepal        NEPAL                          High                 NA                 0.0038251   -0.0692390    0.0768891
0-3 months     GMS-Nepal        NEPAL                          Low                  NA                -0.0476519   -0.0775677   -0.0177361
0-3 months     GMS-Nepal        NEPAL                          Medium               NA                 0.0124044   -0.0485426    0.0733514
0-3 months     IRC              INDIA                          High                 NA                -0.1762900   -0.2746762   -0.0779037
0-3 months     IRC              INDIA                          Low                  NA                -0.2352604   -0.3195200   -0.1510008
0-3 months     IRC              INDIA                          Medium               NA                -0.3430655   -0.4455201   -0.2406108
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.1139926   -0.1680491   -0.0599361
0-3 months     MAL-ED           BANGLADESH                     Low                  NA                -0.1266135   -0.1937071   -0.0595200
0-3 months     MAL-ED           BANGLADESH                     Medium               NA                -0.1169178   -0.1800641   -0.0537715
0-3 months     MAL-ED           BRAZIL                         High                 NA                 0.1760245    0.0877885    0.2642605
0-3 months     MAL-ED           BRAZIL                         Low                  NA                 0.1490442    0.0228571    0.2752312
0-3 months     MAL-ED           BRAZIL                         Medium               NA                 0.0945449    0.0048763    0.1842136
0-3 months     MAL-ED           INDIA                          High                 NA                 0.0268459   -0.0947169    0.1484086
0-3 months     MAL-ED           INDIA                          Low                  NA                -0.1367715   -0.2132920   -0.0602509
0-3 months     MAL-ED           INDIA                          Medium               NA                -0.0232432   -0.1149395    0.0684531
0-3 months     MAL-ED           NEPAL                          High                 NA                 0.1511493    0.0569577    0.2453409
0-3 months     MAL-ED           NEPAL                          Low                  NA                 0.0660996   -0.0051777    0.1373768
0-3 months     MAL-ED           NEPAL                          Medium               NA                 0.0046271   -0.0704149    0.0796692
0-3 months     MAL-ED           PERU                           High                 NA                -0.2033039   -0.2658162   -0.1407916
0-3 months     MAL-ED           PERU                           Low                  NA                -0.2742081   -0.3235688   -0.2248475
0-3 months     MAL-ED           PERU                           Medium               NA                -0.2980066   -0.3614934   -0.2345197
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.1171795   -0.2034313   -0.0309278
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.2106426   -0.2832327   -0.1380524
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               NA                -0.1816976   -0.2804900   -0.0829051
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0147930   -0.1863488    0.1567627
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1827932   -0.2678345   -0.0977518
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1278219   -0.1816819   -0.0739620
0-3 months     NIH-Birth        BANGLADESH                     High                 NA                -0.2194197   -0.2712868   -0.1675526
0-3 months     NIH-Birth        BANGLADESH                     Low                  NA                -0.2334366   -0.2734258   -0.1934474
0-3 months     NIH-Birth        BANGLADESH                     Medium               NA                -0.2408680   -0.2882786   -0.1934574
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.2348226   -0.2642862   -0.2053589
0-3 months     NIH-Crypto       BANGLADESH                     Low                  NA                -0.2223787   -0.2540503   -0.1907070
0-3 months     NIH-Crypto       BANGLADESH                     Medium               NA                -0.2359489   -0.2653608   -0.2065369
0-3 months     PROBIT           BELARUS                        High                 NA                -0.4069400   -0.4605674   -0.3533125
0-3 months     PROBIT           BELARUS                        Low                  NA                -0.4416376   -0.5094119   -0.3738633
0-3 months     PROBIT           BELARUS                        Medium               NA                -0.4257507   -0.4840378   -0.3674636
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.1742239   -0.2035255   -0.1449223
0-3 months     PROVIDE          BANGLADESH                     Low                  NA                -0.2012762   -0.2324584   -0.1700939
0-3 months     PROVIDE          BANGLADESH                     Medium               NA                -0.1898885   -0.2196203   -0.1601567
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.1171981   -0.1846018   -0.0497944
0-3 months     SAS-CompFeed     INDIA                          Low                  NA                -0.1383774   -0.1695036   -0.1072513
0-3 months     SAS-CompFeed     INDIA                          Medium               NA                -0.1190777   -0.1623621   -0.0757933
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.1368623   -0.1509954   -0.1227293
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1346013   -0.1565997   -0.1126029
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1531689   -0.1732751   -0.1330626
3-6 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0736194   -0.1451630   -0.0020759
3-6 months     CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1636585   -0.2386602   -0.0886568
3-6 months     CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0716160   -0.1722686    0.0290365
3-6 months     COHORTS          GUATEMALA                      High                 NA                -0.1138980   -0.1443542   -0.0834419
3-6 months     COHORTS          GUATEMALA                      Low                  NA                -0.0939085   -0.1144483   -0.0733688
3-6 months     COHORTS          GUATEMALA                      Medium               NA                -0.0883689   -0.1160951   -0.0606428
3-6 months     COHORTS          INDIA                          High                 NA                -0.0306049   -0.0472327   -0.0139772
3-6 months     COHORTS          INDIA                          Low                  NA                -0.0876665   -0.0984591   -0.0768738
3-6 months     COHORTS          INDIA                          Medium               NA                -0.0508324   -0.0592467   -0.0424181
3-6 months     EE               PAKISTAN                       High                 NA                 0.1246397    0.0141710    0.2351084
3-6 months     EE               PAKISTAN                       Low                  NA                 0.0562264    0.0264222    0.0860305
3-6 months     EE               PAKISTAN                       Medium               NA                 0.1361446    0.0583510    0.2139382
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.1383889   -0.1867822   -0.0899956
3-6 months     GMS-Nepal        NEPAL                          Low                  NA                -0.1627108   -0.1852455   -0.1401761
3-6 months     GMS-Nepal        NEPAL                          Medium               NA                -0.1677918   -0.2129441   -0.1226395
3-6 months     IRC              INDIA                          High                 NA                -0.0950811   -0.1501143   -0.0400480
3-6 months     IRC              INDIA                          Low                  NA                -0.0576916   -0.1056665   -0.0097167
3-6 months     IRC              INDIA                          Medium               NA                -0.0086808   -0.0614674    0.0441058
3-6 months     MAL-ED           BANGLADESH                     High                 NA                 0.0011024   -0.0401817    0.0423866
3-6 months     MAL-ED           BANGLADESH                     Low                  NA                 0.0064690   -0.0407589    0.0536969
3-6 months     MAL-ED           BANGLADESH                     Medium               NA                -0.0666202   -0.1095084   -0.0237320
3-6 months     MAL-ED           BRAZIL                         High                 NA                 0.0326768   -0.0317480    0.0971017
3-6 months     MAL-ED           BRAZIL                         Low                  NA                 0.0755247    0.0052183    0.1458310
3-6 months     MAL-ED           BRAZIL                         Medium               NA                 0.0705822    0.0134106    0.1277537
3-6 months     MAL-ED           INDIA                          High                 NA                -0.0879844   -0.1390250   -0.0369438
3-6 months     MAL-ED           INDIA                          Low                  NA                -0.0090487   -0.0528100    0.0347126
3-6 months     MAL-ED           INDIA                          Medium               NA                -0.0277782   -0.0877413    0.0321849
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0212605   -0.0775828    0.0350618
3-6 months     MAL-ED           NEPAL                          Low                  NA                -0.0365722   -0.0746692    0.0015249
3-6 months     MAL-ED           NEPAL                          Medium               NA                -0.0070718   -0.0592071    0.0450636
3-6 months     MAL-ED           PERU                           High                 NA                -0.0058065   -0.0647440    0.0531311
3-6 months     MAL-ED           PERU                           Low                  NA                 0.0158985   -0.0311367    0.0629337
3-6 months     MAL-ED           PERU                           Medium               NA                 0.0588020    0.0030828    0.1145213
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                 0.0005450   -0.0704963    0.0715863
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0276129   -0.0834783    0.0282526
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               NA                 0.0382830   -0.0350885    0.1116545
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2687726   -0.4324097   -0.1051356
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0236090   -0.0938127    0.0465947
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0711399   -0.1119357   -0.0303442
3-6 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0089555   -0.0486157    0.0307048
3-6 months     NIH-Birth        BANGLADESH                     Low                  NA                -0.0774103   -0.1137799   -0.0410406
3-6 months     NIH-Birth        BANGLADESH                     Medium               NA                -0.0566362   -0.0948493   -0.0184232
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0415871    0.0137173    0.0694570
3-6 months     NIH-Crypto       BANGLADESH                     Low                  NA                 0.0243875   -0.0043831    0.0531580
3-6 months     NIH-Crypto       BANGLADESH                     Medium               NA                 0.0146814   -0.0156801    0.0450429
3-6 months     PROBIT           BELARUS                        High                 NA                 0.0523061    0.0260975    0.0785146
3-6 months     PROBIT           BELARUS                        Low                  NA                 0.0404505    0.0193157    0.0615853
3-6 months     PROBIT           BELARUS                        Medium               NA                 0.0561485    0.0357978    0.0764992
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0239839   -0.0515277    0.0035599
3-6 months     PROVIDE          BANGLADESH                     Low                  NA                -0.0321412   -0.0594309   -0.0048515
3-6 months     PROVIDE          BANGLADESH                     Medium               NA                -0.0253047   -0.0529298    0.0023204
3-6 months     SAS-CompFeed     INDIA                          High                 NA                 0.0188685   -0.0046897    0.0424267
3-6 months     SAS-CompFeed     INDIA                          Low                  NA                -0.0227572   -0.0478439    0.0023295
3-6 months     SAS-CompFeed     INDIA                          Medium               NA                -0.0325759   -0.0594155   -0.0057362
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0879821   -0.1218982   -0.0540660
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0444273   -0.1297107    0.0408560
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0867791   -0.1062915   -0.0672668
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                 0.0073390   -0.0051525    0.0198304
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0065694   -0.0268735    0.0137348
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0147559   -0.0331350    0.0036231
6-9 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0935008   -0.1495550   -0.0374467
6-9 months     CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0421722   -0.0985481    0.0142038
6-9 months     CMC-V-BCS-2002   INDIA                          Medium               NA                -0.1054152   -0.1688672   -0.0419632
6-9 months     COHORTS          GUATEMALA                      High                 NA                -0.1506740   -0.1780808   -0.1232672
6-9 months     COHORTS          GUATEMALA                      Low                  NA                -0.1192473   -0.1372929   -0.1012017
6-9 months     COHORTS          GUATEMALA                      Medium               NA                -0.1069303   -0.1260181   -0.0878426
6-9 months     COHORTS          INDIA                          High                 NA                -0.0820172   -0.0968980   -0.0671365
6-9 months     COHORTS          INDIA                          Low                  NA                -0.1180023   -0.1274203   -0.1085844
6-9 months     COHORTS          INDIA                          Medium               NA                -0.0927453   -0.1001580   -0.0853326
6-9 months     EE               PAKISTAN                       High                 NA                -0.0499606   -0.1427787    0.0428575
6-9 months     EE               PAKISTAN                       Low                  NA                -0.0865835   -0.1096232   -0.0635438
6-9 months     EE               PAKISTAN                       Medium               NA                -0.0769311   -0.1246346   -0.0292276
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0552524   -0.0913835   -0.0191213
6-9 months     GMS-Nepal        NEPAL                          Low                  NA                -0.0381156   -0.0606854   -0.0155458
6-9 months     GMS-Nepal        NEPAL                          Medium               NA                -0.0609382   -0.0925001   -0.0293764
6-9 months     Guatemala BSC    GUATEMALA                      High                 NA                -0.0953612   -0.1244824   -0.0662401
6-9 months     Guatemala BSC    GUATEMALA                      Low                  NA                -0.0969120   -0.1334235   -0.0604004
6-9 months     Guatemala BSC    GUATEMALA                      Medium               NA                -0.0906586   -0.1286364   -0.0526808
6-9 months     IRC              INDIA                          High                 NA                 0.0124788   -0.0290057    0.0539633
6-9 months     IRC              INDIA                          Low                  NA                -0.0474423   -0.0843237   -0.0105609
6-9 months     IRC              INDIA                          Medium               NA                -0.0089077   -0.0423000    0.0244845
6-9 months     LCNI-5           MALAWI                         High                 NA                 0.0283033    0.0022919    0.0543147
6-9 months     LCNI-5           MALAWI                         Low                  NA                 0.0292258   -0.0010793    0.0595308
6-9 months     LCNI-5           MALAWI                         Medium               NA                 0.0258881   -0.0007227    0.0524989
6-9 months     MAL-ED           BANGLADESH                     High                 NA                -0.0715150   -0.1057345   -0.0372954
6-9 months     MAL-ED           BANGLADESH                     Low                  NA                -0.0716703   -0.1037495   -0.0395912
6-9 months     MAL-ED           BANGLADESH                     Medium               NA                -0.0487551   -0.0783287   -0.0191816
6-9 months     MAL-ED           BRAZIL                         High                 NA                 0.0689711   -0.0032895    0.1412318
6-9 months     MAL-ED           BRAZIL                         Low                  NA                -0.0498564   -0.0982889   -0.0014238
6-9 months     MAL-ED           BRAZIL                         Medium               NA                -0.0052077   -0.0565025    0.0460871
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0761511   -0.1141485   -0.0381537
6-9 months     MAL-ED           INDIA                          Low                  NA                -0.0667905   -0.1060136   -0.0275673
6-9 months     MAL-ED           INDIA                          Medium               NA                -0.0698577   -0.1168734   -0.0228419
6-9 months     MAL-ED           NEPAL                          High                 NA                -0.0473480   -0.0915141   -0.0031819
6-9 months     MAL-ED           NEPAL                          Low                  NA                -0.0249820   -0.0558027    0.0058387
6-9 months     MAL-ED           NEPAL                          Medium               NA                -0.0319783   -0.0630684   -0.0008881
6-9 months     MAL-ED           PERU                           High                 NA                -0.0203181   -0.0712797    0.0306434
6-9 months     MAL-ED           PERU                           Low                  NA                -0.0276494   -0.0701369    0.0148381
6-9 months     MAL-ED           PERU                           Medium               NA                -0.0506739   -0.0835643   -0.0177835
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0153541   -0.0685343    0.0378262
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0219561   -0.0598626    0.0159503
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0119282   -0.0767480    0.0528917
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1864036   -0.1371262    0.5099333
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1051036   -0.1585731   -0.0516340
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1068691   -0.1518268   -0.0619114
6-9 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0644782   -0.0993226   -0.0296338
6-9 months     NIH-Birth        BANGLADESH                     Low                  NA                -0.0599106   -0.0901555   -0.0296657
6-9 months     NIH-Birth        BANGLADESH                     Medium               NA                -0.0552187   -0.0835998   -0.0268375
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0268162   -0.0496025   -0.0040299
6-9 months     NIH-Crypto       BANGLADESH                     Low                  NA                -0.0485735   -0.0713863   -0.0257608
6-9 months     NIH-Crypto       BANGLADESH                     Medium               NA                -0.0199756   -0.0404825    0.0005312
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0412514    0.0222915    0.0602113
6-9 months     PROBIT           BELARUS                        Low                  NA                 0.0633447    0.0452059    0.0814836
6-9 months     PROBIT           BELARUS                        Medium               NA                 0.0487862    0.0343056    0.0632668
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0394131   -0.0570540   -0.0217722
6-9 months     PROVIDE          BANGLADESH                     Low                  NA                -0.0812317   -0.1013727   -0.0610908
6-9 months     PROVIDE          BANGLADESH                     Medium               NA                -0.0656657   -0.0838911   -0.0474403
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0936677   -0.1156965   -0.0716390
6-9 months     SAS-CompFeed     INDIA                          Low                  NA                -0.0864490   -0.1069959   -0.0659021
6-9 months     SAS-CompFeed     INDIA                          Medium               NA                -0.0695443   -0.0929877   -0.0461008
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                -0.0665534   -0.1232031   -0.0099037
6-9 months     SAS-FoodSuppl    INDIA                          Low                  NA                -0.1103559   -0.1307145   -0.0899973
6-9 months     SAS-FoodSuppl    INDIA                          Medium               NA                -0.1000794   -0.1529605   -0.0471983
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0222164   -0.0560279    0.0115952
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1537212   -0.2671475   -0.0402949
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0574611   -0.0758155   -0.0391067
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0232165   -0.0341826   -0.0122504
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0462612   -0.0658207   -0.0267018
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0377046   -0.0549853   -0.0204239
9-12 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.1336159   -0.1770268   -0.0902051
9-12 months    CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1108643   -0.1531257   -0.0686029
9-12 months    CMC-V-BCS-2002   INDIA                          Medium               NA                -0.1053105   -0.1682009   -0.0424201
9-12 months    COHORTS          GUATEMALA                      High                 NA                -0.0899578   -0.1087510   -0.0711646
9-12 months    COHORTS          GUATEMALA                      Low                  NA                -0.0836149   -0.0997403   -0.0674895
9-12 months    COHORTS          GUATEMALA                      Medium               NA                -0.0955510   -0.1119480   -0.0791539
9-12 months    COHORTS          INDIA                          High                 NA                -0.0716879   -0.0862685   -0.0571072
9-12 months    COHORTS          INDIA                          Low                  NA                -0.1149880   -0.1245946   -0.1053815
9-12 months    COHORTS          INDIA                          Medium               NA                -0.0817148   -0.0890013   -0.0744282
9-12 months    EE               PAKISTAN                       High                 NA                -0.1019839   -0.1711337   -0.0328342
9-12 months    EE               PAKISTAN                       Low                  NA                -0.0995484   -0.1158187   -0.0832781
9-12 months    EE               PAKISTAN                       Medium               NA                -0.1247348   -0.1626403   -0.0868294
9-12 months    GMS-Nepal        NEPAL                          High                 NA                -0.0631454   -0.0962005   -0.0300904
9-12 months    GMS-Nepal        NEPAL                          Low                  NA                -0.0831539   -0.1004094   -0.0658984
9-12 months    GMS-Nepal        NEPAL                          Medium               NA                -0.0768311   -0.1015731   -0.0520891
9-12 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0346816   -0.0592891   -0.0100741
9-12 months    Guatemala BSC    GUATEMALA                      Low                  NA                -0.0964503   -0.1219190   -0.0709815
9-12 months    Guatemala BSC    GUATEMALA                      Medium               NA                -0.0583485   -0.0886295   -0.0280676
9-12 months    IRC              INDIA                          High                 NA                -0.0357816   -0.0666723   -0.0048909
9-12 months    IRC              INDIA                          Low                  NA                -0.0321963   -0.0619524   -0.0024401
9-12 months    IRC              INDIA                          Medium               NA                -0.0406063   -0.0678931   -0.0133196
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0398721   -0.0680919   -0.0116524
9-12 months    LCNI-5           MALAWI                         Low                  NA                -0.0221246   -0.0555154    0.0112662
9-12 months    LCNI-5           MALAWI                         Medium               NA                -0.0724589   -0.1121952   -0.0327226
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0770751   -0.1086655   -0.0454847
9-12 months    MAL-ED           BANGLADESH                     Low                  NA                -0.0907497   -0.1199219   -0.0615776
9-12 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0915836   -0.1268969   -0.0562703
9-12 months    MAL-ED           BRAZIL                         High                 NA                -0.0145087   -0.0641456    0.0351281
9-12 months    MAL-ED           BRAZIL                         Low                  NA                -0.0166787   -0.0794678    0.0461104
9-12 months    MAL-ED           BRAZIL                         Medium               NA                 0.0447250   -0.0048373    0.0942873
9-12 months    MAL-ED           INDIA                          High                 NA                -0.0901164   -0.1263912   -0.0538417
9-12 months    MAL-ED           INDIA                          Low                  NA                -0.0952477   -0.1236960   -0.0667993
9-12 months    MAL-ED           INDIA                          Medium               NA                -0.0983772   -0.1218504   -0.0749040
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0693467   -0.1040759   -0.0346174
9-12 months    MAL-ED           NEPAL                          Low                  NA                -0.0467939   -0.0753347   -0.0182532
9-12 months    MAL-ED           NEPAL                          Medium               NA                -0.0673395   -0.0955714   -0.0391076
9-12 months    MAL-ED           PERU                           High                 NA                -0.0246661   -0.0654279    0.0160957
9-12 months    MAL-ED           PERU                           Low                  NA                -0.0619611   -0.0971036   -0.0268185
9-12 months    MAL-ED           PERU                           Medium               NA                -0.0359132   -0.0718084   -0.0000181
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0893156   -0.1364241   -0.0422071
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0851765   -0.1197530   -0.0506001
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0783024   -0.1502164   -0.0063884
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2549183   -0.6494088    0.1395722
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1442232   -0.1994247   -0.0890217
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1561839   -0.2001891   -0.1121788
9-12 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0090370   -0.0365411    0.0184671
9-12 months    NIH-Birth        BANGLADESH                     Low                  NA                -0.0587850   -0.0820966   -0.0354734
9-12 months    NIH-Birth        BANGLADESH                     Medium               NA                -0.0533827   -0.0774689   -0.0292965
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0288710   -0.0473100   -0.0104319
9-12 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.0377169   -0.0566852   -0.0187487
9-12 months    NIH-Crypto       BANGLADESH                     Medium               NA                -0.0366252   -0.0560012   -0.0172493
9-12 months    PROBIT           BELARUS                        High                 NA                 0.0381459    0.0187646    0.0575272
9-12 months    PROBIT           BELARUS                        Low                  NA                 0.0470714    0.0220386    0.0721043
9-12 months    PROBIT           BELARUS                        Medium               NA                 0.0284802    0.0079682    0.0489923
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0491466   -0.0690555   -0.0292376
9-12 months    PROVIDE          BANGLADESH                     Low                  NA                -0.0730644   -0.0902667   -0.0558621
9-12 months    PROVIDE          BANGLADESH                     Medium               NA                -0.0679664   -0.0870518   -0.0488811
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0532463   -0.0803269   -0.0261658
9-12 months    SAS-CompFeed     INDIA                          Low                  NA                -0.1070037   -0.1259343   -0.0880731
9-12 months    SAS-CompFeed     INDIA                          Medium               NA                -0.0648696   -0.0965789   -0.0331604
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.2443940   -0.2764325   -0.2123555
9-12 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.1452611   -0.2066686   -0.0838537
9-12 months    SAS-FoodSuppl    INDIA                          Medium               NA                -0.0720310   -0.2981005    0.1540385
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0577542   -0.0879179   -0.0275905
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0457760   -0.1259642    0.0344121
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0696543   -0.0861508   -0.0531579
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0527666   -0.0623300   -0.0432031
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0673741   -0.0852083   -0.0495400
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0665391   -0.0821019   -0.0509762
12-15 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0308818   -0.0753234    0.0135597
12-15 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0902176   -0.1492206   -0.0312147
12-15 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.1071013   -0.1477052   -0.0664974
12-15 months   COHORTS          GUATEMALA                      High                 NA                -0.0929910   -0.1143717   -0.0716102
12-15 months   COHORTS          GUATEMALA                      Low                  NA                -0.0882486   -0.1042043   -0.0722929
12-15 months   COHORTS          GUATEMALA                      Medium               NA                -0.0845943   -0.1012027   -0.0679860
12-15 months   EE               PAKISTAN                       High                 NA                 0.0368372   -0.0353130    0.1089873
12-15 months   EE               PAKISTAN                       Low                  NA                -0.0004505   -0.0143501    0.0134491
12-15 months   EE               PAKISTAN                       Medium               NA                -0.0110204   -0.0530517    0.0310108
12-15 months   GMS-Nepal        NEPAL                          High                 NA                -0.0438341   -0.0723787   -0.0152895
12-15 months   GMS-Nepal        NEPAL                          Low                  NA                -0.0692364   -0.0826223   -0.0558504
12-15 months   GMS-Nepal        NEPAL                          Medium               NA                -0.0692264   -0.0921992   -0.0462536
12-15 months   Guatemala BSC    GUATEMALA                      High                 NA                -0.0115301   -0.0523528    0.0292925
12-15 months   Guatemala BSC    GUATEMALA                      Low                  NA                -0.0288076   -0.0651749    0.0075597
12-15 months   Guatemala BSC    GUATEMALA                      Medium               NA                 0.0109934   -0.0254825    0.0474692
12-15 months   IRC              INDIA                          High                 NA                -0.0468632   -0.0726301   -0.0210963
12-15 months   IRC              INDIA                          Low                  NA                -0.0528515   -0.0761444   -0.0295585
12-15 months   IRC              INDIA                          Medium               NA                -0.0362515   -0.0723752   -0.0001278
12-15 months   LCNI-5           MALAWI                         High                 NA                 0.0149527   -0.0481217    0.0780270
12-15 months   LCNI-5           MALAWI                         Low                  NA                -0.0922374   -0.1657058   -0.0187690
12-15 months   LCNI-5           MALAWI                         Medium               NA                -0.0455576   -0.0912155    0.0001002
12-15 months   MAL-ED           BANGLADESH                     High                 NA                -0.0629661   -0.0916910   -0.0342413
12-15 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0551096   -0.0824671   -0.0277521
12-15 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0363276   -0.0733064    0.0006512
12-15 months   MAL-ED           BRAZIL                         High                 NA                 0.0295869   -0.0102725    0.0694463
12-15 months   MAL-ED           BRAZIL                         Low                  NA                -0.0283382   -0.0680333    0.0113570
12-15 months   MAL-ED           BRAZIL                         Medium               NA                -0.0167288   -0.0522809    0.0188233
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0364554   -0.0684197   -0.0044912
12-15 months   MAL-ED           INDIA                          Low                  NA                -0.0510787   -0.0776941   -0.0244633
12-15 months   MAL-ED           INDIA                          Medium               NA                -0.0662455   -0.0913457   -0.0411453
12-15 months   MAL-ED           NEPAL                          High                 NA                -0.0515982   -0.0893600   -0.0138363
12-15 months   MAL-ED           NEPAL                          Low                  NA                -0.0780700   -0.1000212   -0.0561187
12-15 months   MAL-ED           NEPAL                          Medium               NA                -0.0331578   -0.0603244   -0.0059911
12-15 months   MAL-ED           PERU                           High                 NA                -0.0492417   -0.0852520   -0.0132315
12-15 months   MAL-ED           PERU                           Low                  NA                -0.0722023   -0.0993227   -0.0450820
12-15 months   MAL-ED           PERU                           Medium               NA                -0.0699010   -0.0993336   -0.0404683
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0567706   -0.1092767   -0.0042645
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0590081   -0.0867457   -0.0312706
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0629526   -0.1124204   -0.0134847
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1159153   -0.2194893   -0.0123413
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0948619   -0.1427477   -0.0469761
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0647395   -0.0976905   -0.0317884
12-15 months   NIH-Birth        BANGLADESH                     High                 NA                -0.1326024   -0.1574268   -0.1077780
12-15 months   NIH-Birth        BANGLADESH                     Low                  NA                -0.1194900   -0.1559256   -0.0830544
12-15 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.1271398   -0.1488913   -0.1053883
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0140581   -0.0310091    0.0028929
12-15 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0540298   -0.0688424   -0.0392171
12-15 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0481565   -0.0648414   -0.0314715
12-15 months   PROBIT           BELARUS                        High                 NA                 0.0810394   -0.0812586    0.2433374
12-15 months   PROBIT           BELARUS                        Low                  NA                -0.0424518   -0.2225039    0.1376002
12-15 months   PROBIT           BELARUS                        Medium               NA                 0.0195471   -0.1782242    0.2173184
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0296835   -0.0491511   -0.0102160
12-15 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0488624   -0.0659629   -0.0317619
12-15 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0453357   -0.0606470   -0.0300243
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0685228   -0.0972762   -0.0397694
12-15 months   SAS-CompFeed     INDIA                          Low                  NA                -0.0840944   -0.1060986   -0.0620902
12-15 months   SAS-CompFeed     INDIA                          Medium               NA                -0.0955168   -0.1181291   -0.0729045
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0583484   -0.0352133    0.1519100
12-15 months   SAS-FoodSuppl    INDIA                          Low                  NA                 0.0081646   -0.0306640    0.0469933
12-15 months   SAS-FoodSuppl    INDIA                          Medium               NA                -0.0342159   -0.1754063    0.1069746
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0619174   -0.0898379   -0.0339969
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1526463   -0.2336400   -0.0716526
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0607362   -0.0779187   -0.0435536
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0630978   -0.0770130   -0.0491825
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0576312   -0.0817610   -0.0335013
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0629334   -0.0841761   -0.0416907
15-18 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0717802   -0.1123573   -0.0312030
15-18 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0850827   -0.1179242   -0.0522412
15-18 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0471953   -0.0914995   -0.0028912
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0451290   -0.0724195   -0.0178385
15-18 months   COHORTS          GUATEMALA                      Low                  NA                -0.0651357   -0.0816440   -0.0486273
15-18 months   COHORTS          GUATEMALA                      Medium               NA                -0.0475924   -0.0643397   -0.0308451
15-18 months   EE               PAKISTAN                       High                 NA                 0.0452033   -0.0550814    0.1454880
15-18 months   EE               PAKISTAN                       Low                  NA                -0.0310307   -0.0428667   -0.0191947
15-18 months   EE               PAKISTAN                       Medium               NA                 0.0022733   -0.0220451    0.0265918
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0839053   -0.1246959   -0.0431147
15-18 months   GMS-Nepal        NEPAL                          Low                  NA                -0.0653110   -0.0807698   -0.0498522
15-18 months   GMS-Nepal        NEPAL                          Medium               NA                -0.0755937   -0.0978518   -0.0533356
15-18 months   IRC              INDIA                          High                 NA                -0.0464682   -0.0737362   -0.0192001
15-18 months   IRC              INDIA                          Low                  NA                -0.0446732   -0.0682039   -0.0211424
15-18 months   IRC              INDIA                          Medium               NA                -0.0249808   -0.0505709    0.0006092
15-18 months   LCNI-5           MALAWI                         High                 NA                -0.0677589   -0.1078467   -0.0276712
15-18 months   LCNI-5           MALAWI                         Low                  NA                -0.0132224   -0.0587819    0.0323372
15-18 months   LCNI-5           MALAWI                         Medium               NA                -0.0625914   -0.1080313   -0.0171515
15-18 months   MAL-ED           BANGLADESH                     High                 NA                -0.0589486   -0.0832007   -0.0346964
15-18 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0388380   -0.0651247   -0.0125513
15-18 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0402897   -0.0679116   -0.0126678
15-18 months   MAL-ED           BRAZIL                         High                 NA                -0.0076134   -0.0414425    0.0262156
15-18 months   MAL-ED           BRAZIL                         Low                  NA                -0.0514190   -0.0944423   -0.0083957
15-18 months   MAL-ED           BRAZIL                         Medium               NA                -0.0159176   -0.0498398    0.0180046
15-18 months   MAL-ED           INDIA                          High                 NA                -0.0326369   -0.0573893   -0.0078845
15-18 months   MAL-ED           INDIA                          Low                  NA                -0.0492387   -0.0713696   -0.0271078
15-18 months   MAL-ED           INDIA                          Medium               NA                -0.0436957   -0.0678203   -0.0195710
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0443893   -0.0764294   -0.0123493
15-18 months   MAL-ED           NEPAL                          Low                  NA                -0.0468491   -0.0695651   -0.0241332
15-18 months   MAL-ED           NEPAL                          Medium               NA                -0.0753364   -0.1029310   -0.0477419
15-18 months   MAL-ED           PERU                           High                 NA                -0.0169633   -0.0470354    0.0131088
15-18 months   MAL-ED           PERU                           Low                  NA                -0.0430552   -0.0683502   -0.0177602
15-18 months   MAL-ED           PERU                           Medium               NA                -0.0472174   -0.0724057   -0.0220290
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0100603   -0.0482501    0.0281295
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0289768   -0.0564110   -0.0015426
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0517929   -0.0847073   -0.0188786
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1502796   -0.3250417    0.0244824
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1005368   -0.1438708   -0.0572028
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0649923   -0.0940476   -0.0359369
15-18 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0450596   -0.0706678   -0.0194514
15-18 months   NIH-Birth        BANGLADESH                     Low                  NA                -0.0638662   -0.0879761   -0.0397564
15-18 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.0620912   -0.0885042   -0.0356783
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0229629   -0.0362278   -0.0096979
15-18 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0168685   -0.0333744   -0.0003626
15-18 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0108281   -0.0246196    0.0029633
15-18 months   PROBIT           BELARUS                        High                 NA                -0.0126934   -0.4517720    0.4263852
15-18 months   PROBIT           BELARUS                        Low                  NA                 0.0117907   -0.3112089    0.3347903
15-18 months   PROBIT           BELARUS                        Medium               NA                -0.0294323   -0.1674448    0.1085803
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0266990   -0.0407094   -0.0126886
15-18 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0426008   -0.0593883   -0.0258134
15-18 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0443548   -0.0590907   -0.0296190
15-18 months   SAS-CompFeed     INDIA                          High                 NA                 0.0085453   -0.0320386    0.0491291
15-18 months   SAS-CompFeed     INDIA                          Low                  NA                -0.0209145   -0.0367196   -0.0051094
15-18 months   SAS-CompFeed     INDIA                          Medium               NA                -0.0125022   -0.0334069    0.0084025
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0635386   -0.1046759   -0.0224013
15-18 months   SAS-FoodSuppl    INDIA                          Low                  NA                -0.0329445   -0.0484318   -0.0174572
15-18 months   SAS-FoodSuppl    INDIA                          Medium               NA                -0.0405863   -0.0640078   -0.0171649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0201947   -0.0542411    0.0138516
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0216204   -0.0925657    0.0493249
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0190517   -0.0365901   -0.0015132
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0521150   -0.0661252   -0.0381048
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0799754   -0.1046792   -0.0552715
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0677091   -0.0912782   -0.0441399
18-21 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0431788   -0.0785901   -0.0077675
18-21 months   CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0716057   -0.1055559   -0.0376554
18-21 months   CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0183204   -0.0633705    0.0267296
18-21 months   COHORTS          GUATEMALA                      High                 NA                -0.0177058   -0.0401420    0.0047304
18-21 months   COHORTS          GUATEMALA                      Low                  NA                -0.0245205   -0.0401094   -0.0089315
18-21 months   COHORTS          GUATEMALA                      Medium               NA                -0.0136079   -0.0285458    0.0013300
18-21 months   EE               PAKISTAN                       High                 NA                -0.0599108   -0.1651769    0.0453553
18-21 months   EE               PAKISTAN                       Low                  NA                -0.0367374   -0.0486196   -0.0248553
18-21 months   EE               PAKISTAN                       Medium               NA                -0.0145031   -0.0435071    0.0145008
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0275204   -0.0195387    0.0745794
18-21 months   GMS-Nepal        NEPAL                          Low                  NA                 0.0127228   -0.0014197    0.0268654
18-21 months   GMS-Nepal        NEPAL                          Medium               NA                 0.0210305    0.0034597    0.0386013
18-21 months   IRC              INDIA                          High                 NA                -0.0288755   -0.0519531   -0.0057979
18-21 months   IRC              INDIA                          Low                  NA                -0.0338978   -0.0557178   -0.0120778
18-21 months   IRC              INDIA                          Medium               NA                -0.0570183   -0.0807494   -0.0332872
18-21 months   LCNI-5           MALAWI                         High                 NA                -0.0210644   -0.0480503    0.0059216
18-21 months   LCNI-5           MALAWI                         Low                  NA                 0.0159140   -0.0036723    0.0355002
18-21 months   LCNI-5           MALAWI                         Medium               NA                -0.0391933   -0.0751751   -0.0032116
18-21 months   MAL-ED           BANGLADESH                     High                 NA                -0.0030000   -0.0266279    0.0206279
18-21 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0222917   -0.0429259   -0.0016575
18-21 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0070658   -0.0251155    0.0109839
18-21 months   MAL-ED           BRAZIL                         High                 NA                -0.0061916   -0.0431563    0.0307731
18-21 months   MAL-ED           BRAZIL                         Low                  NA                -0.0085320   -0.0719292    0.0548652
18-21 months   MAL-ED           BRAZIL                         Medium               NA                -0.0399075   -0.0738577   -0.0059573
18-21 months   MAL-ED           INDIA                          High                 NA                 0.0201579   -0.0028186    0.0431345
18-21 months   MAL-ED           INDIA                          Low                  NA                 0.0050201   -0.0127932    0.0228334
18-21 months   MAL-ED           INDIA                          Medium               NA                -0.0039610   -0.0254764    0.0175544
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0203081   -0.0522387    0.0116225
18-21 months   MAL-ED           NEPAL                          Low                  NA                -0.0330083   -0.0543887   -0.0116279
18-21 months   MAL-ED           NEPAL                          Medium               NA                -0.0211137   -0.0402167   -0.0020106
18-21 months   MAL-ED           PERU                           High                 NA                -0.0036989   -0.0326618    0.0252639
18-21 months   MAL-ED           PERU                           Low                  NA                -0.0235891   -0.0479795    0.0008014
18-21 months   MAL-ED           PERU                           Medium               NA                 0.0029653   -0.0231660    0.0290967
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0316782   -0.0658589    0.0025024
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0211187   -0.0505432    0.0083058
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0586628   -0.0921948   -0.0251308
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0676454   -0.1768647    0.0415739
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0604679   -0.1041805   -0.0167553
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0151439   -0.0432347    0.0129469
18-21 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0380758   -0.0630586   -0.0130930
18-21 months   NIH-Birth        BANGLADESH                     Low                  NA                -0.0333513   -0.0534686   -0.0132340
18-21 months   NIH-Birth        BANGLADESH                     Medium               NA                -0.0443970   -0.0642704   -0.0245237
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0141069   -0.0279782   -0.0002357
18-21 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0416383   -0.0555012   -0.0277755
18-21 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0310806   -0.0446329   -0.0175283
18-21 months   PROBIT           BELARUS                        High                 NA                 0.0511689   -0.4417504    0.5440881
18-21 months   PROBIT           BELARUS                        Low                  NA                -0.0106052   -0.5001829    0.4789724
18-21 months   PROBIT           BELARUS                        Medium               NA                -0.0719473   -0.3517680    0.2078734
18-21 months   PROVIDE          BANGLADESH                     High                 NA                -0.0097901   -0.0227529    0.0031728
18-21 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0156069   -0.0299936   -0.0012201
18-21 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0080967   -0.0228737    0.0066802
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0685536   -0.0851662   -0.0519410
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0597461   -0.0830712   -0.0364209
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0772664   -0.1010160   -0.0535168
21-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0034892   -0.0320470    0.0390253
21-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0344381   -0.0037607    0.0726369
21-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                 0.0226028   -0.0107310    0.0559366
21-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0055883   -0.0224163    0.0112397
21-24 months   COHORTS          GUATEMALA                      Low                  NA                -0.0046776   -0.0157464    0.0063912
21-24 months   COHORTS          GUATEMALA                      Medium               NA                -0.0060541   -0.0209046    0.0087965
21-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0688895    0.0105630    0.1272160
21-24 months   GMS-Nepal        NEPAL                          Low                  NA                 0.0487656    0.0304392    0.0670920
21-24 months   GMS-Nepal        NEPAL                          Medium               NA                 0.0328480    0.0009180    0.0647779
21-24 months   IRC              INDIA                          High                 NA                -0.0110833   -0.0360308    0.0138642
21-24 months   IRC              INDIA                          Low                  NA                -0.0022978   -0.0250871    0.0204915
21-24 months   IRC              INDIA                          Medium               NA                -0.0287936   -0.0514780   -0.0061092
21-24 months   LCNI-5           MALAWI                         High                 NA                 0.0122681   -0.0159997    0.0405359
21-24 months   LCNI-5           MALAWI                         Low                  NA                 0.0426921    0.0198623    0.0655219
21-24 months   LCNI-5           MALAWI                         Medium               NA                 0.0274935    0.0019043    0.0530827
21-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0224901    0.0037289    0.0412512
21-24 months   MAL-ED           BANGLADESH                     Low                  NA                 0.0257656    0.0008092    0.0507221
21-24 months   MAL-ED           BANGLADESH                     Medium               NA                 0.0122637   -0.0137514    0.0382788
21-24 months   MAL-ED           BRAZIL                         High                 NA                 0.0157791   -0.0059013    0.0374595
21-24 months   MAL-ED           BRAZIL                         Low                  NA                 0.0346990    0.0034368    0.0659612
21-24 months   MAL-ED           BRAZIL                         Medium               NA                 0.0041864   -0.0256982    0.0340711
21-24 months   MAL-ED           INDIA                          High                 NA                 0.0485619    0.0252012    0.0719226
21-24 months   MAL-ED           INDIA                          Low                  NA                 0.0219988    0.0035863    0.0404113
21-24 months   MAL-ED           INDIA                          Medium               NA                 0.0326301    0.0147014    0.0505589
21-24 months   MAL-ED           NEPAL                          High                 NA                 0.0103888   -0.0190943    0.0398719
21-24 months   MAL-ED           NEPAL                          Low                  NA                 0.0056757   -0.0176450    0.0289964
21-24 months   MAL-ED           NEPAL                          Medium               NA                 0.0031013   -0.0180508    0.0242534
21-24 months   MAL-ED           PERU                           High                 NA                 0.0457326    0.0199475    0.0715176
21-24 months   MAL-ED           PERU                           Low                  NA                 0.0716659    0.0446138    0.0987181
21-24 months   MAL-ED           PERU                           Medium               NA                 0.0491279    0.0232453    0.0750106
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0290825   -0.0026029    0.0607680
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.0443525    0.0192014    0.0695036
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.0622511    0.0334864    0.0910158
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1098669   -0.0336894    0.2534232
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0035882   -0.0340522    0.0412286
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0056725   -0.0252580    0.0366030
21-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0366146    0.0164549    0.0567744
21-24 months   NIH-Birth        BANGLADESH                     Low                  NA                 0.0429159    0.0228434    0.0629883
21-24 months   NIH-Birth        BANGLADESH                     Medium               NA                 0.0419074    0.0212783    0.0625365
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0668553    0.0536195    0.0800910
21-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                 0.0563360    0.0401789    0.0724932
21-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                 0.0520051    0.0383110    0.0656993
21-24 months   PROBIT           BELARUS                        High                 NA                 0.0910812   -0.3278516    0.5100141
21-24 months   PROBIT           BELARUS                        Low                  NA                 0.0516884   -0.1779618    0.2813387
21-24 months   PROBIT           BELARUS                        Medium               NA                 0.0359355   -0.1376026    0.2094735
21-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0467249    0.0320955    0.0613544
21-24 months   PROVIDE          BANGLADESH                     Low                  NA                 0.0422955    0.0259667    0.0586242
21-24 months   PROVIDE          BANGLADESH                     Medium               NA                 0.0492101    0.0351215    0.0632987
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0191751    0.0012940    0.0370562
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0151728   -0.0086132    0.0389587
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                 0.0154447   -0.0094218    0.0403112


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5339149   -0.5555923   -0.5122374
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0662510   -0.0740537   -0.0584483
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2166454   -0.2596308   -0.1736600
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317307   -0.0570458   -0.0064155
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1190204   -0.1543577   -0.0836832
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1363881    0.0790601    0.1937160
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0489679   -0.1048946    0.0069588
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0649356    0.0185734    0.1112978
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2616427   -0.2957889   -0.2274965
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1399071   -0.1845102   -0.0953040
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1404932   -0.1507310   -0.1302554
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0961436   -0.1107658   -0.0815214
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0603887   -0.0665778   -0.0541997
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0652578    0.0377739    0.0927418
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1605426   -0.1792369   -0.1418484
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0168731   -0.0426265    0.0088803
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0588940    0.0222266    0.0955615
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0380713   -0.0691453   -0.0069974
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0229111   -0.0504007    0.0045785
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0242892   -0.0069619    0.0555403
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652398   -0.1008912   -0.0295884
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856177   -0.1022161   -0.0690194
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012293   -0.0104416    0.0079829
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1210541   -0.1329684   -0.1091397
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0995877   -0.1050253   -0.0941500
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0842014   -0.1049809   -0.0634219
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438950   -0.0614570   -0.0263330
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.0943611   -0.1139677   -0.0747545
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0278777    0.0118933    0.0438620
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0647998   -0.0836240   -0.0459756
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0084619   -0.0265730    0.0434967
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0706010   -0.0953146   -0.0458875
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0325589   -0.0523634   -0.0127543
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0337299   -0.0579406   -0.0095192
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0937562   -0.1308622   -0.0566501
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516173   -0.0676928   -0.0355418
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315452   -0.0399419   -0.0231485
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0889498   -0.0989510   -0.0789486
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0908549   -0.0962730   -0.0854367
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1021417   -0.1169275   -0.0873559
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0799128   -0.0935660   -0.0662595
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0586179   -0.0745573   -0.0426785
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0439678   -0.0633568   -0.0245787
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0861044   -0.1045843   -0.0676246
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0082543   -0.0227252    0.0392338
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0949674   -0.1116379   -0.0782970
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0590147   -0.0765727   -0.0414567
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0414691   -0.0630023   -0.0199360
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1567683   -0.1942484   -0.1192883
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659026   -0.0801818   -0.0516233
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0592140   -0.0666788   -0.0517492
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0880201   -0.0982412   -0.0777991
12-15 months   EE               PAKISTAN                       NA                   NA                 0.0001367   -0.0128957    0.0131691
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0666181   -0.0775328   -0.0557034
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0100547   -0.0332477    0.0131383
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0525394   -0.0703843   -0.0346945
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0024996   -0.0251726    0.0201734
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0525346   -0.0685405   -0.0365288
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0565556   -0.0726000   -0.0405113
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0642210   -0.0820406   -0.0464014
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0763336   -0.1027943   -0.0498729
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0618579   -0.0724006   -0.0513152
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0553817   -0.0663550   -0.0444084
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0253726   -0.0367399   -0.0140053
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0691796   -0.0817989   -0.0565602
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0470377   -0.0620859   -0.0319895
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0214325   -0.0425290   -0.0003360
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0424716   -0.0562165   -0.0287267
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0560899   -0.0716361   -0.0405437
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0363654   -0.0519184   -0.0208125
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0793291   -0.1037273   -0.0549309
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624853   -0.0734602   -0.0515103
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0195376   -0.0294342   -0.0096410
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0354475   -0.0468222   -0.0240729
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0159674    0.0041609    0.0277738
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0147668   -0.0310721    0.0015384
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0106403   -0.0231173    0.0018367
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0195654   -0.0442174    0.0050865
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0058996   -0.0062176    0.0180168
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0259771   -0.0394228   -0.0125314
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0084039   -0.0237124    0.0069046
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0311860   -0.0545647   -0.0078073
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0305103   -0.2535719    0.1925513
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0687724   -0.0805524   -0.0569923
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0053180   -0.0132274    0.0025913
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0480061    0.0323963    0.0636159
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0258986    0.0104915    0.0413057
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0206295    0.0073684    0.0338907
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0158251   -0.0002206    0.0318707
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0334045    0.0219880    0.0448209
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0058220   -0.0082341    0.0198781
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0563885    0.0410386    0.0717383
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0094134   -0.0147429    0.0335696
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0518411   -0.0993926    0.2030747
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0173343    0.0048443    0.0298242


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Low                  High               0.0358460   -0.2299684    0.3016604
0-3 months     CMC-V-BCS-2002   INDIA                          Medium               High              -0.1763617   -0.4481237    0.0954004
0-3 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low                  High              -0.0044580   -0.0576525    0.0487366
0-3 months     COHORTS          GUATEMALA                      Medium               High              -0.0098670   -0.0665102    0.0467762
0-3 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low                  High              -0.0944553   -0.1187594   -0.0701511
0-3 months     COHORTS          INDIA                          Medium               High              -0.0459665   -0.0687907   -0.0231422
0-3 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low                  High              -0.0835061   -0.2849357    0.1179234
0-3 months     EE               PAKISTAN                       Medium               High              -0.0221948   -0.2651666    0.2207771
0-3 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low                  High              -0.0514770   -0.1304283    0.0274744
0-3 months     GMS-Nepal        NEPAL                          Medium               High               0.0085793   -0.0865673    0.1037260
0-3 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low                  High              -0.0589704   -0.1885062    0.0705654
0-3 months     IRC              INDIA                          Medium               High              -0.1667755   -0.3088205   -0.0247304
0-3 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low                  High              -0.0126209   -0.0987815    0.0735397
0-3 months     MAL-ED           BANGLADESH                     Medium               High              -0.0029252   -0.0860489    0.0801986
0-3 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low                  High              -0.0269804   -0.1809569    0.1269961
0-3 months     MAL-ED           BRAZIL                         Medium               High              -0.0814796   -0.2072813    0.0443221
0-3 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low                  High              -0.1636174   -0.3072589   -0.0199758
0-3 months     MAL-ED           INDIA                          Medium               High              -0.0500891   -0.2023576    0.1021794
0-3 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low                  High              -0.0850497   -0.2031705    0.0330710
0-3 months     MAL-ED           NEPAL                          Medium               High              -0.1465222   -0.2669521   -0.0260923
0-3 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low                  High              -0.0709043   -0.1505551    0.0087466
0-3 months     MAL-ED           PERU                           Medium               High              -0.0947027   -0.1838002   -0.0056052
0-3 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0934630   -0.2061959    0.0192698
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.0645180   -0.1956642    0.0666281
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1680001   -0.3594770    0.0234768
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1130289   -0.2928407    0.0667828
0-3 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low                  High              -0.0140169   -0.0795099    0.0514761
0-3 months     NIH-Birth        BANGLADESH                     Medium               High              -0.0214484   -0.0917190    0.0488223
0-3 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low                  High               0.0124439   -0.0308134    0.0557013
0-3 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0011263   -0.0427577    0.0405050
0-3 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Low                  High              -0.0346976   -0.0772550    0.0078597
0-3 months     PROBIT           BELARUS                        Medium               High              -0.0188107   -0.0481391    0.0105177
0-3 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low                  High              -0.0270523   -0.0698415    0.0157369
0-3 months     PROVIDE          BANGLADESH                     Medium               High              -0.0156646   -0.0574087    0.0260794
0-3 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low                  High              -0.0211793   -0.1038929    0.0615343
0-3 months     SAS-CompFeed     INDIA                          Medium               High              -0.0018796   -0.0485703    0.0448112
0-3 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  High               0.0022610   -0.0238862    0.0284081
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0163065   -0.0408830    0.0082700
3-6 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low                  High              -0.0900391   -0.1936910    0.0136129
3-6 months     CMC-V-BCS-2002   INDIA                          Medium               High               0.0020034   -0.1214852    0.1254919
3-6 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low                  High               0.0199895   -0.0167455    0.0567245
3-6 months     COHORTS          GUATEMALA                      Medium               High               0.0255291   -0.0156572    0.0667155
3-6 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low                  High              -0.0570615   -0.0768848   -0.0372383
3-6 months     COHORTS          INDIA                          Medium               High              -0.0202275   -0.0388630   -0.0015920
3-6 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low                  High              -0.0684133   -0.1828319    0.0460053
3-6 months     EE               PAKISTAN                       Medium               High               0.0115049   -0.1236068    0.1466166
3-6 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low                  High              -0.0243218   -0.0777046    0.0290609
3-6 months     GMS-Nepal        NEPAL                          Medium               High              -0.0294029   -0.0955893    0.0367835
3-6 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low                  High               0.0373896   -0.0356189    0.1103981
3-6 months     IRC              INDIA                          Medium               High               0.0864003    0.0101437    0.1626570
3-6 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low                  High               0.0053665   -0.0573619    0.0680950
3-6 months     MAL-ED           BANGLADESH                     Medium               High              -0.0677226   -0.1272523   -0.0081929
3-6 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low                  High               0.0428478   -0.0525122    0.1382079
3-6 months     MAL-ED           BRAZIL                         Medium               High               0.0379053   -0.0482292    0.1240398
3-6 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low                  High               0.0789357    0.0117033    0.1461681
3-6 months     MAL-ED           INDIA                          Medium               High               0.0602062   -0.0185385    0.1389508
3-6 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low                  High              -0.0153116   -0.0833086    0.0526853
3-6 months     MAL-ED           NEPAL                          Medium               High               0.0141888   -0.0625595    0.0909370
3-6 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low                  High               0.0217049   -0.0537003    0.0971101
3-6 months     MAL-ED           PERU                           Medium               High               0.0646085   -0.0164981    0.1457150
3-6 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0281579   -0.1185338    0.0622181
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0377380   -0.0643905    0.1398666
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.2451636    0.0671028    0.4232244
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1976327    0.0289870    0.3662784
3-6 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low                  High              -0.0684548   -0.1222663   -0.0146432
3-6 months     NIH-Birth        BANGLADESH                     Medium               High              -0.0476808   -0.1027550    0.0073935
3-6 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0171997   -0.0572556    0.0228563
3-6 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0269057   -0.0681192    0.0143078
3-6 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Low                  High              -0.0118555   -0.0374975    0.0137865
3-6 months     PROBIT           BELARUS                        Medium               High               0.0038425   -0.0149814    0.0226664
3-6 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low                  High              -0.0081573   -0.0469308    0.0306163
3-6 months     PROVIDE          BANGLADESH                     Medium               High              -0.0013208   -0.0403312    0.0376895
3-6 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low                  High              -0.0416257   -0.0722994   -0.0109520
3-6 months     SAS-CompFeed     INDIA                          Medium               High              -0.0514444   -0.0837729   -0.0191159
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0435548   -0.0482252    0.1353347
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0012030   -0.0379255    0.0403314
3-6 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0139083   -0.0377473    0.0099307
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0220949   -0.0443171    0.0001273
6-9 months     CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low                  High               0.0513287   -0.0281718    0.1308291
6-9 months     CMC-V-BCS-2002   INDIA                          Medium               High              -0.0119144   -0.0965798    0.0727510
6-9 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low                  High               0.0314267   -0.0013876    0.0642410
6-9 months     COHORTS          GUATEMALA                      Medium               High               0.0437437    0.0103449    0.0771424
6-9 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low                  High              -0.0359851   -0.0535957   -0.0183744
6-9 months     COHORTS          INDIA                          Medium               High              -0.0107281   -0.0273529    0.0058968
6-9 months     EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low                  High              -0.0366229   -0.1322577    0.0590119
6-9 months     EE               PAKISTAN                       Medium               High              -0.0269705   -0.1313295    0.0773886
6-9 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low                  High               0.0171369   -0.0254642    0.0597379
6-9 months     GMS-Nepal        NEPAL                          Medium               High              -0.0056858   -0.0536608    0.0422892
6-9 months     Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      Low                  High              -0.0015507   -0.0482533    0.0451519
6-9 months     Guatemala BSC    GUATEMALA                      Medium               High               0.0047027   -0.0431549    0.0525603
6-9 months     IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low                  High              -0.0599211   -0.1154296   -0.0044125
6-9 months     IRC              INDIA                          Medium               High              -0.0213865   -0.0746407    0.0318677
6-9 months     LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Low                  High               0.0009225   -0.0390148    0.0408598
6-9 months     LCNI-5           MALAWI                         Medium               High              -0.0024152   -0.0396271    0.0347967
6-9 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low                  High              -0.0001554   -0.0470600    0.0467493
6-9 months     MAL-ED           BANGLADESH                     Medium               High               0.0227598   -0.0224682    0.0679878
6-9 months     MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low                  High              -0.1188275   -0.2058178   -0.0318372
6-9 months     MAL-ED           BRAZIL                         Medium               High              -0.0741788   -0.1627946    0.0144370
6-9 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low                  High               0.0093606   -0.0452495    0.0639707
6-9 months     MAL-ED           INDIA                          Medium               High               0.0062934   -0.0541572    0.0667440
6-9 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low                  High               0.0223660   -0.0314909    0.0762228
6-9 months     MAL-ED           NEPAL                          Medium               High               0.0153697   -0.0386418    0.0693812
6-9 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low                  High              -0.0073312   -0.0736808    0.0590184
6-9 months     MAL-ED           PERU                           Medium               High              -0.0303558   -0.0910094    0.0302979
6-9 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0066021   -0.0719093    0.0587052
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0034259   -0.0804177    0.0872695
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2915071   -0.6194256    0.0364113
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2932726   -0.6199111    0.0333658
6-9 months     NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low                  High               0.0045676   -0.0415722    0.0507075
6-9 months     NIH-Birth        BANGLADESH                     Medium               High               0.0092595   -0.0356807    0.0541997
6-9 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0217573   -0.0540007    0.0104861
6-9 months     NIH-Crypto       BANGLADESH                     Medium               High               0.0068406   -0.0238147    0.0374958
6-9 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Low                  High               0.0220933    0.0030751    0.0411116
6-9 months     PROBIT           BELARUS                        Medium               High               0.0075348   -0.0087821    0.0238517
6-9 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low                  High              -0.0418186   -0.0685929   -0.0150444
6-9 months     PROVIDE          BANGLADESH                     Medium               High              -0.0262526   -0.0516173   -0.0008879
6-9 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low                  High               0.0072187   -0.0288198    0.0432573
6-9 months     SAS-CompFeed     INDIA                          Medium               High               0.0241235   -0.0117323    0.0599792
6-9 months     SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          Low                  High              -0.0438025   -0.1039993    0.0163944
6-9 months     SAS-FoodSuppl    INDIA                          Medium               High              -0.0335260   -0.1110218    0.0439698
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1315048   -0.2498634   -0.0131463
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0352447   -0.0737168    0.0032274
6-9 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0230447   -0.0454685   -0.0006209
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0144881   -0.0349546    0.0059784
9-12 months    CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low                  High               0.0227516   -0.0378333    0.0833365
9-12 months    CMC-V-BCS-2002   INDIA                          Medium               High               0.0283055   -0.0481125    0.1047234
9-12 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low                  High               0.0063429   -0.0184203    0.0311061
9-12 months    COHORTS          GUATEMALA                      Medium               High              -0.0055932   -0.0305341    0.0193478
9-12 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low                  High              -0.0433002   -0.0607610   -0.0258393
9-12 months    COHORTS          INDIA                          Medium               High              -0.0100269   -0.0263268    0.0062731
9-12 months    EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low                  High               0.0024355   -0.0686026    0.0734736
9-12 months    EE               PAKISTAN                       Medium               High              -0.0227509   -0.1016084    0.0561067
9-12 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low                  High              -0.0200085   -0.0572964    0.0172794
9-12 months    GMS-Nepal        NEPAL                          Medium               High              -0.0136857   -0.0549749    0.0276036
9-12 months    Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      Low                  High              -0.0617687   -0.0971832   -0.0263542
9-12 months    Guatemala BSC    GUATEMALA                      Medium               High              -0.0236670   -0.0626858    0.0153518
9-12 months    IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low                  High               0.0035853   -0.0393060    0.0464766
9-12 months    IRC              INDIA                          Medium               High              -0.0048247   -0.0460412    0.0363918
9-12 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Low                  High               0.0177475   -0.0259709    0.0614659
9-12 months    LCNI-5           MALAWI                         Medium               High              -0.0325868   -0.0813241    0.0161505
9-12 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low                  High              -0.0136746   -0.0566743    0.0293250
9-12 months    MAL-ED           BANGLADESH                     Medium               High              -0.0145085   -0.0618897    0.0328728
9-12 months    MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low                  High              -0.0021700   -0.0822093    0.0778694
9-12 months    MAL-ED           BRAZIL                         Medium               High               0.0592338   -0.0109106    0.1293782
9-12 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low                  High              -0.0051312   -0.0512308    0.0409683
9-12 months    MAL-ED           INDIA                          Medium               High              -0.0082608   -0.0514678    0.0349463
9-12 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low                  High               0.0225528   -0.0223994    0.0675049
9-12 months    MAL-ED           NEPAL                          Medium               High               0.0020072   -0.0427495    0.0467639
9-12 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low                  High              -0.0372949   -0.0911143    0.0165244
9-12 months    MAL-ED           PERU                           Medium               High              -0.0112471   -0.0655609    0.0430667
9-12 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  High               0.0041391   -0.0542968    0.0625749
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               High               0.0110132   -0.0749568    0.0969832
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.1106951   -0.2876389    0.5090291
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0987343   -0.2982030    0.4956716
9-12 months    NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low                  High              -0.0497480   -0.0858022   -0.0136938
9-12 months    NIH-Birth        BANGLADESH                     Medium               High              -0.0443457   -0.0809055   -0.0077859
9-12 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0088460   -0.0352996    0.0176076
9-12 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0077543   -0.0345018    0.0189932
9-12 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Low                  High               0.0089255   -0.0095859    0.0274370
9-12 months    PROBIT           BELARUS                        Medium               High              -0.0096657   -0.0265596    0.0072282
9-12 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low                  High              -0.0239179   -0.0502292    0.0023934
9-12 months    PROVIDE          BANGLADESH                     Medium               High              -0.0188199   -0.0463991    0.0087594
9-12 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low                  High              -0.0537573   -0.0810553   -0.0264594
9-12 months    SAS-CompFeed     INDIA                          Medium               High              -0.0116233   -0.0629226    0.0396760
9-12 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0991329    0.0298700    0.1683957
9-12 months    SAS-FoodSuppl    INDIA                          Medium               High               0.1723630   -0.0559655    0.4006915
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0119782   -0.0736956    0.0976519
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0119001   -0.0462801    0.0224799
9-12 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0146076   -0.0348441    0.0056289
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0137725   -0.0320389    0.0044939
12-15 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0593358   -0.1332033    0.0145317
12-15 months   CMC-V-BCS-2002   INDIA                          Medium               High              -0.0762195   -0.1364169   -0.0160221
12-15 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low                  High               0.0047424   -0.0219357    0.0314205
12-15 months   COHORTS          GUATEMALA                      Medium               High               0.0083966   -0.0186768    0.0354701
12-15 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low                  High              -0.0372877   -0.1107645    0.0361892
12-15 months   EE               PAKISTAN                       Medium               High              -0.0478576   -0.1313577    0.0356425
12-15 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low                  High              -0.0254023   -0.0569297    0.0061251
12-15 months   GMS-Nepal        NEPAL                          Medium               High              -0.0253923   -0.0620331    0.0112485
12-15 months   Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      Low                  High              -0.0172775   -0.0719498    0.0373949
12-15 months   Guatemala BSC    GUATEMALA                      Medium               High               0.0225235   -0.0322211    0.0772681
12-15 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low                  High              -0.0059883   -0.0407229    0.0287464
12-15 months   IRC              INDIA                          Medium               High               0.0106117   -0.0337600    0.0549835
12-15 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Low                  High              -0.1071901   -0.2040197   -0.0103605
12-15 months   LCNI-5           MALAWI                         Medium               High              -0.0605103   -0.1383757    0.0173550
12-15 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low                  High               0.0078565   -0.0318115    0.0475245
12-15 months   MAL-ED           BANGLADESH                     Medium               High               0.0266385   -0.0201861    0.0734632
12-15 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low                  High              -0.0579250   -0.1141787   -0.0016714
12-15 months   MAL-ED           BRAZIL                         Medium               High              -0.0463157   -0.0997266    0.0070952
12-15 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low                  High              -0.0146233   -0.0562177    0.0269711
12-15 months   MAL-ED           INDIA                          Medium               High              -0.0297901   -0.0704316    0.0108515
12-15 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low                  High              -0.0264718   -0.0701503    0.0172067
12-15 months   MAL-ED           NEPAL                          Medium               High               0.0184404   -0.0280782    0.0649591
12-15 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low                  High              -0.0229606   -0.0680411    0.0221199
12-15 months   MAL-ED           PERU                           Medium               High              -0.0206592   -0.0671675    0.0258490
12-15 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0022375   -0.0616199    0.0571448
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0061820   -0.0783204    0.0659565
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0210533   -0.0930546    0.1351613
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0511758   -0.0575134    0.1598650
12-15 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low                  High               0.0131125   -0.0309761    0.0572011
12-15 months   NIH-Birth        BANGLADESH                     Medium               High               0.0054626   -0.0275432    0.0384683
12-15 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0399717   -0.0624828   -0.0174606
12-15 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0340984   -0.0578833   -0.0103135
12-15 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Low                  High              -0.1234913   -0.3933541    0.1463716
12-15 months   PROBIT           BELARUS                        Medium               High              -0.0614923   -0.3125868    0.1896022
12-15 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low                  High              -0.0191789   -0.0450905    0.0067327
12-15 months   PROVIDE          BANGLADESH                     Medium               High              -0.0156521   -0.0404195    0.0091152
12-15 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low                  High              -0.0155716   -0.0526073    0.0214642
12-15 months   SAS-CompFeed     INDIA                          Medium               High              -0.0269940   -0.0679530    0.0139651
12-15 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          Low                  High              -0.0501838   -0.1514826    0.0511150
12-15 months   SAS-FoodSuppl    INDIA                          Medium               High              -0.0925643   -0.2619411    0.0768126
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0907289   -0.1763999   -0.0050578
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0011813   -0.0316028    0.0339653
12-15 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0054666   -0.0223881    0.0333213
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0001644   -0.0252302    0.0255590
15-18 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0133026   -0.0655048    0.0388996
15-18 months   CMC-V-BCS-2002   INDIA                          Medium               High               0.0245848   -0.0354932    0.0846628
15-18 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low                  High              -0.0200067   -0.0519017    0.0118884
15-18 months   COHORTS          GUATEMALA                      Medium               High              -0.0024634   -0.0344828    0.0295560
15-18 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low                  High              -0.0762340   -0.1772148    0.0247467
15-18 months   EE               PAKISTAN                       Medium               High              -0.0429300   -0.1461211    0.0602611
15-18 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low                  High               0.0185942   -0.0250274    0.0622159
15-18 months   GMS-Nepal        NEPAL                          Medium               High               0.0083116   -0.0381566    0.0547798
15-18 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low                  High               0.0017950   -0.0342223    0.0378123
15-18 months   IRC              INDIA                          Medium               High               0.0214874   -0.0159078    0.0588825
15-18 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Low                  High               0.0545366   -0.0061487    0.1152218
15-18 months   LCNI-5           MALAWI                         Medium               High               0.0051675   -0.0554280    0.0657630
15-18 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low                  High               0.0201106   -0.0156547    0.0558759
15-18 months   MAL-ED           BANGLADESH                     Medium               High               0.0186588   -0.0180990    0.0554166
15-18 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low                  High              -0.0438055   -0.0985359    0.0109248
15-18 months   MAL-ED           BRAZIL                         Medium               High              -0.0083042   -0.0562116    0.0396032
15-18 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low                  High              -0.0166019   -0.0498051    0.0166014
15-18 months   MAL-ED           INDIA                          Medium               High              -0.0110588   -0.0456230    0.0235053
15-18 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low                  High              -0.0024598   -0.0417354    0.0368159
15-18 months   MAL-ED           NEPAL                          Medium               High              -0.0309471   -0.0732321    0.0113379
15-18 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low                  High              -0.0260919   -0.0653878    0.0132041
15-18 months   MAL-ED           PERU                           Medium               High              -0.0302541   -0.0694814    0.0089733
15-18 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0189165   -0.0659388    0.0281059
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0417326   -0.0921490    0.0086838
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0497428   -0.1303117    0.2297973
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0852874   -0.0918736    0.2624483
15-18 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low                  High              -0.0188067   -0.0539786    0.0163653
15-18 months   NIH-Birth        BANGLADESH                     Medium               High              -0.0170316   -0.0538206    0.0197573
15-18 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low                  High               0.0060943   -0.0150812    0.0272699
15-18 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0121347   -0.0070006    0.0312701
15-18 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Low                  High               0.0244841   -0.5229946    0.5719628
15-18 months   PROBIT           BELARUS                        Medium               High              -0.0167389   -0.4807917    0.4473140
15-18 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low                  High              -0.0159019   -0.0377676    0.0059639
15-18 months   PROVIDE          BANGLADESH                     Medium               High              -0.0176559   -0.0379890    0.0026773
15-18 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low                  High              -0.0294598   -0.0788695    0.0199500
15-18 months   SAS-CompFeed     INDIA                          Medium               High              -0.0210475   -0.0707166    0.0286217
15-18 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          Low                  High               0.0305941   -0.0133620    0.0745502
15-18 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0229523   -0.0243853    0.0702898
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0014257   -0.0801175    0.0772661
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0011431   -0.0371551    0.0394412
15-18 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0278604   -0.0562605    0.0005397
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0155941   -0.0430129    0.0118247
18-21 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low                  High              -0.0284268   -0.0774838    0.0206301
18-21 months   CMC-V-BCS-2002   INDIA                          Medium               High               0.0248584   -0.0324432    0.0821599
18-21 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low                  High              -0.0068147   -0.0341350    0.0205056
18-21 months   COHORTS          GUATEMALA                      Medium               High               0.0040979   -0.0228563    0.0310520
18-21 months   EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low                  High               0.0231734   -0.0827612    0.1291079
18-21 months   EE               PAKISTAN                       Medium               High               0.0454077   -0.0637810    0.1545964
18-21 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low                  High              -0.0147975   -0.0639358    0.0343407
18-21 months   GMS-Nepal        NEPAL                          Medium               High              -0.0064898   -0.0567222    0.0437425
18-21 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low                  High              -0.0050223   -0.0367822    0.0267376
18-21 months   IRC              INDIA                          Medium               High              -0.0281428   -0.0612448    0.0049592
18-21 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Low                  High               0.0369783    0.0036337    0.0703229
18-21 months   LCNI-5           MALAWI                         Medium               High              -0.0181290   -0.0631059    0.0268480
18-21 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low                  High              -0.0192917   -0.0506612    0.0120778
18-21 months   MAL-ED           BANGLADESH                     Medium               High              -0.0040658   -0.0337991    0.0256675
18-21 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low                  High              -0.0023404   -0.0757270    0.0710462
18-21 months   MAL-ED           BRAZIL                         Medium               High              -0.0337159   -0.0839056    0.0164738
18-21 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low                  High              -0.0151378   -0.0442107    0.0139351
18-21 months   MAL-ED           INDIA                          Medium               High              -0.0241189   -0.0555964    0.0073586
18-21 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low                  High              -0.0127002   -0.0511278    0.0257275
18-21 months   MAL-ED           NEPAL                          Medium               High              -0.0008055   -0.0380143    0.0364032
18-21 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low                  High              -0.0198901   -0.0577549    0.0179747
18-21 months   MAL-ED           PERU                           Medium               High               0.0066643   -0.0323446    0.0456732
18-21 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0105596   -0.0345416    0.0556607
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0269846   -0.0748668    0.0208977
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0071775   -0.1104645    0.1248196
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0525016   -0.0602723    0.1652754
18-21 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low                  High               0.0047245   -0.0273512    0.0368001
18-21 months   NIH-Birth        BANGLADESH                     Medium               High              -0.0063212   -0.0382444    0.0256020
18-21 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0275314   -0.0471424   -0.0079205
18-21 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0169737   -0.0363664    0.0024190
18-21 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Low                  High              -0.0617741   -0.7629907    0.6394425
18-21 months   PROBIT           BELARUS                        Medium               High              -0.1231162   -0.7023408    0.4561084
18-21 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low                  High              -0.0058168   -0.0251820    0.0135484
18-21 months   PROVIDE          BANGLADESH                     Medium               High               0.0016933   -0.0179636    0.0213502
18-21 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0088076   -0.0198288    0.0374440
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0087128   -0.0376959    0.0202704
21-24 months   CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low                  High               0.0309489   -0.0212235    0.0831214
21-24 months   CMC-V-BCS-2002   INDIA                          Medium               High               0.0191136   -0.0296097    0.0678370
21-24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low                  High               0.0009107   -0.0192313    0.0210527
21-24 months   COHORTS          GUATEMALA                      Medium               High              -0.0004657   -0.0229094    0.0219780
21-24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low                  High              -0.0201239   -0.0812618    0.0410139
21-24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0360415   -0.1025359    0.0304528
21-24 months   IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low                  High               0.0087855   -0.0250040    0.0425750
21-24 months   IRC              INDIA                          Medium               High              -0.0177103   -0.0514291    0.0160085
21-24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Low                  High               0.0304241   -0.0059114    0.0667595
21-24 months   LCNI-5           MALAWI                         Medium               High               0.0152254   -0.0229043    0.0533551
21-24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low                  High               0.0032756   -0.0279463    0.0344974
21-24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0102264   -0.0423008    0.0218480
21-24 months   MAL-ED           BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low                  High               0.0189198   -0.0191244    0.0569641
21-24 months   MAL-ED           BRAZIL                         Medium               High              -0.0115927   -0.0485133    0.0253279
21-24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low                  High              -0.0265631   -0.0563077    0.0031815
21-24 months   MAL-ED           INDIA                          Medium               High              -0.0159317   -0.0453794    0.0135159
21-24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low                  High              -0.0047131   -0.0423045    0.0328782
21-24 months   MAL-ED           NEPAL                          Medium               High              -0.0072876   -0.0435735    0.0289983
21-24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low                  High               0.0259334   -0.0114389    0.0633057
21-24 months   MAL-ED           PERU                           Medium               High               0.0033954   -0.0331393    0.0399300
21-24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0152700   -0.0251842    0.0557242
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0331686   -0.0096259    0.0759632
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1062787   -0.2546877    0.0421303
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1041944   -0.2510450    0.0426563
21-24 months   NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low                  High               0.0063012   -0.0221473    0.0347498
21-24 months   NIH-Birth        BANGLADESH                     Medium               High               0.0052928   -0.0235512    0.0341368
21-24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0105192   -0.0314055    0.0103671
21-24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0148501   -0.0338952    0.0041949
21-24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Low                  High              -0.0393928   -0.4896149    0.4108293
21-24 months   PROBIT           BELARUS                        Medium               High              -0.0551458   -0.5017764    0.3914849
21-24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0044295   -0.0263532    0.0174943
21-24 months   PROVIDE          BANGLADESH                     Medium               High               0.0024852   -0.0178251    0.0227955
21-24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0040023   -0.0337597    0.0257551
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0037304   -0.0343584    0.0268976


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0423959   -0.1372702    0.0524785
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.0052265   -0.0436305    0.0331775
0-3 months     COHORTS          INDIA                          High                 NA                -0.0563909   -0.0754283   -0.0373535
0-3 months     EE               PAKISTAN                       High                 NA                -0.0757437   -0.2693390    0.1178516
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0355558   -0.1039005    0.0327890
0-3 months     IRC              INDIA                          High                 NA                -0.0795371   -0.1643549    0.0052807
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0050278   -0.0495166    0.0394609
0-3 months     MAL-ED           BRAZIL                         High                 NA                -0.0396365   -0.1155138    0.0362409
0-3 months     MAL-ED           INDIA                          High                 NA                -0.0758138   -0.1753750    0.0237474
0-3 months     MAL-ED           NEPAL                          High                 NA                -0.0862137   -0.1703468   -0.0020806
0-3 months     MAL-ED           PERU                           High                 NA                -0.0583388   -0.1109183   -0.0057593
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0616301   -0.1379580    0.0146978
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1251141   -0.2952001    0.0449720
0-3 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0125668   -0.0555606    0.0304270
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0035618   -0.0206982    0.0278218
0-3 months     PROBIT           BELARUS                        High                 NA                -0.0213365   -0.0479115    0.0052385
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.0138163   -0.0378046    0.0101719
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.0101585   -0.0599591    0.0396421
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0036309   -0.0131978    0.0059361
3-6 months     CMC-V-BCS-2002   INDIA                          High                 NA                -0.0243421   -0.0789849    0.0303008
3-6 months     COHORTS          GUATEMALA                      High                 NA                 0.0177545   -0.0099421    0.0454511
3-6 months     COHORTS          INDIA                          High                 NA                -0.0297838   -0.0453133   -0.0142543
3-6 months     EE               PAKISTAN                       High                 NA                -0.0593819   -0.1688943    0.0501305
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.0221537   -0.0681806    0.0238731
3-6 months     IRC              INDIA                          High                 NA                 0.0431893   -0.0030042    0.0893828
3-6 months     MAL-ED           BANGLADESH                     High                 NA                -0.0179756   -0.0503948    0.0144437
3-6 months     MAL-ED           BRAZIL                         High                 NA                 0.0262172   -0.0252397    0.0776741
3-6 months     MAL-ED           INDIA                          High                 NA                 0.0499131    0.0038013    0.0960248
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0016506   -0.0513773    0.0480761
3-6 months     MAL-ED           PERU                           High                 NA                 0.0300957   -0.0182236    0.0784149
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0054795   -0.0663729    0.0554140
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2035328    0.0434896    0.3635760
3-6 months     NIH-Birth        BANGLADESH                     High                 NA                -0.0419452   -0.0762604   -0.0076301
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0148131   -0.0380216    0.0083954
3-6 months     PROBIT           BELARUS                        High                 NA                -0.0024268   -0.0194157    0.0145620
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0029786   -0.0250297    0.0190726
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0355034   -0.0561520   -0.0148547
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0023644   -0.0269737    0.0317025
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0085683   -0.0171697    0.0000331
6-9 months     CMC-V-BCS-2002   INDIA                          High                 NA                 0.0115352   -0.0289814    0.0520518
6-9 months     COHORTS          GUATEMALA                      High                 NA                 0.0296200    0.0050584    0.0541815
6-9 months     COHORTS          INDIA                          High                 NA                -0.0175704   -0.0314063   -0.0037346
6-9 months     EE               PAKISTAN                       High                 NA                -0.0342408   -0.1256866    0.0572050
6-9 months     GMS-Nepal        NEPAL                          High                 NA                 0.0113574   -0.0248929    0.0476078
6-9 months     Guatemala BSC    GUATEMALA                      High                 NA                 0.0010001   -0.0217386    0.0237389
6-9 months     IRC              INDIA                          High                 NA                -0.0287465   -0.0626141    0.0051212
6-9 months     LCNI-5           MALAWI                         High                 NA                -0.0004256   -0.0205480    0.0196968
6-9 months     MAL-ED           BANGLADESH                     High                 NA                 0.0067152   -0.0188160    0.0322464
6-9 months     MAL-ED           BRAZIL                         High                 NA                -0.0605093   -0.1143358   -0.0066827
6-9 months     MAL-ED           INDIA                          High                 NA                 0.0055501   -0.0296599    0.0407600
6-9 months     MAL-ED           NEPAL                          High                 NA                 0.0147891   -0.0231000    0.0526783
6-9 months     MAL-ED           PERU                           High                 NA                -0.0134117   -0.0535111    0.0266876
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0024287   -0.0477263    0.0428688
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2801597   -0.5917565    0.0314370
6-9 months     NIH-Birth        BANGLADESH                     High                 NA                 0.0049234   -0.0240709    0.0339177
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0045475   -0.0226758    0.0135808
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0115060   -0.0017733    0.0247854
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0220133   -0.0366404   -0.0073862
6-9 months     SAS-CompFeed     INDIA                          High                 NA                 0.0113195   -0.0128833    0.0355223
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                -0.0386770   -0.0929321    0.0155781
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0294009   -0.0584048   -0.0003971
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0083287   -0.0160509   -0.0006066
9-12 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0148003   -0.0186145    0.0482151
9-12 months    COHORTS          GUATEMALA                      High                 NA                 0.0010080   -0.0165670    0.0185830
9-12 months    COHORTS          INDIA                          High                 NA                -0.0191670   -0.0327111   -0.0056228
9-12 months    EE               PAKISTAN                       High                 NA                -0.0001578   -0.0680945    0.0677790
9-12 months    GMS-Nepal        NEPAL                          High                 NA                -0.0167673   -0.0490226    0.0154879
9-12 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0239363   -0.0422637   -0.0056090
9-12 months    IRC              INDIA                          High                 NA                -0.0003497   -0.0262054    0.0255060
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0040957   -0.0280100    0.0198187
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0090293   -0.0340163    0.0159576
9-12 months    MAL-ED           BRAZIL                         High                 NA                 0.0227630   -0.0186244    0.0641504
9-12 months    MAL-ED           INDIA                          High                 NA                -0.0048510   -0.0340602    0.0243582
9-12 months    MAL-ED           NEPAL                          High                 NA                 0.0103320   -0.0205455    0.0412095
9-12 months    MAL-ED           PERU                           High                 NA                -0.0168030   -0.0500103    0.0164043
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.0044535   -0.0363593    0.0452663
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0981499   -0.2807541    0.4770540
9-12 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0334378   -0.0563684   -0.0105072
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0054285   -0.0204493    0.0095922
9-12 months    PROBIT           BELARUS                        High                 NA                -0.0014008   -0.0151639    0.0123624
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0139004   -0.0295536    0.0017527
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0279500   -0.0564771    0.0005772
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0981303    0.0357714    0.1604893
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0081484   -0.0338159    0.0175192
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0064474   -0.0133477    0.0004528
12-15 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0403518   -0.0742192   -0.0064844
12-15 months   COHORTS          GUATEMALA                      High                 NA                 0.0049708   -0.0143830    0.0243247
12-15 months   EE               PAKISTAN                       High                 NA                -0.0367005   -0.1070605    0.0336596
12-15 months   GMS-Nepal        NEPAL                          High                 NA                -0.0227840   -0.0504620    0.0048939
12-15 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.0014755   -0.0258417    0.0287926
12-15 months   IRC              INDIA                          High                 NA                 0.0014113   -0.0220326    0.0248552
12-15 months   LCNI-5           MALAWI                         High                 NA                -0.0553101   -0.1060510   -0.0045693
12-15 months   MAL-ED           BANGLADESH                     High                 NA                 0.0104267   -0.0125318    0.0333852
12-15 months   MAL-ED           BRAZIL                         High                 NA                -0.0320865   -0.0627373   -0.0014356
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0160792   -0.0425360    0.0103776
12-15 months   MAL-ED           NEPAL                          High                 NA                -0.0049575   -0.0369452    0.0270302
12-15 months   MAL-ED           PERU                           High                 NA                -0.0149792   -0.0432667    0.0133082
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0024053   -0.0440244    0.0392139
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0395817   -0.0629120    0.1420753
12-15 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0066436   -0.0165197    0.0298070
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0242733   -0.0377084   -0.0108381
12-15 months   PROBIT           BELARUS                        High                 NA                -0.0735886   -0.2663177    0.1191406
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0112272   -0.0259201    0.0034657
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0162162   -0.0450589    0.0126265
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0494738   -0.1395988    0.0406513
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0024924   -0.0273188    0.0223340
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0012399   -0.0089915    0.0114713
15-18 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0036931   -0.0254797    0.0328659
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0102527   -0.0342533    0.0137479
15-18 months   EE               PAKISTAN                       High                 NA                -0.0705759   -0.1678254    0.0266736
15-18 months   GMS-Nepal        NEPAL                          High                 NA                 0.0147257   -0.0232140    0.0526654
15-18 months   IRC              INDIA                          High                 NA                 0.0079515   -0.0145766    0.0304796
15-18 months   LCNI-5           MALAWI                         High                 NA                 0.0213566   -0.0139498    0.0566631
15-18 months   MAL-ED           BANGLADESH                     High                 NA                 0.0119109   -0.0070375    0.0308593
15-18 months   MAL-ED           BRAZIL                         High                 NA                -0.0138191   -0.0411614    0.0135233
15-18 months   MAL-ED           INDIA                          High                 NA                -0.0098347   -0.0311663    0.0114968
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0117005   -0.0398733    0.0164722
15-18 months   MAL-ED           PERU                           High                 NA                -0.0194021   -0.0435507    0.0047464
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0184873   -0.0501448    0.0131703
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0709505   -0.0985632    0.2404642
15-18 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0126310   -0.0346086    0.0093465
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0060555   -0.0050222    0.0171332
15-18 months   PROBIT           BELARUS                        High                 NA                 0.0010040   -0.3664507    0.3684587
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0109448   -0.0225725    0.0006830
15-18 months   SAS-CompFeed     INDIA                          High                 NA                -0.0202608   -0.0577226    0.0172010
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0266261   -0.0124482    0.0657004
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0008069   -0.0285414    0.0301552
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0103703   -0.0210058    0.0002653
18-21 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0005870   -0.0267442    0.0255703
18-21 months   COHORTS          GUATEMALA                      High                 NA                -0.0018318   -0.0220511    0.0183874
18-21 months   EE               PAKISTAN                       High                 NA                 0.0244633   -0.0776094    0.1265360
18-21 months   GMS-Nepal        NEPAL                          High                 NA                -0.0115530   -0.0543651    0.0312591
18-21 months   IRC              INDIA                          High                 NA                -0.0112061   -0.0306184    0.0082062
18-21 months   LCNI-5           MALAWI                         High                 NA                 0.0062975   -0.0146468    0.0272419
18-21 months   MAL-ED           BANGLADESH                     High                 NA                -0.0076403   -0.0247751    0.0094945
18-21 months   MAL-ED           BRAZIL                         High                 NA                -0.0133738   -0.0442515    0.0175038
18-21 months   MAL-ED           INDIA                          High                 NA                -0.0142583   -0.0336523    0.0051356
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0056690   -0.0326697    0.0213318
18-21 months   MAL-ED           PERU                           High                 NA                -0.0047050   -0.0286297    0.0192197
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0004882   -0.0300480    0.0290715
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0364594   -0.0706638    0.1435827
18-21 months   NIH-Birth        BANGLADESH                     High                 NA                -0.0003132   -0.0205352    0.0199087
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0138618   -0.0246640   -0.0030596
18-21 months   PROBIT           BELARUS                        High                 NA                -0.0816792   -0.5438707    0.3805124
18-21 months   PROVIDE          BANGLADESH                     High                 NA                -0.0011498   -0.0122024    0.0099027
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0002187   -0.0116860    0.0112485
21-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0142119   -0.0108681    0.0392920
21-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0002703   -0.0150200    0.0155605
21-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0208834   -0.0747834    0.0330166
21-24 months   IRC              INDIA                          High                 NA                -0.0028249   -0.0234584    0.0178087
21-24 months   LCNI-5           MALAWI                         High                 NA                 0.0136305   -0.0059175    0.0331784
21-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0018605   -0.0179247    0.0142036
21-24 months   MAL-ED           BRAZIL                         High                 NA                 0.0000459   -0.0192441    0.0193360
21-24 months   MAL-ED           INDIA                          High                 NA                -0.0151574   -0.0344675    0.0041526
21-24 months   MAL-ED           NEPAL                          High                 NA                -0.0045669   -0.0306706    0.0215368
21-24 months   MAL-ED           PERU                           High                 NA                 0.0106559   -0.0118028    0.0331146
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0147896   -0.0120633    0.0416426
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1004535   -0.2399307    0.0390237
21-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0040769   -0.0132803    0.0214340
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0080932   -0.0186798    0.0024934
21-24 months   PROBIT           BELARUS                        High                 NA                -0.0392402   -0.3849872    0.3065069
21-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0004907   -0.0126533    0.0116719
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0018408   -0.0137473    0.0100656
