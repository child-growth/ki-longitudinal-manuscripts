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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        feducyrs    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     COHORTS          GUATEMALA                      High           142     760
0-3 months     COHORTS          GUATEMALA                      Low            331     760
0-3 months     COHORTS          GUATEMALA                      Medium         287     760
0-3 months     COHORTS          INDIA                          High           520    1343
0-3 months     COHORTS          INDIA                          Low            440    1343
0-3 months     COHORTS          INDIA                          Medium         383    1343
0-3 months     GMS-Nepal        NEPAL                          High           127     508
0-3 months     GMS-Nepal        NEPAL                          Low            227     508
0-3 months     GMS-Nepal        NEPAL                          Medium         154     508
0-3 months     JiVitA-3         BANGLADESH                     High          4442   19562
0-3 months     JiVitA-3         BANGLADESH                     Low           8417   19562
0-3 months     JiVitA-3         BANGLADESH                     Medium        6703   19562
0-3 months     JiVitA-4         BANGLADESH                     High           371    1743
0-3 months     JiVitA-4         BANGLADESH                     Low            681    1743
0-3 months     JiVitA-4         BANGLADESH                     Medium         691    1743
0-3 months     MAL-ED           BANGLADESH                     High            50     138
0-3 months     MAL-ED           BANGLADESH                     Low             38     138
0-3 months     MAL-ED           BANGLADESH                     Medium          50     138
0-3 months     MAL-ED           INDIA                          High            42     136
0-3 months     MAL-ED           INDIA                          Low             55     136
0-3 months     MAL-ED           INDIA                          Medium          39     136
0-3 months     MAL-ED           NEPAL                          High            38      92
0-3 months     MAL-ED           NEPAL                          Low             27      92
0-3 months     MAL-ED           NEPAL                          Medium          27      92
0-3 months     MAL-ED           PERU                           High           111     232
0-3 months     MAL-ED           PERU                           Low             63     232
0-3 months     MAL-ED           PERU                           Medium          58     232
0-3 months     MAL-ED           SOUTH AFRICA                   High            37      98
0-3 months     MAL-ED           SOUTH AFRICA                   Low             36      98
0-3 months     MAL-ED           SOUTH AFRICA                   Medium          25      98
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           122     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             53     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          17     192
0-3 months     NIH-Crypto       BANGLADESH                     High           283     725
0-3 months     NIH-Crypto       BANGLADESH                     Low            232     725
0-3 months     NIH-Crypto       BANGLADESH                     Medium         210     725
0-3 months     PROBIT           BELARUS                        High          2448   14792
0-3 months     PROBIT           BELARUS                        Low           5793   14792
0-3 months     PROBIT           BELARUS                        Medium        6551   14792
0-3 months     PROVIDE          BANGLADESH                     High           219     640
0-3 months     PROVIDE          BANGLADESH                     Low            217     640
0-3 months     PROVIDE          BANGLADESH                     Medium         204     640
0-3 months     SAS-CompFeed     INDIA                          High           324    1262
0-3 months     SAS-CompFeed     INDIA                          Low            540    1262
0-3 months     SAS-CompFeed     INDIA                          Medium         398    1262
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           372    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1073    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         567    2012
0-3 months     ZVITAMBO         ZIMBABWE                       High           558    7928
0-3 months     ZVITAMBO         ZIMBABWE                       Low           1419    7928
0-3 months     ZVITAMBO         ZIMBABWE                       Medium        5951    7928
3-6 months     COHORTS          GUATEMALA                      High           142     765
3-6 months     COHORTS          GUATEMALA                      Low            337     765
3-6 months     COHORTS          GUATEMALA                      Medium         286     765
3-6 months     COHORTS          INDIA                          High           533    1358
3-6 months     COHORTS          INDIA                          Low            442    1358
3-6 months     COHORTS          INDIA                          Medium         383    1358
3-6 months     GMS-Nepal        NEPAL                          High           117     468
3-6 months     GMS-Nepal        NEPAL                          Low            210     468
3-6 months     GMS-Nepal        NEPAL                          Medium         141     468
3-6 months     JiVitA-3         BANGLADESH                     High          3187   12223
3-6 months     JiVitA-3         BANGLADESH                     Low           4826   12223
3-6 months     JiVitA-3         BANGLADESH                     Medium        4210   12223
3-6 months     JiVitA-4         BANGLADESH                     High           401    1771
3-6 months     JiVitA-4         BANGLADESH                     Low            672    1771
3-6 months     JiVitA-4         BANGLADESH                     Medium         698    1771
3-6 months     MAL-ED           BANGLADESH                     High            50     129
3-6 months     MAL-ED           BANGLADESH                     Low             34     129
3-6 months     MAL-ED           BANGLADESH                     Medium          45     129
3-6 months     MAL-ED           INDIA                          High            42     132
3-6 months     MAL-ED           INDIA                          Low             53     132
3-6 months     MAL-ED           INDIA                          Medium          37     132
3-6 months     MAL-ED           NEPAL                          High            38      93
3-6 months     MAL-ED           NEPAL                          Low             27      93
3-6 months     MAL-ED           NEPAL                          Medium          28      93
3-6 months     MAL-ED           PERU                           High           105     220
3-6 months     MAL-ED           PERU                           Low             60     220
3-6 months     MAL-ED           PERU                           Medium          55     220
3-6 months     MAL-ED           SOUTH AFRICA                   High            32      89
3-6 months     MAL-ED           SOUTH AFRICA                   Low             34      89
3-6 months     MAL-ED           SOUTH AFRICA                   Medium          23      89
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           123     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             54     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          17     194
3-6 months     NIH-Crypto       BANGLADESH                     High           274     702
3-6 months     NIH-Crypto       BANGLADESH                     Low            220     702
3-6 months     NIH-Crypto       BANGLADESH                     Medium         208     702
3-6 months     PROBIT           BELARUS                        High          2109   12842
3-6 months     PROBIT           BELARUS                        Low           5039   12842
3-6 months     PROBIT           BELARUS                        Medium        5694   12842
3-6 months     PROVIDE          BANGLADESH                     High           209     601
3-6 months     PROVIDE          BANGLADESH                     Low            209     601
3-6 months     PROVIDE          BANGLADESH                     Medium         183     601
3-6 months     SAS-CompFeed     INDIA                          High           287    1115
3-6 months     SAS-CompFeed     INDIA                          Low            467    1115
3-6 months     SAS-CompFeed     INDIA                          Medium         361    1115
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           309    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            885    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         465    1659
3-6 months     ZVITAMBO         ZIMBABWE                       High           407    5953
3-6 months     ZVITAMBO         ZIMBABWE                       Low           1076    5953
3-6 months     ZVITAMBO         ZIMBABWE                       Medium        4470    5953
6-9 months     COHORTS          GUATEMALA                      High           142     783
6-9 months     COHORTS          GUATEMALA                      Low            350     783
6-9 months     COHORTS          GUATEMALA                      Medium         291     783
6-9 months     COHORTS          INDIA                          High           489    1252
6-9 months     COHORTS          INDIA                          Low            412    1252
6-9 months     COHORTS          INDIA                          Medium         351    1252
6-9 months     GMS-Nepal        NEPAL                          High           114     476
6-9 months     GMS-Nepal        NEPAL                          Low            210     476
6-9 months     GMS-Nepal        NEPAL                          Medium         152     476
6-9 months     JiVitA-4         BANGLADESH                     High           711    2980
6-9 months     JiVitA-4         BANGLADESH                     Low           1104    2980
6-9 months     JiVitA-4         BANGLADESH                     Medium        1165    2980
6-9 months     LCNI-5           MALAWI                         High           176     554
6-9 months     LCNI-5           MALAWI                         Low            190     554
6-9 months     LCNI-5           MALAWI                         Medium         188     554
6-9 months     MAL-ED           BANGLADESH                     High            47     123
6-9 months     MAL-ED           BANGLADESH                     Low             32     123
6-9 months     MAL-ED           BANGLADESH                     Medium          44     123
6-9 months     MAL-ED           INDIA                          High            43     133
6-9 months     MAL-ED           INDIA                          Low             51     133
6-9 months     MAL-ED           INDIA                          Medium          39     133
6-9 months     MAL-ED           NEPAL                          High            38      91
6-9 months     MAL-ED           NEPAL                          Low             27      91
6-9 months     MAL-ED           NEPAL                          Medium          26      91
6-9 months     MAL-ED           PERU                           High            94     199
6-9 months     MAL-ED           PERU                           Low             54     199
6-9 months     MAL-ED           PERU                           Medium          51     199
6-9 months     MAL-ED           SOUTH AFRICA                   High            31      85
6-9 months     MAL-ED           SOUTH AFRICA                   Low             33      85
6-9 months     MAL-ED           SOUTH AFRICA                   Medium          21      85
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           118     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             51     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     185
6-9 months     NIH-Crypto       BANGLADESH                     High           271     693
6-9 months     NIH-Crypto       BANGLADESH                     Low            216     693
6-9 months     NIH-Crypto       BANGLADESH                     Medium         206     693
6-9 months     PROBIT           BELARUS                        High          1948   12010
6-9 months     PROBIT           BELARUS                        Low           4737   12010
6-9 months     PROBIT           BELARUS                        Medium        5325   12010
6-9 months     PROVIDE          BANGLADESH                     High           198     576
6-9 months     PROVIDE          BANGLADESH                     Low            199     576
6-9 months     PROVIDE          BANGLADESH                     Medium         179     576
6-9 months     SAS-CompFeed     INDIA                          High           291    1135
6-9 months     SAS-CompFeed     INDIA                          Low            483    1135
6-9 months     SAS-CompFeed     INDIA                          Medium         361    1135
6-9 months     SAS-FoodSuppl    INDIA                          High            77     309
6-9 months     SAS-FoodSuppl    INDIA                          Low            112     309
6-9 months     SAS-FoodSuppl    INDIA                          Medium         120     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           279    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            793    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         416    1488
6-9 months     ZVITAMBO         ZIMBABWE                       High           365    5409
6-9 months     ZVITAMBO         ZIMBABWE                       Low            989    5409
6-9 months     ZVITAMBO         ZIMBABWE                       Medium        4055    5409
9-12 months    COHORTS          GUATEMALA                      High           163     883
9-12 months    COHORTS          GUATEMALA                      Low            389     883
9-12 months    COHORTS          GUATEMALA                      Medium         331     883
9-12 months    COHORTS          INDIA                          High           446    1128
9-12 months    COHORTS          INDIA                          Low            364    1128
9-12 months    COHORTS          INDIA                          Medium         318    1128
9-12 months    GMS-Nepal        NEPAL                          High           109     453
9-12 months    GMS-Nepal        NEPAL                          Low            201     453
9-12 months    GMS-Nepal        NEPAL                          Medium         143     453
9-12 months    JiVitA-4         BANGLADESH                     High           809    3415
9-12 months    JiVitA-4         BANGLADESH                     Low           1254    3415
9-12 months    JiVitA-4         BANGLADESH                     Medium        1352    3415
9-12 months    LCNI-5           MALAWI                         High           110     379
9-12 months    LCNI-5           MALAWI                         Low            129     379
9-12 months    LCNI-5           MALAWI                         Medium         140     379
9-12 months    MAL-ED           BANGLADESH                     High            46     124
9-12 months    MAL-ED           BANGLADESH                     Low             34     124
9-12 months    MAL-ED           BANGLADESH                     Medium          44     124
9-12 months    MAL-ED           INDIA                          High            42     132
9-12 months    MAL-ED           INDIA                          Low             52     132
9-12 months    MAL-ED           INDIA                          Medium          38     132
9-12 months    MAL-ED           NEPAL                          High            38      90
9-12 months    MAL-ED           NEPAL                          Low             26      90
9-12 months    MAL-ED           NEPAL                          Medium          26      90
9-12 months    MAL-ED           PERU                           High            89     191
9-12 months    MAL-ED           PERU                           Low             53     191
9-12 months    MAL-ED           PERU                           Medium          49     191
9-12 months    MAL-ED           SOUTH AFRICA                   High            32      87
9-12 months    MAL-ED           SOUTH AFRICA                   Low             33      87
9-12 months    MAL-ED           SOUTH AFRICA                   Medium          22      87
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           117     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             51     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     184
9-12 months    NIH-Crypto       BANGLADESH                     High           268     683
9-12 months    NIH-Crypto       BANGLADESH                     Low            210     683
9-12 months    NIH-Crypto       BANGLADESH                     Medium         205     683
9-12 months    PROBIT           BELARUS                        High          2001   12263
9-12 months    PROBIT           BELARUS                        Low           4827   12263
9-12 months    PROBIT           BELARUS                        Medium        5435   12263
9-12 months    PROVIDE          BANGLADESH                     High           196     569
9-12 months    PROVIDE          BANGLADESH                     Low            191     569
9-12 months    PROVIDE          BANGLADESH                     Medium         182     569
9-12 months    SAS-CompFeed     INDIA                          High           288    1138
9-12 months    SAS-CompFeed     INDIA                          Low            482    1138
9-12 months    SAS-CompFeed     INDIA                          Medium         368    1138
9-12 months    SAS-FoodSuppl    INDIA                          High            75     298
9-12 months    SAS-FoodSuppl    INDIA                          Low            106     298
9-12 months    SAS-FoodSuppl    INDIA                          Medium         117     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           207    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            562    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         309    1078
9-12 months    ZVITAMBO         ZIMBABWE                       High           309    4906
9-12 months    ZVITAMBO         ZIMBABWE                       Low            887    4906
9-12 months    ZVITAMBO         ZIMBABWE                       Medium        3710    4906
12-15 months   COHORTS          GUATEMALA                      High           159     838
12-15 months   COHORTS          GUATEMALA                      Low            382     838
12-15 months   COHORTS          GUATEMALA                      Medium         297     838
12-15 months   GMS-Nepal        NEPAL                          High           103     451
12-15 months   GMS-Nepal        NEPAL                          Low            200     451
12-15 months   GMS-Nepal        NEPAL                          Medium         148     451
12-15 months   JiVitA-4         BANGLADESH                     High           795    3441
12-15 months   JiVitA-4         BANGLADESH                     Low           1264    3441
12-15 months   JiVitA-4         BANGLADESH                     Medium        1382    3441
12-15 months   LCNI-5           MALAWI                         High            37     125
12-15 months   LCNI-5           MALAWI                         Low             46     125
12-15 months   LCNI-5           MALAWI                         Medium          42     125
12-15 months   MAL-ED           BANGLADESH                     High            41     119
12-15 months   MAL-ED           BANGLADESH                     Low             35     119
12-15 months   MAL-ED           BANGLADESH                     Medium          43     119
12-15 months   MAL-ED           INDIA                          High            42     131
12-15 months   MAL-ED           INDIA                          Low             51     131
12-15 months   MAL-ED           INDIA                          Medium          38     131
12-15 months   MAL-ED           NEPAL                          High            39      91
12-15 months   MAL-ED           NEPAL                          Low             26      91
12-15 months   MAL-ED           NEPAL                          Medium          26      91
12-15 months   MAL-ED           PERU                           High            89     182
12-15 months   MAL-ED           PERU                           Low             49     182
12-15 months   MAL-ED           PERU                           Medium          44     182
12-15 months   MAL-ED           SOUTH AFRICA                   High            32      86
12-15 months   MAL-ED           SOUTH AFRICA                   Low             33      86
12-15 months   MAL-ED           SOUTH AFRICA                   Medium          21      86
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           118     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             52     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     185
12-15 months   NIH-Crypto       BANGLADESH                     High           261     666
12-15 months   NIH-Crypto       BANGLADESH                     Low            204     666
12-15 months   NIH-Crypto       BANGLADESH                     Medium         201     666
12-15 months   PROBIT           BELARUS                        High           180     967
12-15 months   PROBIT           BELARUS                        Low            371     967
12-15 months   PROBIT           BELARUS                        Medium         416     967
12-15 months   PROVIDE          BANGLADESH                     High           193     537
12-15 months   PROVIDE          BANGLADESH                     Low            179     537
12-15 months   PROVIDE          BANGLADESH                     Medium         165     537
12-15 months   SAS-CompFeed     INDIA                          High           302    1162
12-15 months   SAS-CompFeed     INDIA                          Low            482    1162
12-15 months   SAS-CompFeed     INDIA                          Medium         378    1162
12-15 months   SAS-FoodSuppl    INDIA                          High            82     300
12-15 months   SAS-FoodSuppl    INDIA                          Low            102     300
12-15 months   SAS-FoodSuppl    INDIA                          Medium         116     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           153     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            415     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         218     786
12-15 months   ZVITAMBO         ZIMBABWE                       High            90    1783
12-15 months   ZVITAMBO         ZIMBABWE                       Low            382    1783
12-15 months   ZVITAMBO         ZIMBABWE                       Medium        1311    1783
15-18 months   COHORTS          GUATEMALA                      High           136     758
15-18 months   COHORTS          GUATEMALA                      Low            349     758
15-18 months   COHORTS          GUATEMALA                      Medium         273     758
15-18 months   GMS-Nepal        NEPAL                          High           112     476
15-18 months   GMS-Nepal        NEPAL                          Low            210     476
15-18 months   GMS-Nepal        NEPAL                          Medium         154     476
15-18 months   JiVitA-4         BANGLADESH                     High           803    3407
15-18 months   JiVitA-4         BANGLADESH                     Low           1260    3407
15-18 months   JiVitA-4         BANGLADESH                     Medium        1344    3407
15-18 months   LCNI-5           MALAWI                         High            35     118
15-18 months   LCNI-5           MALAWI                         Low             43     118
15-18 months   LCNI-5           MALAWI                         Medium          40     118
15-18 months   MAL-ED           BANGLADESH                     High            40     117
15-18 months   MAL-ED           BANGLADESH                     Low             35     117
15-18 months   MAL-ED           BANGLADESH                     Medium          42     117
15-18 months   MAL-ED           INDIA                          High            42     130
15-18 months   MAL-ED           INDIA                          Low             50     130
15-18 months   MAL-ED           INDIA                          Medium          38     130
15-18 months   MAL-ED           NEPAL                          High            37      90
15-18 months   MAL-ED           NEPAL                          Low             27      90
15-18 months   MAL-ED           NEPAL                          Medium          26      90
15-18 months   MAL-ED           PERU                           High            85     174
15-18 months   MAL-ED           PERU                           Low             46     174
15-18 months   MAL-ED           PERU                           Medium          43     174
15-18 months   MAL-ED           SOUTH AFRICA                   High            33      87
15-18 months   MAL-ED           SOUTH AFRICA                   Low             33      87
15-18 months   MAL-ED           SOUTH AFRICA                   Medium          21      87
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           115     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             50     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     180
15-18 months   NIH-Crypto       BANGLADESH                     High           240     605
15-18 months   NIH-Crypto       BANGLADESH                     Low            181     605
15-18 months   NIH-Crypto       BANGLADESH                     Medium         184     605
15-18 months   PROBIT           BELARUS                        High            59     264
15-18 months   PROBIT           BELARUS                        Low             95     264
15-18 months   PROBIT           BELARUS                        Medium         110     264
15-18 months   PROVIDE          BANGLADESH                     High           189     533
15-18 months   PROVIDE          BANGLADESH                     Low            181     533
15-18 months   PROVIDE          BANGLADESH                     Medium         163     533
15-18 months   SAS-CompFeed     INDIA                          High           303    1168
15-18 months   SAS-CompFeed     INDIA                          Low            487    1168
15-18 months   SAS-CompFeed     INDIA                          Medium         378    1168
15-18 months   SAS-FoodSuppl    INDIA                          High            76     290
15-18 months   SAS-FoodSuppl    INDIA                          Low            100     290
15-18 months   SAS-FoodSuppl    INDIA                          Medium         114     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           134     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            352     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         176     662
15-18 months   ZVITAMBO         ZIMBABWE                       High            53    1140
15-18 months   ZVITAMBO         ZIMBABWE                       Low            258    1140
15-18 months   ZVITAMBO         ZIMBABWE                       Medium         829    1140
18-21 months   COHORTS          GUATEMALA                      High           134     755
18-21 months   COHORTS          GUATEMALA                      Low            342     755
18-21 months   COHORTS          GUATEMALA                      Medium         279     755
18-21 months   GMS-Nepal        NEPAL                          High           111     446
18-21 months   GMS-Nepal        NEPAL                          Low            194     446
18-21 months   GMS-Nepal        NEPAL                          Medium         141     446
18-21 months   LCNI-5           MALAWI                         High           140     450
18-21 months   LCNI-5           MALAWI                         Low            153     450
18-21 months   LCNI-5           MALAWI                         Medium         157     450
18-21 months   MAL-ED           BANGLADESH                     High            40     116
18-21 months   MAL-ED           BANGLADESH                     Low             34     116
18-21 months   MAL-ED           BANGLADESH                     Medium          42     116
18-21 months   MAL-ED           INDIA                          High            42     130
18-21 months   MAL-ED           INDIA                          Low             50     130
18-21 months   MAL-ED           INDIA                          Medium          38     130
18-21 months   MAL-ED           NEPAL                          High            37      90
18-21 months   MAL-ED           NEPAL                          Low             27      90
18-21 months   MAL-ED           NEPAL                          Medium          26      90
18-21 months   MAL-ED           PERU                           High            77     164
18-21 months   MAL-ED           PERU                           Low             45     164
18-21 months   MAL-ED           PERU                           Medium          42     164
18-21 months   MAL-ED           SOUTH AFRICA                   High            34      90
18-21 months   MAL-ED           SOUTH AFRICA                   Low             34      90
18-21 months   MAL-ED           SOUTH AFRICA                   Medium          22      90
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           110     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             45     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     170
18-21 months   NIH-Crypto       BANGLADESH                     High           228     547
18-21 months   NIH-Crypto       BANGLADESH                     Low            153     547
18-21 months   NIH-Crypto       BANGLADESH                     Medium         166     547
18-21 months   PROBIT           BELARUS                        High            33     207
18-21 months   PROBIT           BELARUS                        Low             84     207
18-21 months   PROBIT           BELARUS                        Medium          90     207
18-21 months   PROVIDE          BANGLADESH                     High           182     542
18-21 months   PROVIDE          BANGLADESH                     Low            189     542
18-21 months   PROVIDE          BANGLADESH                     Medium         171     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              3      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           7      11
18-21 months   ZVITAMBO         ZIMBABWE                       High            27     625
18-21 months   ZVITAMBO         ZIMBABWE                       Low            141     625
18-21 months   ZVITAMBO         ZIMBABWE                       Medium         457     625
21-24 months   COHORTS          GUATEMALA                      High           145     826
21-24 months   COHORTS          GUATEMALA                      Low            377     826
21-24 months   COHORTS          GUATEMALA                      Medium         304     826
21-24 months   GMS-Nepal        NEPAL                          High            86     343
21-24 months   GMS-Nepal        NEPAL                          Low            151     343
21-24 months   GMS-Nepal        NEPAL                          Medium         106     343
21-24 months   LCNI-5           MALAWI                         High           116     380
21-24 months   LCNI-5           MALAWI                         Low            133     380
21-24 months   LCNI-5           MALAWI                         Medium         131     380
21-24 months   MAL-ED           BANGLADESH                     High            40     115
21-24 months   MAL-ED           BANGLADESH                     Low             34     115
21-24 months   MAL-ED           BANGLADESH                     Medium          41     115
21-24 months   MAL-ED           INDIA                          High            42     131
21-24 months   MAL-ED           INDIA                          Low             50     131
21-24 months   MAL-ED           INDIA                          Medium          39     131
21-24 months   MAL-ED           NEPAL                          High            37      90
21-24 months   MAL-ED           NEPAL                          Low             27      90
21-24 months   MAL-ED           NEPAL                          Medium          26      90
21-24 months   MAL-ED           PERU                           High            70     154
21-24 months   MAL-ED           PERU                           Low             43     154
21-24 months   MAL-ED           PERU                           Medium          41     154
21-24 months   MAL-ED           SOUTH AFRICA                   High            34      91
21-24 months   MAL-ED           SOUTH AFRICA                   Low             34      91
21-24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           108     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             45     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     168
21-24 months   NIH-Crypto       BANGLADESH                     High           206     493
21-24 months   NIH-Crypto       BANGLADESH                     Low            136     493
21-24 months   NIH-Crypto       BANGLADESH                     Medium         151     493
21-24 months   PROBIT           BELARUS                        High            32     205
21-24 months   PROBIT           BELARUS                        Low             84     205
21-24 months   PROBIT           BELARUS                        Medium          89     205
21-24 months   PROVIDE          BANGLADESH                     High           156     485
21-24 months   PROVIDE          BANGLADESH                     Low            175     485
21-24 months   PROVIDE          BANGLADESH                     Medium         154     485
21-24 months   ZVITAMBO         ZIMBABWE                       High            11     283
21-24 months   ZVITAMBO         ZIMBABWE                       Low             77     283
21-24 months   ZVITAMBO         ZIMBABWE                       Medium         195     283


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/ef761e38-68c3-4faf-875e-e91eb8aa83e6/3fbadb08-1dda-40f4-99da-51f883c3dffa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ef761e38-68c3-4faf-875e-e91eb8aa83e6/3fbadb08-1dda-40f4-99da-51f883c3dffa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ef761e38-68c3-4faf-875e-e91eb8aa83e6/3fbadb08-1dda-40f4-99da-51f883c3dffa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                0.7938702    0.7528872   0.8348533
0-3 months     COHORTS          GUATEMALA                      Low                  NA                0.8046593    0.7793806   0.8299380
0-3 months     COHORTS          GUATEMALA                      Medium               NA                0.7921781    0.7639305   0.8204257
0-3 months     COHORTS          INDIA                          High                 NA                0.8395433    0.8232116   0.8558751
0-3 months     COHORTS          INDIA                          Low                  NA                0.8001993    0.7825924   0.8178061
0-3 months     COHORTS          INDIA                          Medium               NA                0.8107024    0.7920330   0.8293718
0-3 months     GMS-Nepal        NEPAL                          High                 NA                0.8615880    0.8241437   0.8990324
0-3 months     GMS-Nepal        NEPAL                          Low                  NA                0.8065449    0.7818597   0.8312300
0-3 months     GMS-Nepal        NEPAL                          Medium               NA                0.8261419    0.7977856   0.8544982
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                0.9010303    0.8945104   0.9075502
0-3 months     JiVitA-3         BANGLADESH                     Low                  NA                0.8562607    0.8517579   0.8607635
0-3 months     JiVitA-3         BANGLADESH                     Medium               NA                0.8701929    0.8651191   0.8752667
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                0.8918625    0.8711277   0.9125974
0-3 months     JiVitA-4         BANGLADESH                     Low                  NA                0.8790040    0.8614483   0.8965597
0-3 months     JiVitA-4         BANGLADESH                     Medium               NA                0.8989212    0.8826830   0.9151595
0-3 months     MAL-ED           BANGLADESH                     High                 NA                0.8829067    0.8302686   0.9355448
0-3 months     MAL-ED           BANGLADESH                     Low                  NA                0.8400946    0.7927132   0.8874759
0-3 months     MAL-ED           BANGLADESH                     Medium               NA                0.9066018    0.8567142   0.9564894
0-3 months     MAL-ED           INDIA                          High                 NA                0.8029304    0.7509910   0.8548697
0-3 months     MAL-ED           INDIA                          Low                  NA                0.7945253    0.7486863   0.8403643
0-3 months     MAL-ED           INDIA                          Medium               NA                0.7288649    0.6744958   0.7832340
0-3 months     MAL-ED           NEPAL                          High                 NA                0.9234884    0.8565206   0.9904561
0-3 months     MAL-ED           NEPAL                          Low                  NA                0.9535376    0.8660429   1.0410323
0-3 months     MAL-ED           NEPAL                          Medium               NA                0.9752424    0.8907857   1.0596991
0-3 months     MAL-ED           PERU                           High                 NA                0.9536855    0.9180764   0.9892946
0-3 months     MAL-ED           PERU                           Low                  NA                0.9861662    0.9378526   1.0344797
0-3 months     MAL-ED           PERU                           Medium               NA                0.9814619    0.9240989   1.0388249
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                1.0051663    0.9304046   1.0799281
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.9272782    0.8646841   0.9898723
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.8872741    0.8182909   0.9562572
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.8714692    0.8275809   0.9153576
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.8991261    0.8468179   0.9514344
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9390598    0.8442808   1.0338388
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                0.8919481    0.8693964   0.9144998
0-3 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.8837468    0.8579274   0.9095662
0-3 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.8753707    0.8474028   0.9033386
0-3 months     PROBIT           BELARUS                        High                 NA                0.8441284    0.8291181   0.8591387
0-3 months     PROBIT           BELARUS                        Low                  NA                0.8280525    0.8148556   0.8412495
0-3 months     PROBIT           BELARUS                        Medium               NA                0.8391033    0.8284426   0.8497639
0-3 months     PROVIDE          BANGLADESH                     High                 NA                0.9350518    0.9089670   0.9611366
0-3 months     PROVIDE          BANGLADESH                     Low                  NA                0.8826199    0.8570309   0.9082089
0-3 months     PROVIDE          BANGLADESH                     Medium               NA                0.8860262    0.8618708   0.9101815
0-3 months     SAS-CompFeed     INDIA                          High                 NA                0.8163307    0.7904620   0.8421993
0-3 months     SAS-CompFeed     INDIA                          Low                  NA                0.7576635    0.7393954   0.7759317
0-3 months     SAS-CompFeed     INDIA                          Medium               NA                0.8146796    0.7884546   0.8409047
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9375842    0.9151165   0.9600518
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9208263    0.9069431   0.9347096
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9144659    0.8946478   0.9342840
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.9660222    0.9460750   0.9859694
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.9168875    0.9043533   0.9294217
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.9578830    0.9519246   0.9638415
3-6 months     COHORTS          GUATEMALA                      High                 NA                0.4793184    0.4509789   0.5076579
3-6 months     COHORTS          GUATEMALA                      Low                  NA                0.4371588    0.4211507   0.4531669
3-6 months     COHORTS          GUATEMALA                      Medium               NA                0.4712681    0.4530113   0.4895250
3-6 months     COHORTS          INDIA                          High                 NA                0.5063305    0.4930711   0.5195899
3-6 months     COHORTS          INDIA                          Low                  NA                0.4735480    0.4570918   0.4900042
3-6 months     COHORTS          INDIA                          Medium               NA                0.4874381    0.4712931   0.5035831
3-6 months     GMS-Nepal        NEPAL                          High                 NA                0.5095759    0.4800401   0.5391118
3-6 months     GMS-Nepal        NEPAL                          Low                  NA                0.4928503    0.4736704   0.5120303
3-6 months     GMS-Nepal        NEPAL                          Medium               NA                0.4951499    0.4689174   0.5213825
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                0.4545146    0.4488567   0.4601725
3-6 months     JiVitA-3         BANGLADESH                     Low                  NA                0.4298637    0.4253789   0.4343485
3-6 months     JiVitA-3         BANGLADESH                     Medium               NA                0.4441593    0.4390227   0.4492958
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                0.4500303    0.4340172   0.4660435
3-6 months     JiVitA-4         BANGLADESH                     Low                  NA                0.4387503    0.4240352   0.4534653
3-6 months     JiVitA-4         BANGLADESH                     Medium               NA                0.4340738    0.4190899   0.4490577
3-6 months     MAL-ED           BANGLADESH                     High                 NA                0.4792854    0.4474596   0.5111112
3-6 months     MAL-ED           BANGLADESH                     Low                  NA                0.4457379    0.4125808   0.4788950
3-6 months     MAL-ED           BANGLADESH                     Medium               NA                0.4687100    0.4192213   0.5181988
3-6 months     MAL-ED           INDIA                          High                 NA                0.4387227    0.4003439   0.4771016
3-6 months     MAL-ED           INDIA                          Low                  NA                0.4291456    0.3925043   0.4657869
3-6 months     MAL-ED           INDIA                          Medium               NA                0.4060609    0.3661652   0.4459566
3-6 months     MAL-ED           NEPAL                          High                 NA                0.5495624    0.4971567   0.6019682
3-6 months     MAL-ED           NEPAL                          Low                  NA                0.4106946    0.3628164   0.4585727
3-6 months     MAL-ED           NEPAL                          Medium               NA                0.4993469    0.4427802   0.5559136
3-6 months     MAL-ED           PERU                           High                 NA                0.5021189    0.4717641   0.5324737
3-6 months     MAL-ED           PERU                           Low                  NA                0.5391484    0.5020592   0.5762375
3-6 months     MAL-ED           PERU                           Medium               NA                0.4899930    0.4479518   0.5320342
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                0.4415987    0.3678619   0.5153355
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.4086973    0.3494556   0.4679389
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.4654566    0.4014486   0.5294646
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4544629    0.4225772   0.4863485
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4438763    0.3941632   0.4935895
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4717463    0.4226886   0.5208041
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                0.5071881    0.4900578   0.5243184
3-6 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.4904044    0.4695188   0.5112901
3-6 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.4941138    0.4742651   0.5139625
3-6 months     PROBIT           BELARUS                        High                 NA                0.6714276    0.6611405   0.6817147
3-6 months     PROBIT           BELARUS                        Low                  NA                0.6624995    0.6531670   0.6718320
3-6 months     PROBIT           BELARUS                        Medium               NA                0.6670470    0.6572386   0.6768553
3-6 months     PROVIDE          BANGLADESH                     High                 NA                0.5068110    0.4874907   0.5261313
3-6 months     PROVIDE          BANGLADESH                     Low                  NA                0.4778455    0.4532238   0.5024672
3-6 months     PROVIDE          BANGLADESH                     Medium               NA                0.4815985    0.4581696   0.5050274
3-6 months     SAS-CompFeed     INDIA                          High                 NA                0.4597268    0.4437429   0.4757106
3-6 months     SAS-CompFeed     INDIA                          Low                  NA                0.4383066    0.4196331   0.4569802
3-6 months     SAS-CompFeed     INDIA                          Medium               NA                0.4587449    0.4426429   0.4748468
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4376997    0.4177713   0.4576282
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4173297    0.4054396   0.4292199
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4118510    0.3954325   0.4282695
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.4801231    0.4612529   0.4989933
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.4677635    0.4570714   0.4784555
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.4805535    0.4752783   0.4858287
6-9 months     COHORTS          GUATEMALA                      High                 NA                0.2109818    0.1879698   0.2339937
6-9 months     COHORTS          GUATEMALA                      Low                  NA                0.2126836    0.1976132   0.2277540
6-9 months     COHORTS          GUATEMALA                      Medium               NA                0.2169042    0.2009018   0.2329066
6-9 months     COHORTS          INDIA                          High                 NA                0.3047706    0.2911611   0.3183801
6-9 months     COHORTS          INDIA                          Low                  NA                0.2370599    0.2221416   0.2519783
6-9 months     COHORTS          INDIA                          Medium               NA                0.2626020    0.2466832   0.2785207
6-9 months     GMS-Nepal        NEPAL                          High                 NA                0.1904787    0.1678175   0.2131398
6-9 months     GMS-Nepal        NEPAL                          Low                  NA                0.1840720    0.1628063   0.2053377
6-9 months     GMS-Nepal        NEPAL                          Medium               NA                0.1901245    0.1733274   0.2069217
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                0.2525629    0.2405168   0.2646090
6-9 months     JiVitA-4         BANGLADESH                     Low                  NA                0.2333139    0.2253796   0.2412482
6-9 months     JiVitA-4         BANGLADESH                     Medium               NA                0.2385969    0.2304690   0.2467249
6-9 months     LCNI-5           MALAWI                         High                 NA                0.2948480    0.2695972   0.3200989
6-9 months     LCNI-5           MALAWI                         Low                  NA                0.2842224    0.2650963   0.3033486
6-9 months     LCNI-5           MALAWI                         Medium               NA                0.2762148    0.2550042   0.2974254
6-9 months     MAL-ED           BANGLADESH                     High                 NA                0.2692589    0.2405231   0.2979948
6-9 months     MAL-ED           BANGLADESH                     Low                  NA                0.2247963    0.1901214   0.2594711
6-9 months     MAL-ED           BANGLADESH                     Medium               NA                0.2370961    0.1984802   0.2757120
6-9 months     MAL-ED           INDIA                          High                 NA                0.2409518    0.2111327   0.2707709
6-9 months     MAL-ED           INDIA                          Low                  NA                0.2381273    0.2031912   0.2730635
6-9 months     MAL-ED           INDIA                          Medium               NA                0.2345734    0.2021013   0.2670455
6-9 months     MAL-ED           NEPAL                          High                 NA                0.2946179    0.2535299   0.3357058
6-9 months     MAL-ED           NEPAL                          Low                  NA                0.2672341    0.2270239   0.3074443
6-9 months     MAL-ED           NEPAL                          Medium               NA                0.2618662    0.2163334   0.3073990
6-9 months     MAL-ED           PERU                           High                 NA                0.2571533    0.2317112   0.2825953
6-9 months     MAL-ED           PERU                           Low                  NA                0.2659784    0.2305628   0.3013940
6-9 months     MAL-ED           PERU                           Medium               NA                0.2748918    0.2456975   0.3040861
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                0.2544699    0.2116191   0.2973207
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  NA                0.2422428    0.1712343   0.3132514
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               NA                0.2133574    0.1536698   0.2730451
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2537534    0.2238650   0.2836419
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2305889    0.1911311   0.2700467
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2793221    0.2115541   0.3470900
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                0.2988213    0.2823617   0.3152809
6-9 months     NIH-Crypto       BANGLADESH                     Low                  NA                0.2275566    0.2093914   0.2457218
6-9 months     NIH-Crypto       BANGLADESH                     Medium               NA                0.2682108    0.2488590   0.2875626
6-9 months     PROBIT           BELARUS                        High                 NA                0.4714030    0.4608268   0.4819792
6-9 months     PROBIT           BELARUS                        Low                  NA                0.4758411    0.4650273   0.4866548
6-9 months     PROBIT           BELARUS                        Medium               NA                0.4726219    0.4616978   0.4835459
6-9 months     PROVIDE          BANGLADESH                     High                 NA                0.2808236    0.2629668   0.2986804
6-9 months     PROVIDE          BANGLADESH                     Low                  NA                0.2175513    0.1923177   0.2427848
6-9 months     PROVIDE          BANGLADESH                     Medium               NA                0.2492931    0.2325847   0.2660014
6-9 months     SAS-CompFeed     INDIA                          High                 NA                0.2261504    0.2010082   0.2512926
6-9 months     SAS-CompFeed     INDIA                          Low                  NA                0.1940459    0.1739614   0.2141305
6-9 months     SAS-CompFeed     INDIA                          Medium               NA                0.2179594    0.1922356   0.2436832
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                0.1827440    0.1505236   0.2149644
6-9 months     SAS-FoodSuppl    INDIA                          Low                  NA                0.2029780    0.1783492   0.2276069
6-9 months     SAS-FoodSuppl    INDIA                          Medium               NA                0.2037059    0.1751569   0.2322549
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2687723    0.2468609   0.2906836
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2448804    0.2328737   0.2568870
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2686068    0.2522503   0.2849634
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                0.2580275    0.2368201   0.2792348
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  NA                0.2528263    0.2412071   0.2644455
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               NA                0.2601569    0.2551496   0.2651643
9-12 months    COHORTS          GUATEMALA                      High                 NA                0.1499038    0.1292069   0.1706008
9-12 months    COHORTS          GUATEMALA                      Low                  NA                0.1612426    0.1473268   0.1751583
9-12 months    COHORTS          GUATEMALA                      Medium               NA                0.1556546    0.1421832   0.1691259
9-12 months    COHORTS          INDIA                          High                 NA                0.2431313    0.2279919   0.2582706
9-12 months    COHORTS          INDIA                          Low                  NA                0.1991851    0.1826212   0.2157490
9-12 months    COHORTS          INDIA                          Medium               NA                0.2214255    0.2037909   0.2390602
9-12 months    GMS-Nepal        NEPAL                          High                 NA                0.1437456    0.1180566   0.1694346
9-12 months    GMS-Nepal        NEPAL                          Low                  NA                0.1382103    0.1187679   0.1576526
9-12 months    GMS-Nepal        NEPAL                          Medium               NA                0.1526182    0.1304570   0.1747793
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                0.1555329    0.1455028   0.1655630
9-12 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1521360    0.1454235   0.1588485
9-12 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1561240    0.1497978   0.1624503
9-12 months    LCNI-5           MALAWI                         High                 NA                0.2029339    0.1776957   0.2281722
9-12 months    LCNI-5           MALAWI                         Low                  NA                0.2050937    0.1782479   0.2319394
9-12 months    LCNI-5           MALAWI                         Medium               NA                0.1996759    0.1702278   0.2291240
9-12 months    MAL-ED           BANGLADESH                     High                 NA                0.1786549    0.1515084   0.2058015
9-12 months    MAL-ED           BANGLADESH                     Low                  NA                0.1718828    0.1409733   0.2027923
9-12 months    MAL-ED           BANGLADESH                     Medium               NA                0.1621262    0.1288010   0.1954514
9-12 months    MAL-ED           INDIA                          High                 NA                0.1741989    0.1376274   0.2107704
9-12 months    MAL-ED           INDIA                          Low                  NA                0.1895358    0.1601676   0.2189040
9-12 months    MAL-ED           INDIA                          Medium               NA                0.1581777    0.1309490   0.1854063
9-12 months    MAL-ED           NEPAL                          High                 NA                0.2071506    0.1864627   0.2278386
9-12 months    MAL-ED           NEPAL                          Low                  NA                0.1925142    0.1459082   0.2391202
9-12 months    MAL-ED           NEPAL                          Medium               NA                0.1307514    0.0667559   0.1947468
9-12 months    MAL-ED           PERU                           High                 NA                0.1916414    0.1649871   0.2182958
9-12 months    MAL-ED           PERU                           Low                  NA                0.2091504    0.1757895   0.2425113
9-12 months    MAL-ED           PERU                           Medium               NA                0.1620525    0.1319848   0.1921203
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.2300711    0.1816503   0.2784919
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.1621473    0.1065601   0.2177345
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.1902284    0.1225988   0.2578581
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1711126    0.1415788   0.2006465
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1794604    0.1368084   0.2221124
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0927882    0.0231628   0.1624135
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2102167    0.1942671   0.2261663
9-12 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.1742188    0.1549630   0.1934746
9-12 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.2058734    0.1868955   0.2248512
9-12 months    PROBIT           BELARUS                        High                 NA                0.3683483    0.3538832   0.3828135
9-12 months    PROBIT           BELARUS                        Low                  NA                0.3762971    0.3586588   0.3939354
9-12 months    PROBIT           BELARUS                        Medium               NA                0.3574220    0.3438488   0.3709953
9-12 months    PROVIDE          BANGLADESH                     High                 NA                0.1990917    0.1832492   0.2149343
9-12 months    PROVIDE          BANGLADESH                     Low                  NA                0.1584280    0.1433425   0.1735136
9-12 months    PROVIDE          BANGLADESH                     Medium               NA                0.1743612    0.1572996   0.1914229
9-12 months    SAS-CompFeed     INDIA                          High                 NA                0.2108334    0.1939805   0.2276864
9-12 months    SAS-CompFeed     INDIA                          Low                  NA                0.1737663    0.1589855   0.1885471
9-12 months    SAS-CompFeed     INDIA                          Medium               NA                0.2081630    0.1993590   0.2169669
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                0.1559526    0.1150027   0.1969025
9-12 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1193216    0.0866535   0.1519897
9-12 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1511755    0.1233417   0.1790094
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2120538    0.1869636   0.2371441
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1973602    0.1831821   0.2115383
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2130094    0.1959701   0.2300488
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1818928    0.1617881   0.2019975
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1759499    0.1646077   0.1872922
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1812481    0.1760356   0.1864605
12-15 months   COHORTS          GUATEMALA                      High                 NA                0.1481891    0.1276676   0.1687107
12-15 months   COHORTS          GUATEMALA                      Low                  NA                0.1430212    0.1289042   0.1571381
12-15 months   COHORTS          GUATEMALA                      Medium               NA                0.1584154    0.1425208   0.1743099
12-15 months   GMS-Nepal        NEPAL                          High                 NA                0.1880783    0.1631922   0.2129644
12-15 months   GMS-Nepal        NEPAL                          Low                  NA                0.1569107    0.1395877   0.1742338
12-15 months   GMS-Nepal        NEPAL                          Medium               NA                0.1816054    0.1543289   0.2088818
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                0.1354126    0.1256925   0.1451326
12-15 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1250683    0.1187994   0.1313373
12-15 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1323445    0.1262252   0.1384638
12-15 months   LCNI-5           MALAWI                         High                 NA                0.1134191    0.0418561   0.1849821
12-15 months   LCNI-5           MALAWI                         Low                  NA                0.1584569    0.1179366   0.1989772
12-15 months   LCNI-5           MALAWI                         Medium               NA                0.1785655    0.1158550   0.2412760
12-15 months   MAL-ED           BANGLADESH                     High                 NA                0.1561330    0.1237869   0.1884790
12-15 months   MAL-ED           BANGLADESH                     Low                  NA                0.1078499    0.0725117   0.1431880
12-15 months   MAL-ED           BANGLADESH                     Medium               NA                0.1598466    0.1203365   0.1993567
12-15 months   MAL-ED           INDIA                          High                 NA                0.1496675    0.1152999   0.1840351
12-15 months   MAL-ED           INDIA                          Low                  NA                0.1694298    0.1373195   0.2015401
12-15 months   MAL-ED           INDIA                          Medium               NA                0.1728641    0.1428046   0.2029236
12-15 months   MAL-ED           NEPAL                          High                 NA                0.1444168    0.1047802   0.1840534
12-15 months   MAL-ED           NEPAL                          Low                  NA                0.1420715    0.0962208   0.1879222
12-15 months   MAL-ED           NEPAL                          Medium               NA                0.1530775    0.0753051   0.2308498
12-15 months   MAL-ED           PERU                           High                 NA                0.1251397    0.1024501   0.1478293
12-15 months   MAL-ED           PERU                           Low                  NA                0.1350483    0.0944311   0.1756655
12-15 months   MAL-ED           PERU                           Medium               NA                0.1587107    0.1166269   0.2007946
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1923101    0.1283915   0.2562288
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2240776    0.1416448   0.3065103
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1933512    0.1265617   0.2601408
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1591665    0.1243677   0.1939652
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1497626    0.1030843   0.1964409
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1527729    0.0442161   0.2613297
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1779451    0.1601788   0.1957115
12-15 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1521831    0.1362558   0.1681103
12-15 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1580852    0.1376392   0.1785311
12-15 months   PROBIT           BELARUS                        High                 NA                0.2381463    0.1307596   0.3455329
12-15 months   PROBIT           BELARUS                        Low                  NA                0.2288198    0.1395231   0.3181166
12-15 months   PROBIT           BELARUS                        Medium               NA                0.2090719    0.1136380   0.3045059
12-15 months   PROVIDE          BANGLADESH                     High                 NA                0.1867899    0.1684588   0.2051209
12-15 months   PROVIDE          BANGLADESH                     Low                  NA                0.1720123    0.1513355   0.1926892
12-15 months   PROVIDE          BANGLADESH                     Medium               NA                0.1808287    0.1587962   0.2028612
12-15 months   SAS-CompFeed     INDIA                          High                 NA                0.1824558    0.1691910   0.1957206
12-15 months   SAS-CompFeed     INDIA                          Low                  NA                0.1900651    0.1812834   0.1988468
12-15 months   SAS-CompFeed     INDIA                          Medium               NA                0.1806346    0.1613519   0.1999173
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1862111    0.1574115   0.2150108
12-15 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1742366    0.1432807   0.2051925
12-15 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1682867    0.1440745   0.1924988
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1808785    0.1540942   0.2076628
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1749488    0.1597941   0.1901034
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1663914    0.1444166   0.1883662
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1798306    0.1432038   0.2164574
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1449085    0.1261288   0.1636882
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1487180    0.1393655   0.1580704
15-18 months   COHORTS          GUATEMALA                      High                 NA                0.1131308    0.0863517   0.1399100
15-18 months   COHORTS          GUATEMALA                      Low                  NA                0.1546466    0.1387584   0.1705347
15-18 months   COHORTS          GUATEMALA                      Medium               NA                0.1328062    0.1137202   0.1518922
15-18 months   GMS-Nepal        NEPAL                          High                 NA                0.2384685    0.2124031   0.2645340
15-18 months   GMS-Nepal        NEPAL                          Low                  NA                0.2345003    0.2110160   0.2579847
15-18 months   GMS-Nepal        NEPAL                          Medium               NA                0.2332921    0.2042537   0.2623306
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                0.1592280    0.1500457   0.1684104
15-18 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1592435    0.1515792   0.1669078
15-18 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1588098    0.1513453   0.1662743
15-18 months   LCNI-5           MALAWI                         High                 NA                0.1928892    0.1436419   0.2421366
15-18 months   LCNI-5           MALAWI                         Low                  NA                0.1866961    0.1344480   0.2389443
15-18 months   LCNI-5           MALAWI                         Medium               NA                0.1434418    0.0842284   0.2026551
15-18 months   MAL-ED           BANGLADESH                     High                 NA                0.1380502    0.1037250   0.1723753
15-18 months   MAL-ED           BANGLADESH                     Low                  NA                0.1473490    0.1095804   0.1851175
15-18 months   MAL-ED           BANGLADESH                     Medium               NA                0.1382854    0.1000019   0.1765689
15-18 months   MAL-ED           INDIA                          High                 NA                0.1626098    0.1213978   0.2038218
15-18 months   MAL-ED           INDIA                          Low                  NA                0.1597659    0.1348388   0.1846930
15-18 months   MAL-ED           INDIA                          Medium               NA                0.1512129    0.1190336   0.1833922
15-18 months   MAL-ED           NEPAL                          High                 NA                0.1991844    0.1542607   0.2441082
15-18 months   MAL-ED           NEPAL                          Low                  NA                0.1409888    0.0851186   0.1968591
15-18 months   MAL-ED           NEPAL                          Medium               NA                0.1925402    0.1452707   0.2398097
15-18 months   MAL-ED           PERU                           High                 NA                0.1478818    0.1216232   0.1741403
15-18 months   MAL-ED           PERU                           Low                  NA                0.1303318    0.0810658   0.1795979
15-18 months   MAL-ED           PERU                           Medium               NA                0.1709799    0.1306349   0.2113249
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2181351    0.1452980   0.2909721
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1919929    0.1206990   0.2632868
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1690835    0.0688199   0.2693472
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1513696    0.1211741   0.1815651
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1182305    0.0614959   0.1749651
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1492120    0.0679728   0.2304512
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1726292    0.1551727   0.1900857
15-18 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1602312    0.1398706   0.1805918
15-18 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1472364    0.1307202   0.1637525
15-18 months   PROBIT           BELARUS                        High                 NA                0.1917299    0.0688817   0.3145782
15-18 months   PROBIT           BELARUS                        Low                  NA                0.2507270    0.1345894   0.3668647
15-18 months   PROBIT           BELARUS                        Medium               NA                0.2225259    0.1589707   0.2860810
15-18 months   PROVIDE          BANGLADESH                     High                 NA                0.1666958    0.1474618   0.1859299
15-18 months   PROVIDE          BANGLADESH                     Low                  NA                0.1571476    0.1370574   0.1772379
15-18 months   PROVIDE          BANGLADESH                     Medium               NA                0.1434729    0.1215843   0.1653615
15-18 months   SAS-CompFeed     INDIA                          High                 NA                0.1713419    0.1462509   0.1964330
15-18 months   SAS-CompFeed     INDIA                          Low                  NA                0.1832763    0.1725401   0.1940125
15-18 months   SAS-CompFeed     INDIA                          Medium               NA                0.1762943    0.1520294   0.2005593
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1571745    0.1295826   0.1847664
15-18 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1620616    0.1348248   0.1892985
15-18 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1725008    0.1461095   0.1988922
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1769921    0.1466479   0.2073364
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1656378    0.1456102   0.1856654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1741986    0.1469584   0.2014388
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1397403    0.1094096   0.1700711
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1309533    0.1076319   0.1542747
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1321312    0.1189174   0.1453450
18-21 months   COHORTS          GUATEMALA                      High                 NA                0.1557547    0.1310381   0.1804712
18-21 months   COHORTS          GUATEMALA                      Low                  NA                0.1545632    0.1376052   0.1715212
18-21 months   COHORTS          GUATEMALA                      Medium               NA                0.1809026    0.1637281   0.1980772
18-21 months   GMS-Nepal        NEPAL                          High                 NA                0.1290452    0.0998418   0.1582486
18-21 months   GMS-Nepal        NEPAL                          Low                  NA                0.1596467    0.1347257   0.1845677
18-21 months   GMS-Nepal        NEPAL                          Medium               NA                0.1293220    0.1028694   0.1557746
18-21 months   LCNI-5           MALAWI                         High                 NA                0.1684925    0.1296501   0.2073349
18-21 months   LCNI-5           MALAWI                         Low                  NA                0.1992683    0.1668567   0.2316799
18-21 months   LCNI-5           MALAWI                         Medium               NA                0.1788125    0.1449856   0.2126395
18-21 months   MAL-ED           BANGLADESH                     High                 NA                0.1277926    0.0931699   0.1624154
18-21 months   MAL-ED           BANGLADESH                     Low                  NA                0.1574551    0.1238066   0.1911036
18-21 months   MAL-ED           BANGLADESH                     Medium               NA                0.1381221    0.0941265   0.1821177
18-21 months   MAL-ED           INDIA                          High                 NA                0.1875822    0.1554812   0.2196833
18-21 months   MAL-ED           INDIA                          Low                  NA                0.1389688    0.1009013   0.1770363
18-21 months   MAL-ED           INDIA                          Medium               NA                0.1880316    0.1601530   0.2159101
18-21 months   MAL-ED           NEPAL                          High                 NA                0.1416629    0.0858335   0.1974922
18-21 months   MAL-ED           NEPAL                          Low                  NA                0.1362573    0.0750432   0.1974714
18-21 months   MAL-ED           NEPAL                          Medium               NA                0.1294074    0.0852950   0.1735197
18-21 months   MAL-ED           PERU                           High                 NA                0.1742711    0.1440615   0.2044808
18-21 months   MAL-ED           PERU                           Low                  NA                0.1342692    0.0892188   0.1793196
18-21 months   MAL-ED           PERU                           Medium               NA                0.1412400    0.1009134   0.1815667
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1901162    0.1043513   0.2758811
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1961080    0.1153512   0.2768648
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1560260    0.0855158   0.2265362
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1707124    0.1366625   0.2047623
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1223466    0.0681667   0.1765266
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1146196    0.0420040   0.1872351
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1338923    0.1176373   0.1501473
18-21 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1514480    0.1329641   0.1699320
18-21 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1466056    0.1252417   0.1679696
18-21 months   PROBIT           BELARUS                        High                 NA                0.2266149   -0.1242532   0.5774829
18-21 months   PROBIT           BELARUS                        Low                  NA                0.1654398    0.0581085   0.2727711
18-21 months   PROBIT           BELARUS                        Medium               NA                0.1719136   -0.1208392   0.4646664
18-21 months   PROVIDE          BANGLADESH                     High                 NA                0.1289492    0.1093107   0.1485878
18-21 months   PROVIDE          BANGLADESH                     Low                  NA                0.1294625    0.1103186   0.1486064
18-21 months   PROVIDE          BANGLADESH                     Medium               NA                0.1395989    0.1188735   0.1603243
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1379884    0.0825384   0.1934384
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1031876    0.0685699   0.1378054
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1314655    0.1119185   0.1510124
21-24 months   COHORTS          GUATEMALA                      High                 NA                0.1771257    0.1556175   0.1986338
21-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1906434    0.1750324   0.2062545
21-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1869047    0.1700802   0.2037292
21-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1731579    0.1274494   0.2188664
21-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1897749    0.1498642   0.2296855
21-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1613284    0.1210988   0.2015580
21-24 months   LCNI-5           MALAWI                         High                 NA                0.1815584    0.1263945   0.2367224
21-24 months   LCNI-5           MALAWI                         Low                  NA                0.1569198    0.1157565   0.1980831
21-24 months   LCNI-5           MALAWI                         Medium               NA                0.1975683    0.1533223   0.2418142
21-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1727205    0.1379269   0.2075140
21-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.1420681    0.1107221   0.1734141
21-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1549232    0.1311289   0.1787174
21-24 months   MAL-ED           INDIA                          High                 NA                0.1502412    0.1196416   0.1808408
21-24 months   MAL-ED           INDIA                          Low                  NA                0.1535230    0.1267188   0.1803272
21-24 months   MAL-ED           INDIA                          Medium               NA                0.1754366    0.1448011   0.2060721
21-24 months   MAL-ED           NEPAL                          High                 NA                0.1772398    0.1307838   0.2236958
21-24 months   MAL-ED           NEPAL                          Low                  NA                0.1456490    0.0978864   0.1934116
21-24 months   MAL-ED           NEPAL                          Medium               NA                0.1694011    0.1242272   0.2145751
21-24 months   MAL-ED           PERU                           High                 NA                0.1622564    0.1356807   0.1888320
21-24 months   MAL-ED           PERU                           Low                  NA                0.2289276    0.1757378   0.2821173
21-24 months   MAL-ED           PERU                           Medium               NA                0.1899495    0.1482859   0.2316132
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2398264    0.1636504   0.3160024
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1828403    0.1327854   0.2328951
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1904265    0.1427029   0.2381502
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1539020    0.1158396   0.1919644
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1493461    0.0900437   0.2086485
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1280889    0.0193779   0.2368000
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1686230    0.1482634   0.1889826
21-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1498860    0.1271507   0.1726213
21-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.2064824    0.1852855   0.2276792
21-24 months   PROBIT           BELARUS                        High                 NA                0.2070681    0.0229491   0.3911872
21-24 months   PROBIT           BELARUS                        Low                  NA                0.1633117    0.0513959   0.2752276
21-24 months   PROBIT           BELARUS                        Medium               NA                0.1607346    0.0115533   0.3099158
21-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1443261    0.1248084   0.1638438
21-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1385341    0.1206039   0.1564644
21-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1434892    0.1213353   0.1656431
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1107319    0.0072457   0.2142182
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0899560    0.0315240   0.1483880
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1140157    0.0806970   0.1473343


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7979302   0.7807892   0.8150711
0-3 months     COHORTS          INDIA                          NA                   NA                0.8184283   0.8083059   0.8285508
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8262465   0.8093090   0.8431840
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8712006   0.8680481   0.8743531
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8896370   0.8791603   0.9001137
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8797030   0.8500342   0.9093719
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7782919   0.7487568   0.8078270
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9474959   0.9021213   0.9928704
0-3 months     MAL-ED           PERU                           NA                   NA                0.9694498   0.9435290   0.9953705
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9464798   0.9049179   0.9880417
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8850883   0.8524498   0.9177268
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356071   0.8250001   0.8462141
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7907067   0.7702767   0.8111368
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9221323   0.9119645   0.9323001
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9511183   0.9459092   0.9563273
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4577365   0.4465247   0.4689483
3-6 months     COHORTS          INDIA                          NA                   NA                0.4903322   0.4815541   0.4991104
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4977246   0.4838880   0.5115611
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4412150   0.4382105   0.4442195
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4394612   0.4305077   0.4484148
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4667543   0.4436908   0.4898179
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4257222   0.4034620   0.4479823
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.4941273   0.4612801   0.5269745
3-6 months     MAL-ED           PERU                           NA                   NA                0.5091864   0.4884740   0.5298987
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4351951   0.3963186   0.4740717
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4530306   0.4281357   0.4779255
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6659820   0.6580137   0.6739503
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4504374   0.4371549   0.4637198
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195882   0.4109063   0.4282700
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4782123   0.4736183   0.4828063
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2139436   0.2040343   0.2238528
6-9 months     COHORTS          INDIA                          NA                   NA                0.2706668   0.2620143   0.2793192
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1875391   0.1754427   0.1996355
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2399719   0.2345906   0.2453531
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2848807   0.2722480   0.2975134
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2461860   0.2260899   0.2662821
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2379984   0.2189390   0.2570578
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2771354   0.2523262   0.3019446
6-9 months     MAL-ED           PERU                           NA                   NA                0.2640941   0.2469533   0.2812348
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2395657   0.2044477   0.2746838
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2495789   0.2267751   0.2723827
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4736939   0.4646468   0.4827410
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2098831   0.1951058   0.2246604
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2559933   0.2470997   0.2648869
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2586729   0.2541277   0.2632181
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1570547   0.1482367   0.1658728
9-12 months    COHORTS          INDIA                          NA                   NA                0.2228309   0.2133288   0.2323330
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1440904   0.1313666   0.1568141
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1545196   0.1501667   0.1588725
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2024655   0.1864801   0.2184509
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1709330   0.1531951   0.1886709
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1756285   0.1573113   0.1939458
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1808514   0.1554553   0.2062476
9-12 months    MAL-ED           PERU                           NA                   NA                0.1889091   0.1714286   0.2063895
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1942317   0.1611718   0.2272916
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1666156   0.1433719   0.1898593
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666346   0.3520469   0.3812223
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1942701   0.1877716   0.2007686
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046674   0.1945724   0.2147625
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1803308   0.1757102   0.1849513
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1494577   0.1400489   0.1588664
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721326   0.1589773   0.1852879
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1303805   0.1262369   0.1345242
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1432740   0.1219866   0.1645613
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1640900   0.1452042   0.1829758
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1462212   0.1153217   0.1771207
12-15 months   MAL-ED           PERU                           NA                   NA                0.1359235   0.1172130   0.1546339
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2047542   0.1618275   0.2476808
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1560048   0.1287531   0.1832566
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2220604   0.1483293   0.2957915
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1850197   0.1777323   0.1923071
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1494723   0.1412866   0.1576580
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1393318   0.1281470   0.1505167
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2350431   0.2197705   0.2503158
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1590688   0.1543592   0.1637784
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1409163   0.1195900   0.1622427
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1581846   0.1392554   0.1771138
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1798063   0.1508806   0.2087320
15-18 months   MAL-ED           PERU                           NA                   NA                0.1489503   0.1280148   0.1698858
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1963790   0.1505894   0.2421687
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1419845   0.1160803   0.1678887
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2257916   0.1650856   0.2864975
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1779207   0.1649792   0.1908623
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1322184   0.1211645   0.1432722
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1645080   0.1535840   0.1754321
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1424437   0.1268798   0.1580076
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1825568   0.1623545   0.2027591
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1402268   0.1179043   0.1625493
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1690161   0.1488880   0.1891442
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1365007   0.1044454   0.1685560
18-21 months   MAL-ED           PERU                           NA                   NA                0.1548358   0.1331869   0.1764847
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1840466   0.1362048   0.2318884
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1529603   0.1256586   0.1802620
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROBIT           BELARUS                        NA                   NA                0.1780071   0.0228425   0.3331716
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1253678   0.1088782   0.1418574
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1868945   0.1767223   0.1970666
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1784541   0.1514958   0.2054124
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1573129   0.1397209   0.1749049
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1589947   0.1420378   0.1759517
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1654980   0.1381463   0.1928498
21-24 months   MAL-ED           PERU                           NA                   NA                0.1882452   0.1656872   0.2108032
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2060492   0.1695154   0.2425830
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1503769   0.1196123   0.1811415
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROBIT           BELARUS                        NA                   NA                0.1690231   0.0852721   0.2527742
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1073418   0.0791007   0.1355828


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low                  High               0.0107891   -0.0373630    0.0589412
0-3 months     COHORTS          GUATEMALA                      Medium               High              -0.0016922   -0.0514670    0.0480827
0-3 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low                  High              -0.0393441   -0.0633592   -0.0153289
0-3 months     COHORTS          INDIA                          Medium               High              -0.0288409   -0.0536456   -0.0040363
0-3 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low                  High              -0.0550432   -0.0998922   -0.0101941
0-3 months     GMS-Nepal        NEPAL                          Medium               High              -0.0354462   -0.0824160    0.0115237
0-3 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0447696   -0.0526583   -0.0368808
0-3 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0308374   -0.0389543   -0.0227204
0-3 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0128585   -0.0399144    0.0141974
0-3 months     JiVitA-4         BANGLADESH                     Medium               High               0.0070587   -0.0194106    0.0335279
0-3 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low                  High              -0.0428121   -0.1136342    0.0280099
0-3 months     MAL-ED           BANGLADESH                     Medium               High               0.0236951   -0.0488276    0.0962178
0-3 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low                  High              -0.0084051   -0.0776792    0.0608691
0-3 months     MAL-ED           INDIA                          Medium               High              -0.0740655   -0.1492565    0.0011255
0-3 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low                  High               0.0300493   -0.0801324    0.1402309
0-3 months     MAL-ED           NEPAL                          Medium               High               0.0517541   -0.0560310    0.1595391
0-3 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low                  High               0.0324807   -0.0275377    0.0924991
0-3 months     MAL-ED           PERU                           Medium               High               0.0277764   -0.0397404    0.0952932
0-3 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0778881   -0.1753938    0.0196175
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.1178923   -0.2196174   -0.0161672
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0276569   -0.0406244    0.0959382
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0675906   -0.0368567    0.1720379
0-3 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0082013   -0.0424828    0.0260802
0-3 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0165774   -0.0525049    0.0193501
0-3 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Low                  High              -0.0160759   -0.0324398    0.0002880
0-3 months     PROBIT           BELARUS                        Medium               High              -0.0050251   -0.0172786    0.0072284
0-3 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low                  High              -0.0524319   -0.0889725   -0.0158914
0-3 months     PROVIDE          BANGLADESH                     Medium               High              -0.0490256   -0.0845769   -0.0134743
0-3 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low                  High              -0.0586671   -0.0787503   -0.0385839
0-3 months     SAS-CompFeed     INDIA                          Medium               High              -0.0016510   -0.0223628    0.0190607
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0167578   -0.0431688    0.0096532
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0231183   -0.0530774    0.0068409
0-3 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0491347   -0.0726930   -0.0255764
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0081392   -0.0289573    0.0126789
3-6 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low                  High              -0.0421596   -0.0747078   -0.0096113
3-6 months     COHORTS          GUATEMALA                      Medium               High              -0.0080502   -0.0417614    0.0256609
3-6 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low                  High              -0.0327825   -0.0539158   -0.0116491
3-6 months     COHORTS          INDIA                          Medium               High              -0.0188924   -0.0397844    0.0019995
3-6 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low                  High              -0.0167256   -0.0519426    0.0184914
3-6 months     GMS-Nepal        NEPAL                          Medium               High              -0.0144260   -0.0539293    0.0250774
3-6 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0246509   -0.0318552   -0.0174466
3-6 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0103554   -0.0177636   -0.0029471
3-6 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0112801   -0.0329007    0.0103405
3-6 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0159565   -0.0377180    0.0058050
3-6 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low                  High              -0.0335475   -0.0795069    0.0124120
3-6 months     MAL-ED           BANGLADESH                     Medium               High              -0.0105753   -0.0694142    0.0482635
3-6 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low                  High              -0.0095771   -0.0626386    0.0434844
3-6 months     MAL-ED           INDIA                          Medium               High              -0.0326618   -0.0880207    0.0226971
3-6 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low                  High              -0.1388679   -0.2098515   -0.0678843
3-6 months     MAL-ED           NEPAL                          Medium               High              -0.0502155   -0.1273268    0.0268958
3-6 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low                  High               0.0370295   -0.0108978    0.0849567
3-6 months     MAL-ED           PERU                           Medium               High              -0.0121259   -0.0639803    0.0397285
3-6 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0329014   -0.1274883    0.0616855
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0238579   -0.0737850    0.1215008
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0105865   -0.0696466    0.0484736
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0172835   -0.0412260    0.0757929
3-6 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0167837   -0.0437959    0.0102285
3-6 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0130744   -0.0392930    0.0131443
3-6 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Low                  High              -0.0089281   -0.0211955    0.0033393
3-6 months     PROBIT           BELARUS                        Medium               High              -0.0043806   -0.0162811    0.0075199
3-6 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low                  High              -0.0289656   -0.0602626    0.0023315
3-6 months     PROVIDE          BANGLADESH                     Medium               High              -0.0252125   -0.0555800    0.0051550
3-6 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low                  High              -0.0214202   -0.0474170    0.0045766
3-6 months     SAS-CompFeed     INDIA                          Medium               High              -0.0009819   -0.0234444    0.0214805
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0203700   -0.0435760    0.0028360
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0258487   -0.0516695   -0.0000280
3-6 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0123597   -0.0340485    0.0093292
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               High               0.0004304   -0.0191633    0.0200241
6-9 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low                  High               0.0017019   -0.0258057    0.0292094
6-9 months     COHORTS          GUATEMALA                      Medium               High               0.0059225   -0.0221066    0.0339515
6-9 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low                  High              -0.0677106   -0.0879041   -0.0475172
6-9 months     COHORTS          INDIA                          Medium               High              -0.0421686   -0.0631120   -0.0212252
6-9 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low                  High              -0.0064067   -0.0374834    0.0246700
6-9 months     GMS-Nepal        NEPAL                          Medium               High              -0.0003541   -0.0285618    0.0278535
6-9 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0192490   -0.0334906   -0.0050074
6-9 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0139659   -0.0282213    0.0002894
6-9 months     LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Low                  High              -0.0106256   -0.0423024    0.0210511
6-9 months     LCNI-5           MALAWI                         Medium               High              -0.0186333   -0.0516105    0.0143439
6-9 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low                  High              -0.0444627   -0.0894970    0.0005717
6-9 months     MAL-ED           BANGLADESH                     Medium               High              -0.0321628   -0.0802974    0.0159718
6-9 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low                  High              -0.0028245   -0.0487561    0.0431071
6-9 months     MAL-ED           INDIA                          Medium               High              -0.0063784   -0.0504648    0.0377080
6-9 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low                  High              -0.0273838   -0.0848736    0.0301060
6-9 months     MAL-ED           NEPAL                          Medium               High              -0.0327517   -0.0940824    0.0285790
6-9 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low                  High               0.0088251   -0.0347818    0.0524321
6-9 months     MAL-ED           PERU                           Medium               High               0.0177385   -0.0209862    0.0564633
6-9 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0122271   -0.0951632    0.0707091
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.0411125   -0.1145891    0.0323641
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0231646   -0.0726645    0.0263353
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0255686   -0.0484977    0.0996349
6-9 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0712646   -0.0957777   -0.0467515
6-9 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0306105   -0.0560154   -0.0052055
6-9 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Low                  High               0.0044381   -0.0066839    0.0155601
6-9 months     PROBIT           BELARUS                        Medium               High               0.0012189   -0.0095052    0.0119429
6-9 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low                  High              -0.0632723   -0.0941850   -0.0323596
6-9 months     PROVIDE          BANGLADESH                     Medium               High              -0.0315305   -0.0559853   -0.0070758
6-9 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low                  High              -0.0321045   -0.0680910    0.0038821
6-9 months     SAS-CompFeed     INDIA                          Medium               High              -0.0081910   -0.0436186    0.0272365
6-9 months     SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          Low                  High               0.0202340   -0.0203213    0.0607893
6-9 months     SAS-FoodSuppl    INDIA                          Medium               High               0.0209619   -0.0220869    0.0640107
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0238919   -0.0488772    0.0010934
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0001654   -0.0275085    0.0271776
6-9 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0052012   -0.0293830    0.0189806
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               High               0.0021295   -0.0196610    0.0239200
9-12 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low                  High               0.0113387   -0.0136014    0.0362789
9-12 months    COHORTS          GUATEMALA                      Medium               High               0.0057507   -0.0189442    0.0304457
9-12 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low                  High              -0.0439461   -0.0663864   -0.0215059
9-12 months    COHORTS          INDIA                          Medium               High              -0.0217057   -0.0449475    0.0015361
9-12 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low                  High              -0.0055354   -0.0377523    0.0266815
9-12 months    GMS-Nepal        NEPAL                          Medium               High               0.0088726   -0.0250544    0.0427995
9-12 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low                  High              -0.0033969   -0.0152849    0.0084911
9-12 months    JiVitA-4         BANGLADESH                     Medium               High               0.0005911   -0.0109380    0.0121203
9-12 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Low                  High               0.0021597   -0.0346868    0.0390062
9-12 months    LCNI-5           MALAWI                         Medium               High              -0.0032580   -0.0420415    0.0355255
9-12 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low                  High              -0.0067722   -0.0479101    0.0343658
9-12 months    MAL-ED           BANGLADESH                     Medium               High              -0.0165287   -0.0595113    0.0264539
9-12 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low                  High               0.0153369   -0.0315668    0.0622407
9-12 months    MAL-ED           INDIA                          Medium               High              -0.0160212   -0.0616159    0.0295735
9-12 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low                  High              -0.0146364   -0.0656277    0.0363548
9-12 months    MAL-ED           NEPAL                          Medium               High              -0.0763993   -0.1436556   -0.0091430
9-12 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low                  High               0.0175090   -0.0251923    0.0602103
9-12 months    MAL-ED           PERU                           Medium               High              -0.0295889   -0.0697700    0.0105923
9-12 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.0679238   -0.1416430    0.0057953
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0398427   -0.1230193    0.0433339
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0083478   -0.0435313    0.0602268
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0783245   -0.1539547   -0.0026942
9-12 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0359979   -0.0610014   -0.0109944
9-12 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0043433   -0.0291334    0.0204468
9-12 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Low                  High               0.0079488   -0.0030071    0.0189046
9-12 months    PROBIT           BELARUS                        Medium               High              -0.0109263   -0.0216683   -0.0001843
9-12 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low                  High              -0.0406637   -0.0625397   -0.0187876
9-12 months    PROVIDE          BANGLADESH                     Medium               High              -0.0247305   -0.0480132   -0.0014478
9-12 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low                  High              -0.0370671   -0.0585448   -0.0155895
9-12 months    SAS-CompFeed     INDIA                          Medium               High              -0.0026705   -0.0257645    0.0204235
9-12 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.0366310   -0.0890151    0.0157532
9-12 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.0047771   -0.0542909    0.0447368
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0146936   -0.0435127    0.0141254
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0009556   -0.0293736    0.0312848
9-12 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0059429   -0.0290263    0.0171406
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0006448   -0.0214142    0.0201247
12-15 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low                  High              -0.0051680   -0.0300762    0.0197403
12-15 months   COHORTS          GUATEMALA                      Medium               High               0.0102262   -0.0157309    0.0361833
12-15 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low                  High              -0.0311676   -0.0614893   -0.0008458
12-15 months   GMS-Nepal        NEPAL                          Medium               High              -0.0064730   -0.0433962    0.0304503
12-15 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0103442   -0.0218693    0.0011808
12-15 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0030681   -0.0141110    0.0079749
12-15 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Low                  High               0.0450378   -0.0372006    0.1272762
12-15 months   LCNI-5           MALAWI                         Medium               High               0.0651464   -0.0300054    0.1602982
12-15 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low                  High              -0.0482831   -0.0961898   -0.0003764
12-15 months   MAL-ED           BANGLADESH                     Medium               High               0.0037136   -0.0473482    0.0547755
12-15 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low                  High               0.0197623   -0.0272717    0.0667964
12-15 months   MAL-ED           INDIA                          Medium               High               0.0231966   -0.0224619    0.0688552
12-15 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low                  High              -0.0023453   -0.0629535    0.0582628
12-15 months   MAL-ED           NEPAL                          Medium               High               0.0086606   -0.0786297    0.0959510
12-15 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low                  High               0.0099086   -0.0366164    0.0564336
12-15 months   MAL-ED           PERU                           Medium               High               0.0335711   -0.0142397    0.0813818
12-15 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0317675   -0.0725434    0.1360783
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0010411   -0.0914058    0.0934881
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0094039   -0.0676260    0.0488183
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0063936   -0.1203915    0.1076044
12-15 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0257621   -0.0496225   -0.0019016
12-15 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0198600   -0.0469465    0.0072266
12-15 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Low                  High              -0.0093264   -0.1443274    0.1256746
12-15 months   PROBIT           BELARUS                        Medium               High              -0.0290743   -0.1586415    0.1004928
12-15 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low                  High              -0.0147775   -0.0424101    0.0128550
12-15 months   PROVIDE          BANGLADESH                     Medium               High              -0.0059612   -0.0346223    0.0226999
12-15 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low                  High               0.0076093   -0.0107741    0.0259927
12-15 months   SAS-CompFeed     INDIA                          Medium               High              -0.0018212   -0.0207754    0.0171331
12-15 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          Low                  High              -0.0119745   -0.0542556    0.0303065
12-15 months   SAS-FoodSuppl    INDIA                          Medium               High              -0.0179245   -0.0555496    0.0197007
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0059297   -0.0367041    0.0248446
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0144871   -0.0491323    0.0201581
12-15 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0349221   -0.0760827    0.0062386
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0311126   -0.0689146    0.0066894
15-18 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low                  High               0.0415157    0.0103780    0.0726534
15-18 months   COHORTS          GUATEMALA                      Medium               High               0.0196754   -0.0132093    0.0525600
15-18 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low                  High              -0.0039682   -0.0390527    0.0311163
15-18 months   GMS-Nepal        NEPAL                          Medium               High              -0.0051764   -0.0441974    0.0338446
15-18 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low                  High               0.0000155   -0.0120091    0.0120400
15-18 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0004182   -0.0120534    0.0112169
15-18 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Low                  High              -0.0061931   -0.0779926    0.0656064
15-18 months   LCNI-5           MALAWI                         Medium               High              -0.0494475   -0.1264638    0.0275689
15-18 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low                  High               0.0092988   -0.0417372    0.0603348
15-18 months   MAL-ED           BANGLADESH                     Medium               High               0.0002353   -0.0511830    0.0516536
15-18 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low                  High              -0.0028439   -0.0510081    0.0453203
15-18 months   MAL-ED           INDIA                          Medium               High              -0.0113968   -0.0636839    0.0408902
15-18 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low                  High              -0.0581956   -0.1298868    0.0134956
15-18 months   MAL-ED           NEPAL                          Medium               High              -0.0066442   -0.0718557    0.0585674
15-18 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low                  High              -0.0175500   -0.0733770    0.0382771
15-18 months   MAL-ED           PERU                           Medium               High               0.0230981   -0.0250395    0.0712358
15-18 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0261422   -0.1280640    0.0757797
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0490515   -0.1729791    0.0748760
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0331391   -0.0974087    0.0311305
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0021576   -0.0888269    0.0845117
15-18 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0123980   -0.0392174    0.0144215
15-18 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0253929   -0.0494243   -0.0013614
15-18 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Low                  High               0.0589971   -0.1129599    0.2309540
15-18 months   PROBIT           BELARUS                        Medium               High               0.0307959   -0.0719419    0.1335338
15-18 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low                  High              -0.0095482   -0.0373612    0.0182648
15-18 months   PROVIDE          BANGLADESH                     Medium               High              -0.0232230   -0.0523616    0.0059157
15-18 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low                  High               0.0119344   -0.0084155    0.0322842
15-18 months   SAS-CompFeed     INDIA                          Medium               High               0.0049524   -0.0312269    0.0411317
15-18 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          Low                  High               0.0048871   -0.0338835    0.0436577
15-18 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0153263   -0.0228551    0.0535077
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0113543   -0.0477120    0.0250033
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0027935   -0.0435710    0.0379840
15-18 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0087870   -0.0470472    0.0294731
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0076091   -0.0406932    0.0254750
18-21 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low                  High              -0.0011915   -0.0311661    0.0287832
18-21 months   COHORTS          GUATEMALA                      Medium               High               0.0251479   -0.0049498    0.0552456
18-21 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low                  High               0.0306015   -0.0077898    0.0689929
18-21 months   GMS-Nepal        NEPAL                          Medium               High               0.0002768   -0.0391259    0.0396796
18-21 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Low                  High               0.0307758   -0.0198132    0.0813648
18-21 months   LCNI-5           MALAWI                         Medium               High               0.0103200   -0.0411872    0.0618273
18-21 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low                  High               0.0296625   -0.0186175    0.0779425
18-21 months   MAL-ED           BANGLADESH                     Medium               High               0.0103295   -0.0456558    0.0663147
18-21 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low                  High              -0.0486135   -0.0984092    0.0011822
18-21 months   MAL-ED           INDIA                          Medium               High               0.0004493   -0.0420676    0.0429662
18-21 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low                  High              -0.0054056   -0.0882553    0.0774442
18-21 months   MAL-ED           NEPAL                          Medium               High              -0.0122555   -0.0834090    0.0588980
18-21 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low                  High              -0.0400019   -0.0942436    0.0142398
18-21 months   MAL-ED           PERU                           Medium               High              -0.0330311   -0.0834182    0.0173560
18-21 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  High               0.0059918   -0.1118100    0.1237937
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0340901   -0.1451185    0.0769383
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0483658   -0.1123569    0.0156254
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0560928   -0.1362951    0.0241095
18-21 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low                  High               0.0175558   -0.0070589    0.0421704
18-21 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0127134   -0.0141315    0.0395582
18-21 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Low                  High              -0.0611750   -0.4177739    0.2954238
18-21 months   PROBIT           BELARUS                        Medium               High              -0.0547013   -0.4818090    0.3724064
18-21 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low                  High               0.0005133   -0.0269123    0.0279389
18-21 months   PROVIDE          BANGLADESH                     Medium               High               0.0106497   -0.0179023    0.0392017
18-21 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0348008   -0.1001696    0.0305681
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0065229   -0.0653173    0.0522715
21-24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low                  High               0.0135178   -0.0130586    0.0400942
21-24 months   COHORTS          GUATEMALA                      Medium               High               0.0097790   -0.0175278    0.0370859
21-24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low                  High               0.0166170   -0.0440635    0.0772975
21-24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0118295   -0.0727203    0.0490613
21-24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Low                  High              -0.0246386   -0.0934680    0.0441908
21-24 months   LCNI-5           MALAWI                         Medium               High               0.0160098   -0.0547063    0.0867260
21-24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low                  High              -0.0306524   -0.0774835    0.0161788
21-24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0177973   -0.0599489    0.0243543
21-24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low                  High               0.0032817   -0.0373975    0.0439610
21-24 months   MAL-ED           INDIA                          Medium               High               0.0251954   -0.0181044    0.0684951
21-24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low                  High              -0.0315909   -0.0982199    0.0350382
21-24 months   MAL-ED           NEPAL                          Medium               High              -0.0078387   -0.0726372    0.0569598
21-24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low                  High               0.0666712    0.0072118    0.1261306
21-24 months   MAL-ED           PERU                           Medium               High               0.0276932   -0.0217246    0.0771110
21-24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0569861   -0.1481358    0.0341636
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0493999   -0.1392905    0.0404908
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0045559   -0.0750224    0.0659106
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0258131   -0.1409949    0.0893687
21-24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0187370   -0.0492559    0.0117820
21-24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0378594    0.0084686    0.0672502
21-24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Low                  High              -0.0437564   -0.2482122    0.1606994
21-24 months   PROBIT           BELARUS                        Medium               High              -0.0463336   -0.2868285    0.1941614
21-24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0057920   -0.0322955    0.0207115
21-24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0008369   -0.0303621    0.0286882
21-24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0207760   -0.1396191    0.0980672
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0032837   -0.1054339    0.1120014


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                 0.0040599   -0.0326249    0.0407448
0-3 months     COHORTS          INDIA                          High                 NA                -0.0211150   -0.0338681   -0.0083620
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0353415   -0.0667727   -0.0039104
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0298297   -0.0354801   -0.0241792
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0022255   -0.0211107    0.0166597
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0032037   -0.0437401    0.0373328
0-3 months     MAL-ED           INDIA                          High                 NA                -0.0246385   -0.0682710    0.0189940
0-3 months     MAL-ED           NEPAL                          High                 NA                 0.0240075   -0.0292729    0.0772878
0-3 months     MAL-ED           PERU                           High                 NA                 0.0157643   -0.0111901    0.0427187
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0586865   -0.1143301   -0.0030429
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0136190   -0.0096962    0.0369342
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0074261   -0.0254029    0.0105506
0-3 months     PROBIT           BELARUS                        High                 NA                -0.0085213   -0.0196037    0.0025611
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.0334046   -0.0542010   -0.0126083
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.0256239   -0.0360731   -0.0151747
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0154519   -0.0359827    0.0050790
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0149039   -0.0341137    0.0043058
3-6 months     COHORTS          GUATEMALA                      High                 NA                -0.0215819   -0.0466952    0.0035314
3-6 months     COHORTS          INDIA                          High                 NA                -0.0159983   -0.0267155   -0.0052810
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.0118514   -0.0369040    0.0132012
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0132996   -0.0180703   -0.0085290
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0105691   -0.0252878    0.0041496
3-6 months     MAL-ED           BANGLADESH                     High                 NA                -0.0125310   -0.0400924    0.0150303
3-6 months     MAL-ED           INDIA                          High                 NA                -0.0130006   -0.0451117    0.0191106
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0554351   -0.0951965   -0.0156738
3-6 months     MAL-ED           PERU                           High                 NA                 0.0070675   -0.0146324    0.0287673
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0064036   -0.0615276    0.0487205
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0014322   -0.0200666    0.0172021
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0091337   -0.0228017    0.0045342
3-6 months     PROBIT           BELARUS                        High                 NA                -0.0054456   -0.0148722    0.0039811
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0177499   -0.0346050   -0.0008947
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0092894   -0.0273424    0.0087636
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0181116   -0.0361275   -0.0000956
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0019108   -0.0200354    0.0162138
6-9 months     COHORTS          GUATEMALA                      High                 NA                 0.0029618   -0.0179110    0.0238346
6-9 months     COHORTS          INDIA                          High                 NA                -0.0341038   -0.0448462   -0.0233614
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0029396   -0.0232835    0.0174044
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0125910   -0.0225326   -0.0026495
6-9 months     LCNI-5           MALAWI                         High                 NA                -0.0099674   -0.0297681    0.0098334
6-9 months     MAL-ED           BANGLADESH                     High                 NA                -0.0230729   -0.0475380    0.0013922
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0029534   -0.0289819    0.0230751
6-9 months     MAL-ED           NEPAL                          High                 NA                -0.0174825   -0.0473785    0.0124136
6-9 months     MAL-ED           PERU                           High                 NA                 0.0069408   -0.0112137    0.0250953
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0149042   -0.0564990    0.0266906
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0041746   -0.0207199    0.0123707
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0313116   -0.0443691   -0.0182540
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0022909   -0.0057482    0.0103300
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0316583   -0.0473073   -0.0160092
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0162673   -0.0412666    0.0087319
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                 0.0154746   -0.0126115    0.0435606
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0127790   -0.0322511    0.0066931
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                 0.0006454   -0.0195959    0.0208868
9-12 months    COHORTS          GUATEMALA                      High                 NA                 0.0071509   -0.0115031    0.0258049
9-12 months    COHORTS          INDIA                          High                 NA                -0.0203004   -0.0320580   -0.0085427
9-12 months    GMS-Nepal        NEPAL                          High                 NA                 0.0003447   -0.0221105    0.0228000
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0010133   -0.0092166    0.0071899
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0004684   -0.0233323    0.0223955
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0077219   -0.0301899    0.0147461
9-12 months    MAL-ED           INDIA                          High                 NA                 0.0014297   -0.0272387    0.0300980
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0262992   -0.0529740    0.0003755
9-12 months    MAL-ED           PERU                           High                 NA                -0.0027323   -0.0215451    0.0160805
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0358394   -0.0772252    0.0055465
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0044970   -0.0219110    0.0129169
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0123718   -0.0251323    0.0003888
9-12 months    PROBIT           BELARUS                        High                 NA                -0.0017138   -0.0095739    0.0061464
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0215601   -0.0344137   -0.0087066
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0165633   -0.0323602   -0.0007665
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0149054   -0.0495017    0.0196909
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0073864   -0.0295148    0.0147420
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0015621   -0.0209175    0.0177934
12-15 months   COHORTS          GUATEMALA                      High                 NA                 0.0012685   -0.0174357    0.0199728
12-15 months   GMS-Nepal        NEPAL                          High                 NA                -0.0159457   -0.0385178    0.0066264
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0050320   -0.0130215    0.0029575
12-15 months   LCNI-5           MALAWI                         High                 NA                 0.0384631   -0.0183346    0.0952608
12-15 months   MAL-ED           BANGLADESH                     High                 NA                -0.0128590   -0.0407599    0.0150419
12-15 months   MAL-ED           INDIA                          High                 NA                 0.0144225   -0.0135138    0.0423588
12-15 months   MAL-ED           NEPAL                          High                 NA                 0.0018044   -0.0325353    0.0361441
12-15 months   MAL-ED           PERU                           High                 NA                 0.0107838   -0.0082266    0.0297942
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0124441   -0.0412946    0.0661828
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0031616   -0.0233811    0.0170579
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0138849   -0.0272770   -0.0004927
12-15 months   PROBIT           BELARUS                        High                 NA                -0.0160859   -0.1182362    0.0860645
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0067575   -0.0219726    0.0084576
12-15 months   SAS-CompFeed     INDIA                          High                 NA                 0.0025639   -0.0077091    0.0128370
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0110021   -0.0362422    0.0142380
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0071489   -0.0309519    0.0166542
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0303583   -0.0660388    0.0053222
15-18 months   COHORTS          GUATEMALA                      High                 NA                 0.0262010    0.0020165    0.0503855
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0034254   -0.0277757    0.0209250
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0001593   -0.0082509    0.0079324
15-18 months   LCNI-5           MALAWI                         High                 NA                -0.0190187   -0.0635286    0.0254913
15-18 months   MAL-ED           BANGLADESH                     High                 NA                 0.0028662   -0.0258986    0.0316309
15-18 months   MAL-ED           INDIA                          High                 NA                -0.0044252   -0.0353977    0.0265473
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0193781   -0.0539538    0.0151976
15-18 months   MAL-ED           PERU                           High                 NA                 0.0010685   -0.0202422    0.0223792
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0217560   -0.0798703    0.0363582
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0093851   -0.0298242    0.0110540
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0114319   -0.0246213    0.0017574
15-18 months   PROBIT           BELARUS                        High                 NA                 0.0340616   -0.0626115    0.1307348
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0103444   -0.0260318    0.0053430
15-18 months   SAS-CompFeed     INDIA                          High                 NA                 0.0065788   -0.0124362    0.0255938
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0077100   -0.0170075    0.0324275
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0067800   -0.0341978    0.0206377
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0075219   -0.0384509    0.0234070
18-21 months   COHORTS          GUATEMALA                      High                 NA                 0.0087534   -0.0139047    0.0314115
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0133985   -0.0124968    0.0392938
18-21 months   LCNI-5           MALAWI                         High                 NA                 0.0140643   -0.0172103    0.0453389
18-21 months   MAL-ED           BANGLADESH                     High                 NA                 0.0124342   -0.0170669    0.0419352
18-21 months   MAL-ED           INDIA                          High                 NA                -0.0185662   -0.0463109    0.0091786
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0051621   -0.0449322    0.0346079
18-21 months   MAL-ED           PERU                           High                 NA                -0.0194353   -0.0423334    0.0034627
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0060696   -0.0699983    0.0578592
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0177521   -0.0378614    0.0023572
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0087686   -0.0038424    0.0213797
18-21 months   PROBIT           BELARUS                        High                 NA                -0.0486078   -0.3537010    0.2564854
18-21 months   PROVIDE          BANGLADESH                     High                 NA                 0.0035389   -0.0125120    0.0195899
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0126206   -0.0681269    0.0428857
21-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0097688   -0.0103225    0.0298601
21-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0036596   -0.0368114    0.0441306
21-24 months   LCNI-5           MALAWI                         High                 NA                -0.0031043   -0.0468301    0.0406214
21-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0154076   -0.0414444    0.0106293
21-24 months   MAL-ED           INDIA                          High                 NA                 0.0087535   -0.0162160    0.0337230
21-24 months   MAL-ED           NEPAL                          High                 NA                -0.0117418   -0.0453838    0.0219003
21-24 months   MAL-ED           PERU                           High                 NA                 0.0259888    0.0020500    0.0499277
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0337772   -0.0867050    0.0191506
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0035251   -0.0266017    0.0195516
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0064271   -0.0086004    0.0214545
21-24 months   PROBIT           BELARUS                        High                 NA                -0.0380450   -0.2045840    0.1284940
21-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0023556   -0.0186862    0.0139749
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0033902   -0.1067073    0.0999269
