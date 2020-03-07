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
0-3 months     COHORTS          GUATEMALA                      High           135     693
0-3 months     COHORTS          GUATEMALA                      Low            300     693
0-3 months     COHORTS          GUATEMALA                      Medium         258     693
0-3 months     COHORTS          INDIA                          High           517    1330
0-3 months     COHORTS          INDIA                          Low            430    1330
0-3 months     COHORTS          INDIA                          Medium         383    1330
0-3 months     GMS-Nepal        NEPAL                          High           126     508
0-3 months     GMS-Nepal        NEPAL                          Low            228     508
0-3 months     GMS-Nepal        NEPAL                          Medium         154     508
0-3 months     JiVitA-3         BANGLADESH                     High          4350   19165
0-3 months     JiVitA-3         BANGLADESH                     Low           8269   19165
0-3 months     JiVitA-3         BANGLADESH                     Medium        6546   19165
0-3 months     JiVitA-4         BANGLADESH                     High           371    1755
0-3 months     JiVitA-4         BANGLADESH                     Low            691    1755
0-3 months     JiVitA-4         BANGLADESH                     Medium         693    1755
0-3 months     MAL-ED           BANGLADESH                     High            50     137
0-3 months     MAL-ED           BANGLADESH                     Low             38     137
0-3 months     MAL-ED           BANGLADESH                     Medium          49     137
0-3 months     MAL-ED           INDIA                          High            32     108
0-3 months     MAL-ED           INDIA                          Low             46     108
0-3 months     MAL-ED           INDIA                          Medium          30     108
0-3 months     MAL-ED           NEPAL                          High            23      60
0-3 months     MAL-ED           NEPAL                          Low             17      60
0-3 months     MAL-ED           NEPAL                          Medium          20      60
0-3 months     MAL-ED           PERU                           High           105     220
0-3 months     MAL-ED           PERU                           Low             60     220
0-3 months     MAL-ED           PERU                           Medium          55     220
0-3 months     MAL-ED           SOUTH AFRICA                   High            27      74
0-3 months     MAL-ED           SOUTH AFRICA                   Low             27      74
0-3 months     MAL-ED           SOUTH AFRICA                   Medium          20      74
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           117     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             51     185
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          17     185
0-3 months     NIH-Crypto       BANGLADESH                     High           280     721
0-3 months     NIH-Crypto       BANGLADESH                     Low            232     721
0-3 months     NIH-Crypto       BANGLADESH                     Medium         209     721
0-3 months     PROBIT           BELARUS                        High          2448   14789
0-3 months     PROBIT           BELARUS                        Low           5791   14789
0-3 months     PROBIT           BELARUS                        Medium        6550   14789
0-3 months     PROVIDE          BANGLADESH                     High           219     640
0-3 months     PROVIDE          BANGLADESH                     Low            217     640
0-3 months     PROVIDE          BANGLADESH                     Medium         204     640
0-3 months     SAS-CompFeed     INDIA                          High           323    1258
0-3 months     SAS-CompFeed     INDIA                          Low            541    1258
0-3 months     SAS-CompFeed     INDIA                          Medium         394    1258
0-3 months     ZVITAMBO         ZIMBABWE                       High           537    7738
0-3 months     ZVITAMBO         ZIMBABWE                       Low           1384    7738
0-3 months     ZVITAMBO         ZIMBABWE                       Medium        5817    7738
3-6 months     COHORTS          GUATEMALA                      High           142     761
3-6 months     COHORTS          GUATEMALA                      Low            334     761
3-6 months     COHORTS          GUATEMALA                      Medium         285     761
3-6 months     COHORTS          INDIA                          High           528    1343
3-6 months     COHORTS          INDIA                          Low            431    1343
3-6 months     COHORTS          INDIA                          Medium         384    1343
3-6 months     GMS-Nepal        NEPAL                          High           116     468
3-6 months     GMS-Nepal        NEPAL                          Low            211     468
3-6 months     GMS-Nepal        NEPAL                          Medium         141     468
3-6 months     JiVitA-3         BANGLADESH                     High          3149   12082
3-6 months     JiVitA-3         BANGLADESH                     Low           4773   12082
3-6 months     JiVitA-3         BANGLADESH                     Medium        4160   12082
3-6 months     JiVitA-4         BANGLADESH                     High           404    1792
3-6 months     JiVitA-4         BANGLADESH                     Low            681    1792
3-6 months     JiVitA-4         BANGLADESH                     Medium         707    1792
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
3-6 months     NIH-Crypto       BANGLADESH                     High           271     695
3-6 months     NIH-Crypto       BANGLADESH                     Low            220     695
3-6 months     NIH-Crypto       BANGLADESH                     Medium         204     695
3-6 months     PROBIT           BELARUS                        High          2108   12834
3-6 months     PROBIT           BELARUS                        Low           5034   12834
3-6 months     PROBIT           BELARUS                        Medium        5692   12834
3-6 months     PROVIDE          BANGLADESH                     High           207     598
3-6 months     PROVIDE          BANGLADESH                     Low            208     598
3-6 months     PROVIDE          BANGLADESH                     Medium         183     598
3-6 months     SAS-CompFeed     INDIA                          High           287    1121
3-6 months     SAS-CompFeed     INDIA                          Low            470    1121
3-6 months     SAS-CompFeed     INDIA                          Medium         364    1121
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           310    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            882    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         464    1656
3-6 months     ZVITAMBO         ZIMBABWE                       High           413    5993
3-6 months     ZVITAMBO         ZIMBABWE                       Low           1079    5993
3-6 months     ZVITAMBO         ZIMBABWE                       Medium        4501    5993
6-9 months     COHORTS          GUATEMALA                      High           142     781
6-9 months     COHORTS          GUATEMALA                      Low            348     781
6-9 months     COHORTS          GUATEMALA                      Medium         291     781
6-9 months     COHORTS          INDIA                          High           487    1255
6-9 months     COHORTS          INDIA                          Low            413    1255
6-9 months     COHORTS          INDIA                          Medium         355    1255
6-9 months     GMS-Nepal        NEPAL                          High           114     480
6-9 months     GMS-Nepal        NEPAL                          Low            213     480
6-9 months     GMS-Nepal        NEPAL                          Medium         153     480
6-9 months     JiVitA-4         BANGLADESH                     High           707    2963
6-9 months     JiVitA-4         BANGLADESH                     Low           1101    2963
6-9 months     JiVitA-4         BANGLADESH                     Medium        1155    2963
6-9 months     LCNI-5           MALAWI                         High           175     557
6-9 months     LCNI-5           MALAWI                         Low            193     557
6-9 months     LCNI-5           MALAWI                         Medium         189     557
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
6-9 months     NIH-Crypto       BANGLADESH                     High           270     688
6-9 months     NIH-Crypto       BANGLADESH                     Low            215     688
6-9 months     NIH-Crypto       BANGLADESH                     Medium         203     688
6-9 months     PROBIT           BELARUS                        High          1947   12000
6-9 months     PROBIT           BELARUS                        Low           4731   12000
6-9 months     PROBIT           BELARUS                        Medium        5322   12000
6-9 months     PROVIDE          BANGLADESH                     High           194     565
6-9 months     PROVIDE          BANGLADESH                     Low            192     565
6-9 months     PROVIDE          BANGLADESH                     Medium         179     565
6-9 months     SAS-CompFeed     INDIA                          High           291    1141
6-9 months     SAS-CompFeed     INDIA                          Low            487    1141
6-9 months     SAS-CompFeed     INDIA                          Medium         363    1141
6-9 months     SAS-FoodSuppl    INDIA                          High            78     314
6-9 months     SAS-FoodSuppl    INDIA                          Low            113     314
6-9 months     SAS-FoodSuppl    INDIA                          Medium         123     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           280    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            786    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         414    1480
6-9 months     ZVITAMBO         ZIMBABWE                       High           396    5766
6-9 months     ZVITAMBO         ZIMBABWE                       Low           1037    5766
6-9 months     ZVITAMBO         ZIMBABWE                       Medium        4333    5766
9-12 months    COHORTS          GUATEMALA                      High           163     882
9-12 months    COHORTS          GUATEMALA                      Low            389     882
9-12 months    COHORTS          GUATEMALA                      Medium         330     882
9-12 months    COHORTS          INDIA                          High           442    1126
9-12 months    COHORTS          INDIA                          Low            363    1126
9-12 months    COHORTS          INDIA                          Medium         321    1126
9-12 months    GMS-Nepal        NEPAL                          High           112     468
9-12 months    GMS-Nepal        NEPAL                          Low            206     468
9-12 months    GMS-Nepal        NEPAL                          Medium         150     468
9-12 months    JiVitA-4         BANGLADESH                     High           809    3402
9-12 months    JiVitA-4         BANGLADESH                     Low           1252    3402
9-12 months    JiVitA-4         BANGLADESH                     Medium        1341    3402
9-12 months    LCNI-5           MALAWI                         High           112     382
9-12 months    LCNI-5           MALAWI                         Low            130     382
9-12 months    LCNI-5           MALAWI                         Medium         140     382
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           118     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             50     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     184
9-12 months    NIH-Crypto       BANGLADESH                     High           265     674
9-12 months    NIH-Crypto       BANGLADESH                     Low            206     674
9-12 months    NIH-Crypto       BANGLADESH                     Medium         203     674
9-12 months    PROBIT           BELARUS                        High          1999   12257
9-12 months    PROBIT           BELARUS                        Low           4825   12257
9-12 months    PROBIT           BELARUS                        Medium        5433   12257
9-12 months    PROVIDE          BANGLADESH                     High           194     566
9-12 months    PROVIDE          BANGLADESH                     Low            190     566
9-12 months    PROVIDE          BANGLADESH                     Medium         182     566
9-12 months    SAS-CompFeed     INDIA                          High           288    1143
9-12 months    SAS-CompFeed     INDIA                          Low            486    1143
9-12 months    SAS-CompFeed     INDIA                          Medium         369    1143
9-12 months    SAS-FoodSuppl    INDIA                          High            78     311
9-12 months    SAS-FoodSuppl    INDIA                          Low            114     311
9-12 months    SAS-FoodSuppl    INDIA                          Medium         119     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           207    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            561    1076
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         308    1076
9-12 months    ZVITAMBO         ZIMBABWE                       High           369    5777
9-12 months    ZVITAMBO         ZIMBABWE                       Low           1030    5777
9-12 months    ZVITAMBO         ZIMBABWE                       Medium        4378    5777
12-15 months   COHORTS          GUATEMALA                      High           158     832
12-15 months   COHORTS          GUATEMALA                      Low            379     832
12-15 months   COHORTS          GUATEMALA                      Medium         295     832
12-15 months   GMS-Nepal        NEPAL                          High           107     468
12-15 months   GMS-Nepal        NEPAL                          Low            206     468
12-15 months   GMS-Nepal        NEPAL                          Medium         155     468
12-15 months   JiVitA-4         BANGLADESH                     High           794    3442
12-15 months   JiVitA-4         BANGLADESH                     Low           1264    3442
12-15 months   JiVitA-4         BANGLADESH                     Medium        1384    3442
12-15 months   LCNI-5           MALAWI                         High            38     126
12-15 months   LCNI-5           MALAWI                         Low             46     126
12-15 months   LCNI-5           MALAWI                         Medium          42     126
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           119     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             51     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     185
12-15 months   NIH-Crypto       BANGLADESH                     High           259     660
12-15 months   NIH-Crypto       BANGLADESH                     Low            201     660
12-15 months   NIH-Crypto       BANGLADESH                     Medium         200     660
12-15 months   PROBIT           BELARUS                        High           176     967
12-15 months   PROBIT           BELARUS                        Low            374     967
12-15 months   PROBIT           BELARUS                        Medium         417     967
12-15 months   PROVIDE          BANGLADESH                     High           192     532
12-15 months   PROVIDE          BANGLADESH                     Low            176     532
12-15 months   PROVIDE          BANGLADESH                     Medium         164     532
12-15 months   SAS-CompFeed     INDIA                          High           302    1165
12-15 months   SAS-CompFeed     INDIA                          Low            484    1165
12-15 months   SAS-CompFeed     INDIA                          Medium         379    1165
12-15 months   SAS-FoodSuppl    INDIA                          High            81     303
12-15 months   SAS-FoodSuppl    INDIA                          Low            105     303
12-15 months   SAS-FoodSuppl    INDIA                          Medium         117     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           152     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            417     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         217     786
12-15 months   ZVITAMBO         ZIMBABWE                       High           140    2464
12-15 months   ZVITAMBO         ZIMBABWE                       Low            485    2464
12-15 months   ZVITAMBO         ZIMBABWE                       Medium        1839    2464
15-18 months   COHORTS          GUATEMALA                      High           135     749
15-18 months   COHORTS          GUATEMALA                      Low            345     749
15-18 months   COHORTS          GUATEMALA                      Medium         269     749
15-18 months   GMS-Nepal        NEPAL                          High           114     479
15-18 months   GMS-Nepal        NEPAL                          Low            211     479
15-18 months   GMS-Nepal        NEPAL                          Medium         154     479
15-18 months   JiVitA-4         BANGLADESH                     High           806    3445
15-18 months   JiVitA-4         BANGLADESH                     Low           1285    3445
15-18 months   JiVitA-4         BANGLADESH                     Medium        1354    3445
15-18 months   LCNI-5           MALAWI                         High            35     119
15-18 months   LCNI-5           MALAWI                         Low             44     119
15-18 months   LCNI-5           MALAWI                         Medium          40     119
15-18 months   MAL-ED           BANGLADESH                     High            40     117
15-18 months   MAL-ED           BANGLADESH                     Low             35     117
15-18 months   MAL-ED           BANGLADESH                     Medium          42     117
15-18 months   MAL-ED           INDIA                          High            42     130
15-18 months   MAL-ED           INDIA                          Low             50     130
15-18 months   MAL-ED           INDIA                          Medium          38     130
15-18 months   MAL-ED           NEPAL                          High            37      90
15-18 months   MAL-ED           NEPAL                          Low             27      90
15-18 months   MAL-ED           NEPAL                          Medium          26      90
15-18 months   MAL-ED           PERU                           High            84     173
15-18 months   MAL-ED           PERU                           Low             46     173
15-18 months   MAL-ED           PERU                           Medium          43     173
15-18 months   MAL-ED           SOUTH AFRICA                   High            33      87
15-18 months   MAL-ED           SOUTH AFRICA                   Low             33      87
15-18 months   MAL-ED           SOUTH AFRICA                   Medium          21      87
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             48     177
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     177
15-18 months   NIH-Crypto       BANGLADESH                     High           240     604
15-18 months   NIH-Crypto       BANGLADESH                     Low            181     604
15-18 months   NIH-Crypto       BANGLADESH                     Medium         183     604
15-18 months   PROBIT           BELARUS                        High            58     260
15-18 months   PROBIT           BELARUS                        Low             95     260
15-18 months   PROBIT           BELARUS                        Medium         107     260
15-18 months   PROVIDE          BANGLADESH                     High           188     528
15-18 months   PROVIDE          BANGLADESH                     Low            178     528
15-18 months   PROVIDE          BANGLADESH                     Medium         162     528
15-18 months   SAS-CompFeed     INDIA                          High           303    1168
15-18 months   SAS-CompFeed     INDIA                          Low            487    1168
15-18 months   SAS-CompFeed     INDIA                          Medium         378    1168
15-18 months   SAS-FoodSuppl    INDIA                          High            76     291
15-18 months   SAS-FoodSuppl    INDIA                          Low            100     291
15-18 months   SAS-FoodSuppl    INDIA                          Medium         115     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           134     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            353     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         175     662
15-18 months   ZVITAMBO         ZIMBABWE                       High           107    1963
15-18 months   ZVITAMBO         ZIMBABWE                       Low            395    1963
15-18 months   ZVITAMBO         ZIMBABWE                       Medium        1461    1963
18-21 months   COHORTS          GUATEMALA                      High           133     739
18-21 months   COHORTS          GUATEMALA                      Low            338     739
18-21 months   COHORTS          GUATEMALA                      Medium         268     739
18-21 months   GMS-Nepal        NEPAL                          High           110     444
18-21 months   GMS-Nepal        NEPAL                          Low            194     444
18-21 months   GMS-Nepal        NEPAL                          Medium         140     444
18-21 months   LCNI-5           MALAWI                         High           147     472
18-21 months   LCNI-5           MALAWI                         Low            161     472
18-21 months   LCNI-5           MALAWI                         Medium         164     472
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           108     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             43     166
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     166
18-21 months   NIH-Crypto       BANGLADESH                     High           228     546
18-21 months   NIH-Crypto       BANGLADESH                     Low            152     546
18-21 months   NIH-Crypto       BANGLADESH                     Medium         166     546
18-21 months   PROBIT           BELARUS                        High            32     211
18-21 months   PROBIT           BELARUS                        Low             87     211
18-21 months   PROBIT           BELARUS                        Medium          92     211
18-21 months   PROVIDE          BANGLADESH                     High           182     541
18-21 months   PROVIDE          BANGLADESH                     Low            188     541
18-21 months   PROVIDE          BANGLADESH                     Medium         171     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              3       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       9
18-21 months   ZVITAMBO         ZIMBABWE                       High            74    1544
18-21 months   ZVITAMBO         ZIMBABWE                       Low            311    1544
18-21 months   ZVITAMBO         ZIMBABWE                       Medium        1159    1544
21-24 months   COHORTS          GUATEMALA                      High           144     812
21-24 months   COHORTS          GUATEMALA                      Low            374     812
21-24 months   COHORTS          GUATEMALA                      Medium         294     812
21-24 months   GMS-Nepal        NEPAL                          High            84     342
21-24 months   GMS-Nepal        NEPAL                          Low            151     342
21-24 months   GMS-Nepal        NEPAL                          Medium         107     342
21-24 months   LCNI-5           MALAWI                         High           122     403
21-24 months   LCNI-5           MALAWI                         Low            145     403
21-24 months   LCNI-5           MALAWI                         Medium         136     403
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           107     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             45     167
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          15     167
21-24 months   NIH-Crypto       BANGLADESH                     High           204     490
21-24 months   NIH-Crypto       BANGLADESH                     Low            135     490
21-24 months   NIH-Crypto       BANGLADESH                     Medium         151     490
21-24 months   PROBIT           BELARUS                        High            31     204
21-24 months   PROBIT           BELARUS                        Low             83     204
21-24 months   PROBIT           BELARUS                        Medium          90     204
21-24 months   PROVIDE          BANGLADESH                     High           154     471
21-24 months   PROVIDE          BANGLADESH                     Low            169     471
21-24 months   PROVIDE          BANGLADESH                     Medium         148     471
21-24 months   ZVITAMBO         ZIMBABWE                       High            54    1134
21-24 months   ZVITAMBO         ZIMBABWE                       Low            230    1134
21-24 months   ZVITAMBO         ZIMBABWE                       Medium         850    1134


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
![](/tmp/7f3b37e1-a7e0-4f29-80f1-b06c4d75f769/9377b553-30a3-4cb9-a73e-1912b76fbbfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f3b37e1-a7e0-4f29-80f1-b06c4d75f769/9377b553-30a3-4cb9-a73e-1912b76fbbfe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f3b37e1-a7e0-4f29-80f1-b06c4d75f769/9377b553-30a3-4cb9-a73e-1912b76fbbfe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                2.6276943    2.5322508   2.7231378
0-3 months     COHORTS          GUATEMALA                      Low                  NA                2.6201456    2.5564205   2.6838707
0-3 months     COHORTS          GUATEMALA                      Medium               NA                2.5408758    2.4633402   2.6184115
0-3 months     COHORTS          INDIA                          High                 NA                3.6047219    3.5540410   3.6554029
0-3 months     COHORTS          INDIA                          Low                  NA                3.4510090    3.3957406   3.5062773
0-3 months     COHORTS          INDIA                          Medium               NA                3.4644126    3.4062016   3.5226237
0-3 months     GMS-Nepal        NEPAL                          High                 NA                3.6462082    3.5471922   3.7452242
0-3 months     GMS-Nepal        NEPAL                          Low                  NA                3.5618785    3.4837909   3.6399662
0-3 months     GMS-Nepal        NEPAL                          Medium               NA                3.6156702    3.5237469   3.7075934
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                3.7725873    3.7529415   3.7922330
0-3 months     JiVitA-3         BANGLADESH                     Low                  NA                3.6942610    3.6796528   3.7088692
0-3 months     JiVitA-3         BANGLADESH                     Medium               NA                3.7267218    3.7110069   3.7424366
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                3.6716633    3.6061416   3.7371850
0-3 months     JiVitA-4         BANGLADESH                     Low                  NA                3.6241791    3.5735769   3.6747814
0-3 months     JiVitA-4         BANGLADESH                     Medium               NA                3.6400531    3.5884864   3.6916198
0-3 months     MAL-ED           BANGLADESH                     High                 NA                3.4805705    3.3582296   3.6029113
0-3 months     MAL-ED           BANGLADESH                     Low                  NA                3.3586146    3.2050891   3.5121401
0-3 months     MAL-ED           BANGLADESH                     Medium               NA                3.3440608    3.1940202   3.4941014
0-3 months     MAL-ED           INDIA                          High                 NA                3.4086394    3.2224983   3.5947804
0-3 months     MAL-ED           INDIA                          Low                  NA                3.3112833    3.1315814   3.4909853
0-3 months     MAL-ED           INDIA                          Medium               NA                3.5112095    3.2905796   3.7318395
0-3 months     MAL-ED           NEPAL                          High                 NA                3.6121277    3.3348685   3.8893869
0-3 months     MAL-ED           NEPAL                          Low                  NA                3.5856377    3.3407579   3.8305175
0-3 months     MAL-ED           NEPAL                          Medium               NA                3.7782377    3.5106916   4.0457838
0-3 months     MAL-ED           PERU                           High                 NA                3.0464690    2.9340429   3.1588951
0-3 months     MAL-ED           PERU                           Low                  NA                2.9993438    2.8810469   3.1176407
0-3 months     MAL-ED           PERU                           Medium               NA                3.0972540    2.9472653   3.2472427
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                3.2852595    3.0045221   3.5659969
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  NA                3.2644148    2.9926708   3.5361587
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               NA                3.1067638    2.7830853   3.4304424
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                3.2886665    3.1808758   3.3964572
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.2756615    3.1060412   3.4452817
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.3113893    3.0922426   3.5305360
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                3.1082150    3.0526022   3.1638278
0-3 months     NIH-Crypto       BANGLADESH                     Low                  NA                3.1673390    3.0959023   3.2387756
0-3 months     NIH-Crypto       BANGLADESH                     Medium               NA                3.1151326    3.0528437   3.1774216
0-3 months     PROBIT           BELARUS                        High                 NA                2.8626712    2.7532859   2.9720565
0-3 months     PROBIT           BELARUS                        Low                  NA                2.7791730    2.6480011   2.9103449
0-3 months     PROBIT           BELARUS                        Medium               NA                2.8278830    2.7189029   2.9368632
0-3 months     PROVIDE          BANGLADESH                     High                 NA                3.3174797    3.2510533   3.3839061
0-3 months     PROVIDE          BANGLADESH                     Low                  NA                3.2131012    3.1483592   3.2778432
0-3 months     PROVIDE          BANGLADESH                     Medium               NA                3.2409061    3.1814835   3.3003286
0-3 months     SAS-CompFeed     INDIA                          High                 NA                3.3835557    3.2400108   3.5271006
0-3 months     SAS-CompFeed     INDIA                          Low                  NA                3.2756608    3.2026521   3.3486695
0-3 months     SAS-CompFeed     INDIA                          Medium               NA                3.4295211    3.3657012   3.4933410
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                3.3607997    3.2849103   3.4366892
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  NA                3.3210914    3.2710434   3.3711393
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               NA                3.3441560    3.3200663   3.3682457
3-6 months     COHORTS          GUATEMALA                      High                 NA                1.7610061    1.6919622   1.8300500
3-6 months     COHORTS          GUATEMALA                      Low                  NA                1.7556850    1.7059156   1.8054543
3-6 months     COHORTS          GUATEMALA                      Medium               NA                1.7522394    1.7021120   1.8023668
3-6 months     COHORTS          INDIA                          High                 NA                1.8987895    1.8578691   1.9397100
3-6 months     COHORTS          INDIA                          Low                  NA                1.8374902    1.7862283   1.8887522
3-6 months     COHORTS          INDIA                          Medium               NA                1.8864071    1.8364722   1.9363419
3-6 months     GMS-Nepal        NEPAL                          High                 NA                1.7224555    1.6430307   1.8018802
3-6 months     GMS-Nepal        NEPAL                          Low                  NA                1.7177922    1.6572390   1.7783453
3-6 months     GMS-Nepal        NEPAL                          Medium               NA                1.6858415    1.6179839   1.7536991
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                1.9430533    1.9223305   1.9637760
3-6 months     JiVitA-3         BANGLADESH                     Low                  NA                1.8990739    1.8817240   1.9164238
3-6 months     JiVitA-3         BANGLADESH                     Medium               NA                1.9237102    1.9061652   1.9412553
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                1.9011323    1.8356230   1.9666417
3-6 months     JiVitA-4         BANGLADESH                     Low                  NA                1.9114888    1.8608785   1.9620991
3-6 months     JiVitA-4         BANGLADESH                     Medium               NA                1.8868607    1.8444405   1.9292809
3-6 months     MAL-ED           BANGLADESH                     High                 NA                2.0631694    1.9786411   2.1476977
3-6 months     MAL-ED           BANGLADESH                     Low                  NA                1.8811258    1.7503810   2.0118706
3-6 months     MAL-ED           BANGLADESH                     Medium               NA                1.9267571    1.7929445   2.0605697
3-6 months     MAL-ED           INDIA                          High                 NA                1.8899268    1.7742976   2.0055560
3-6 months     MAL-ED           INDIA                          Low                  NA                1.9451952    1.7852028   2.1051876
3-6 months     MAL-ED           INDIA                          Medium               NA                1.8532608    1.6840280   2.0224937
3-6 months     MAL-ED           NEPAL                          High                 NA                1.9522615    1.7972942   2.1072288
3-6 months     MAL-ED           NEPAL                          Low                  NA                1.8312230    1.6992759   1.9631702
3-6 months     MAL-ED           NEPAL                          Medium               NA                1.8937279    1.7006461   2.0868097
3-6 months     MAL-ED           PERU                           High                 NA                2.0294906    1.9083549   2.1506262
3-6 months     MAL-ED           PERU                           Low                  NA                2.0182658    1.8854939   2.1510378
3-6 months     MAL-ED           PERU                           Medium               NA                2.0917258    1.9721720   2.2112796
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                1.9333237    1.6904907   2.1761567
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  NA                1.8199741    1.6265189   2.0134293
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               NA                2.0052699    1.7717856   2.2387542
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8182968    1.7203909   1.9162026
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9056219    1.7613027   2.0499412
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.6661310    1.4128995   1.9193624
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                2.0021119    1.9465225   2.0577014
3-6 months     NIH-Crypto       BANGLADESH                     Low                  NA                1.9809547    1.9148391   2.0470702
3-6 months     NIH-Crypto       BANGLADESH                     Medium               NA                2.0374840    1.9680136   2.1069544
3-6 months     PROBIT           BELARUS                        High                 NA                2.1237676    2.0763268   2.1712083
3-6 months     PROBIT           BELARUS                        Low                  NA                2.0797353    2.0419969   2.1174737
3-6 months     PROBIT           BELARUS                        Medium               NA                2.0932759    2.0433410   2.1432109
3-6 months     PROVIDE          BANGLADESH                     High                 NA                2.0052697    1.9459091   2.0646303
3-6 months     PROVIDE          BANGLADESH                     Low                  NA                1.9332277    1.8757968   1.9906586
3-6 months     PROVIDE          BANGLADESH                     Medium               NA                1.9579987    1.8994870   2.0165104
3-6 months     SAS-CompFeed     INDIA                          High                 NA                1.9746162    1.9126068   2.0366255
3-6 months     SAS-CompFeed     INDIA                          Low                  NA                1.8913437    1.8303254   1.9523621
3-6 months     SAS-CompFeed     INDIA                          Medium               NA                1.9758522    1.9151164   2.0365881
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8146201    1.7338460   1.8953942
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.7984913    1.7478251   1.8491575
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7694312    1.7051846   1.8336778
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                2.0401002    1.9696468   2.1105537
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  NA                1.9297058    1.8814667   1.9779449
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               NA                1.9796611    1.9566078   2.0027143
6-9 months     COHORTS          GUATEMALA                      High                 NA                1.1001165    1.0338264   1.1664066
6-9 months     COHORTS          GUATEMALA                      Low                  NA                1.0937191    1.0514439   1.1359943
6-9 months     COHORTS          GUATEMALA                      Medium               NA                1.1297423    1.0859736   1.1735110
6-9 months     COHORTS          INDIA                          High                 NA                1.2330853    1.1950659   1.2711048
6-9 months     COHORTS          INDIA                          Low                  NA                1.1942336    1.1498064   1.2386608
6-9 months     COHORTS          INDIA                          Medium               NA                1.1741100    1.1274787   1.2207414
6-9 months     GMS-Nepal        NEPAL                          High                 NA                1.3534669    1.2706872   1.4362466
6-9 months     GMS-Nepal        NEPAL                          Low                  NA                1.3319080    1.2628105   1.4010055
6-9 months     GMS-Nepal        NEPAL                          Medium               NA                1.2713966    1.2148160   1.3279773
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                1.3789506    1.3360680   1.4218331
6-9 months     JiVitA-4         BANGLADESH                     Low                  NA                1.2758041    1.2414620   1.3101462
6-9 months     JiVitA-4         BANGLADESH                     Medium               NA                1.3366821    1.3056897   1.3676745
6-9 months     LCNI-5           MALAWI                         High                 NA                1.4840597    1.4229680   1.5451514
6-9 months     LCNI-5           MALAWI                         Low                  NA                1.4513036    1.3857285   1.5168788
6-9 months     LCNI-5           MALAWI                         Medium               NA                1.4433744    1.3804086   1.5063401
6-9 months     MAL-ED           BANGLADESH                     High                 NA                1.2999632    1.2087218   1.3912046
6-9 months     MAL-ED           BANGLADESH                     Low                  NA                1.1831103    1.0774604   1.2887602
6-9 months     MAL-ED           BANGLADESH                     Medium               NA                1.2158249    1.1282980   1.3033519
6-9 months     MAL-ED           INDIA                          High                 NA                1.2442407    1.1439699   1.3445115
6-9 months     MAL-ED           INDIA                          Low                  NA                1.2113493    1.0726651   1.3500335
6-9 months     MAL-ED           INDIA                          Medium               NA                1.2246073    1.1373260   1.3118887
6-9 months     MAL-ED           NEPAL                          High                 NA                1.2893364    1.1916577   1.3870151
6-9 months     MAL-ED           NEPAL                          Low                  NA                1.3272627    1.1874942   1.4670313
6-9 months     MAL-ED           NEPAL                          Medium               NA                1.3415105    1.2167192   1.4663019
6-9 months     MAL-ED           PERU                           High                 NA                1.3728978    1.2806693   1.4651264
6-9 months     MAL-ED           PERU                           Low                  NA                1.3467805    1.2324401   1.4611210
6-9 months     MAL-ED           PERU                           Medium               NA                1.2121897    1.1016112   1.3227683
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                1.4484164    1.2994158   1.5974170
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  NA                1.2853933    1.1355817   1.4352049
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               NA                1.4914201    1.2562194   1.7266208
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2259136    1.1076822   1.3441451
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1279032    0.9904173   1.2653891
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.2311861    1.0016540   1.4607183
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                1.3844546    1.3352342   1.4336750
6-9 months     NIH-Crypto       BANGLADESH                     Low                  NA                1.2710731    1.2229183   1.3192279
6-9 months     NIH-Crypto       BANGLADESH                     Medium               NA                1.3141180    1.2600834   1.3681525
6-9 months     PROBIT           BELARUS                        High                 NA                1.5507291    1.5163231   1.5851352
6-9 months     PROBIT           BELARUS                        Low                  NA                1.5998086    1.5656655   1.6339518
6-9 months     PROBIT           BELARUS                        Medium               NA                1.5560320    1.5203816   1.5916824
6-9 months     PROVIDE          BANGLADESH                     High                 NA                1.3453136    1.3043509   1.3862764
6-9 months     PROVIDE          BANGLADESH                     Low                  NA                1.2326295    1.1886321   1.2766270
6-9 months     PROVIDE          BANGLADESH                     Medium               NA                1.2676577    1.2230176   1.3122978
6-9 months     SAS-CompFeed     INDIA                          High                 NA                1.2496322    1.1960789   1.3031854
6-9 months     SAS-CompFeed     INDIA                          Low                  NA                1.1909747    1.1532736   1.2286758
6-9 months     SAS-CompFeed     INDIA                          Medium               NA                1.2288807    1.1735631   1.2841982
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                1.1092133    1.0321212   1.1863053
6-9 months     SAS-FoodSuppl    INDIA                          Low                  NA                1.1666071    1.1011536   1.2320607
6-9 months     SAS-FoodSuppl    INDIA                          Medium               NA                1.1417562    1.0736922   1.2098203
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.3320429    1.2459710   1.4181148
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.2935547    1.2430085   1.3441009
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.3805313    1.3135698   1.4474929
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                1.3014182    1.2224364   1.3804000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  NA                1.3230224    1.2769975   1.3690473
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               NA                1.3569557    1.3348270   1.3790844
9-12 months    COHORTS          GUATEMALA                      High                 NA                0.9913412    0.9397199   1.0429625
9-12 months    COHORTS          GUATEMALA                      Low                  NA                0.9501465    0.9112544   0.9890387
9-12 months    COHORTS          GUATEMALA                      Medium               NA                0.9221619    0.8805331   0.9637907
9-12 months    COHORTS          INDIA                          High                 NA                1.0658171    1.0260790   1.1055552
9-12 months    COHORTS          INDIA                          Low                  NA                0.9029339    0.8574908   0.9483770
9-12 months    COHORTS          INDIA                          Medium               NA                1.0004575    0.9553467   1.0455684
9-12 months    GMS-Nepal        NEPAL                          High                 NA                1.0054075    0.9294806   1.0813343
9-12 months    GMS-Nepal        NEPAL                          Low                  NA                0.9934913    0.9410016   1.0459811
9-12 months    GMS-Nepal        NEPAL                          Medium               NA                0.9994896    0.9558469   1.0431324
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                1.0751897    1.0315092   1.1188702
9-12 months    JiVitA-4         BANGLADESH                     Low                  NA                1.0659562    1.0348293   1.0970832
9-12 months    JiVitA-4         BANGLADESH                     Medium               NA                1.0728850    1.0492698   1.0965001
9-12 months    LCNI-5           MALAWI                         High                 NA                1.1116510    1.0300248   1.1932771
9-12 months    LCNI-5           MALAWI                         Low                  NA                1.1033119    1.0180812   1.1885427
9-12 months    LCNI-5           MALAWI                         Medium               NA                1.0854622    1.0092837   1.1616407
9-12 months    MAL-ED           BANGLADESH                     High                 NA                0.9932027    0.9054722   1.0809331
9-12 months    MAL-ED           BANGLADESH                     Low                  NA                0.9603188    0.8661451   1.0544926
9-12 months    MAL-ED           BANGLADESH                     Medium               NA                0.9874760    0.8931336   1.0818184
9-12 months    MAL-ED           INDIA                          High                 NA                1.0369363    0.9437511   1.1301215
9-12 months    MAL-ED           INDIA                          Low                  NA                0.9799179    0.8934134   1.0664225
9-12 months    MAL-ED           INDIA                          Medium               NA                0.9502999    0.8529016   1.0476983
9-12 months    MAL-ED           NEPAL                          High                 NA                1.1569030    1.0730719   1.2407342
9-12 months    MAL-ED           NEPAL                          Low                  NA                1.1320131    1.0189220   1.2451043
9-12 months    MAL-ED           NEPAL                          Medium               NA                1.0506927    0.9395427   1.1618426
9-12 months    MAL-ED           PERU                           High                 NA                1.1178818    1.0365321   1.1992315
9-12 months    MAL-ED           PERU                           Low                  NA                1.0583484    0.9438666   1.1728302
9-12 months    MAL-ED           PERU                           Medium               NA                1.0770727    0.9756510   1.1784945
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.9900869    0.8035863   1.1765875
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.9525357    0.7578363   1.1472351
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.8617467    0.6940716   1.0294217
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7930554    0.6658508   0.9202600
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7288771    0.6056932   0.8520609
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9072593    0.6124824   1.2020362
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                1.1201993    1.0788767   1.1615220
9-12 months    NIH-Crypto       BANGLADESH                     Low                  NA                1.1077113    1.0621736   1.1532490
9-12 months    NIH-Crypto       BANGLADESH                     Medium               NA                1.1437460    1.0933856   1.1941065
9-12 months    PROBIT           BELARUS                        High                 NA                1.3654660    1.3298085   1.4011235
9-12 months    PROBIT           BELARUS                        Low                  NA                1.3940555    1.3320357   1.4560753
9-12 months    PROBIT           BELARUS                        Medium               NA                1.3552775    1.3003036   1.4102514
9-12 months    PROVIDE          BANGLADESH                     High                 NA                1.0880427    1.0396954   1.1363900
9-12 months    PROVIDE          BANGLADESH                     Low                  NA                1.0292780    0.9898285   1.0687274
9-12 months    PROVIDE          BANGLADESH                     Medium               NA                1.0310041    0.9797305   1.0822777
9-12 months    SAS-CompFeed     INDIA                          High                 NA                1.0353108    0.9493891   1.1212325
9-12 months    SAS-CompFeed     INDIA                          Low                  NA                0.9516101    0.8926115   1.0106086
9-12 months    SAS-CompFeed     INDIA                          Medium               NA                1.0374255    1.0093211   1.0655299
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                0.9436601    0.6041886   1.2831316
9-12 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.8761154    0.6202168   1.1320140
9-12 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.6607911    0.5355269   0.7860552
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.1406694    1.0652670   1.2160718
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.0737933    1.0268433   1.1207432
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.0706198    1.0053569   1.1358828
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                1.1575437    1.0844429   1.2306444
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  NA                1.0513257    1.0089473   1.0937041
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               NA                1.0793425    1.0585582   1.1001268
12-15 months   COHORTS          GUATEMALA                      High                 NA                0.7626548    0.6999300   0.8253796
12-15 months   COHORTS          GUATEMALA                      Low                  NA                0.7886246    0.7509971   0.8262521
12-15 months   COHORTS          GUATEMALA                      Medium               NA                0.7968838    0.7479061   0.8458615
12-15 months   GMS-Nepal        NEPAL                          High                 NA                0.8779817    0.8274784   0.9284851
12-15 months   GMS-Nepal        NEPAL                          Low                  NA                0.8716040    0.8214440   0.9217640
12-15 months   GMS-Nepal        NEPAL                          Medium               NA                0.8933641    0.8488619   0.9378662
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                0.9640360    0.9301077   0.9979643
12-15 months   JiVitA-4         BANGLADESH                     Low                  NA                0.9218116    0.8942476   0.9493755
12-15 months   JiVitA-4         BANGLADESH                     Medium               NA                0.9392612    0.9160168   0.9625055
12-15 months   LCNI-5           MALAWI                         High                 NA                0.9638411    0.8053654   1.1223167
12-15 months   LCNI-5           MALAWI                         Low                  NA                1.0582701    0.9410832   1.1754570
12-15 months   LCNI-5           MALAWI                         Medium               NA                0.8424165    0.6310057   1.0538274
12-15 months   MAL-ED           BANGLADESH                     High                 NA                0.9150430    0.8410307   0.9890553
12-15 months   MAL-ED           BANGLADESH                     Low                  NA                0.9480516    0.8474290   1.0486742
12-15 months   MAL-ED           BANGLADESH                     Medium               NA                0.8702960    0.7878481   0.9527440
12-15 months   MAL-ED           INDIA                          High                 NA                0.9196286    0.8190701   1.0201872
12-15 months   MAL-ED           INDIA                          Low                  NA                0.9151281    0.8270601   1.0031960
12-15 months   MAL-ED           INDIA                          Medium               NA                0.8923759    0.8107712   0.9739806
12-15 months   MAL-ED           NEPAL                          High                 NA                1.0575357    0.9610799   1.1539915
12-15 months   MAL-ED           NEPAL                          Low                  NA                0.8085753    0.6918396   0.9253109
12-15 months   MAL-ED           NEPAL                          Medium               NA                0.9318677    0.8261800   1.0375554
12-15 months   MAL-ED           PERU                           High                 NA                0.8756958    0.8006483   0.9507432
12-15 months   MAL-ED           PERU                           Low                  NA                0.8803612    0.7881907   0.9725317
12-15 months   MAL-ED           PERU                           Medium               NA                0.8788754    0.7745975   0.9831533
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.9703201    0.8396160   1.1010241
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.8590175    0.7337866   0.9842485
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               NA                1.0109244    0.8309143   1.1909346
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.8442220    0.7576868   0.9307572
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9190000    0.7823788   1.0556212
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8405868    0.6270863   1.0540873
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                1.0098282    0.9710704   1.0485859
12-15 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.9519104    0.9089663   0.9948544
12-15 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.9403629    0.8942788   0.9864469
12-15 months   PROBIT           BELARUS                        High                 NA                1.3177792    0.9828805   1.6526780
12-15 months   PROBIT           BELARUS                        Low                  NA                1.1420725    0.7551945   1.5289504
12-15 months   PROBIT           BELARUS                        Medium               NA                1.1870596    0.7370882   1.6370309
12-15 months   PROVIDE          BANGLADESH                     High                 NA                0.9969364    0.9494507   1.0444220
12-15 months   PROVIDE          BANGLADESH                     Low                  NA                0.9278145    0.8842452   0.9713837
12-15 months   PROVIDE          BANGLADESH                     Medium               NA                0.9504872    0.9073726   0.9936018
12-15 months   SAS-CompFeed     INDIA                          High                 NA                0.9266356    0.8664995   0.9867717
12-15 months   SAS-CompFeed     INDIA                          Low                  NA                0.7701831    0.7054365   0.8349297
12-15 months   SAS-CompFeed     INDIA                          Medium               NA                0.8333857    0.7725971   0.8941744
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                1.0711273    0.8891111   1.2531434
12-15 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.9657696    0.7804080   1.1511313
12-15 months   SAS-FoodSuppl    INDIA                          Medium               NA                1.0508375    0.9520741   1.1496009
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9683902    0.8886642   1.0481162
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9067502    0.8542889   0.9592115
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9547662    0.8874835   1.0220489
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.9292165    0.8020058   1.0564273
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.9236629    0.8573615   0.9899642
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.9219934    0.8912104   0.9527765
15-18 months   COHORTS          GUATEMALA                      High                 NA                0.7716185    0.6909849   0.8522521
15-18 months   COHORTS          GUATEMALA                      Low                  NA                0.6965180    0.6514708   0.7415652
15-18 months   COHORTS          GUATEMALA                      Medium               NA                0.7916192    0.7457919   0.8374466
15-18 months   GMS-Nepal        NEPAL                          High                 NA                0.7725046    0.7198204   0.8251888
15-18 months   GMS-Nepal        NEPAL                          Low                  NA                0.7319688    0.6713980   0.7925395
15-18 months   GMS-Nepal        NEPAL                          Medium               NA                0.7703563    0.7133400   0.8273725
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                0.8547958    0.8193894   0.8902022
15-18 months   JiVitA-4         BANGLADESH                     Low                  NA                0.8637830    0.8354579   0.8921080
15-18 months   JiVitA-4         BANGLADESH                     Medium               NA                0.8634455    0.8379975   0.8888934
15-18 months   LCNI-5           MALAWI                         High                 NA                0.7405876    0.6265558   0.8546195
15-18 months   LCNI-5           MALAWI                         Low                  NA                0.8009266    0.6925311   0.9093220
15-18 months   LCNI-5           MALAWI                         Medium               NA                0.9187572    0.7792805   1.0582340
15-18 months   MAL-ED           BANGLADESH                     High                 NA                0.8752216    0.7942279   0.9562152
15-18 months   MAL-ED           BANGLADESH                     Low                  NA                0.7841109    0.6878177   0.8804042
15-18 months   MAL-ED           BANGLADESH                     Medium               NA                0.7761372    0.6946971   0.8575772
15-18 months   MAL-ED           INDIA                          High                 NA                0.7939805    0.7035499   0.8844110
15-18 months   MAL-ED           INDIA                          Low                  NA                0.8338620    0.7502834   0.9174406
15-18 months   MAL-ED           INDIA                          Medium               NA                0.8353227    0.7459643   0.9246812
15-18 months   MAL-ED           NEPAL                          High                 NA                0.8445056    0.7269455   0.9620656
15-18 months   MAL-ED           NEPAL                          Low                  NA                0.8187013    0.7040302   0.9333724
15-18 months   MAL-ED           NEPAL                          Medium               NA                0.7992601    0.6826250   0.9158951
15-18 months   MAL-ED           PERU                           High                 NA                0.8209677    0.7444096   0.8975257
15-18 months   MAL-ED           PERU                           Low                  NA                0.8243723    0.7513053   0.8974393
15-18 months   MAL-ED           PERU                           Medium               NA                0.9174636    0.8263610   1.0085662
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.9378574    0.7921660   1.0835487
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.9116549    0.7769586   1.0463512
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.8090034    0.6181363   0.9998706
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7068756    0.6215505   0.7922006
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6148438    0.4801523   0.7495352
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6581331    0.4456114   0.8706548
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                0.9441941    0.9077647   0.9806236
15-18 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.8696841    0.8277280   0.9116402
15-18 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.9305001    0.8897220   0.9712782
15-18 months   PROBIT           BELARUS                        High                 NA                1.1259805    0.1239520   2.1280090
15-18 months   PROBIT           BELARUS                        Low                  NA                1.0425828    0.2254610   1.8597046
15-18 months   PROBIT           BELARUS                        Medium               NA                0.9701299    0.3792833   1.5609764
15-18 months   PROVIDE          BANGLADESH                     High                 NA                0.8901804    0.8515513   0.9288095
15-18 months   PROVIDE          BANGLADESH                     Low                  NA                0.8466295    0.8041196   0.8891394
15-18 months   PROVIDE          BANGLADESH                     Medium               NA                0.8269552    0.7831778   0.8707326
15-18 months   SAS-CompFeed     INDIA                          High                 NA                0.9144271    0.8638831   0.9649710
15-18 months   SAS-CompFeed     INDIA                          Low                  NA                0.8855410    0.8639123   0.9071696
15-18 months   SAS-CompFeed     INDIA                          Medium               NA                0.9259579    0.8595539   0.9923620
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                0.7353493    0.6740556   0.7966430
15-18 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.8337781    0.7657775   0.9017787
15-18 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.8001601    0.7461994   0.8541207
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9161242    0.8392024   0.9930461
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9553484    0.8943403   1.0163565
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9167355    0.8350202   0.9984508
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.7843764    0.6615968   0.9071560
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.7805663    0.7053961   0.8557365
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.8045019    0.7699811   0.8390226
18-21 months   COHORTS          GUATEMALA                      High                 NA                0.7271466    0.6619470   0.7923462
18-21 months   COHORTS          GUATEMALA                      Low                  NA                0.7490908    0.7048155   0.7933662
18-21 months   COHORTS          GUATEMALA                      Medium               NA                0.7500956    0.7018308   0.7983604
18-21 months   GMS-Nepal        NEPAL                          High                 NA                0.8827339    0.8008091   0.9646586
18-21 months   GMS-Nepal        NEPAL                          Low                  NA                0.9095766    0.8639752   0.9551779
18-21 months   GMS-Nepal        NEPAL                          Medium               NA                0.9121233    0.8530072   0.9712393
18-21 months   LCNI-5           MALAWI                         High                 NA                0.8301319    0.7198539   0.9404099
18-21 months   LCNI-5           MALAWI                         Low                  NA                0.8390034    0.7816028   0.8964039
18-21 months   LCNI-5           MALAWI                         Medium               NA                0.7917240    0.7203781   0.8630699
18-21 months   MAL-ED           BANGLADESH                     High                 NA                0.8256832    0.7527977   0.8985686
18-21 months   MAL-ED           BANGLADESH                     Low                  NA                0.7932028    0.7045062   0.8818994
18-21 months   MAL-ED           BANGLADESH                     Medium               NA                0.8092558    0.7258093   0.8927024
18-21 months   MAL-ED           INDIA                          High                 NA                0.9080866    0.8310802   0.9850929
18-21 months   MAL-ED           INDIA                          Low                  NA                0.8757709    0.7902924   0.9612494
18-21 months   MAL-ED           INDIA                          Medium               NA                0.8869829    0.7926326   0.9813331
18-21 months   MAL-ED           NEPAL                          High                 NA                0.8097182    0.7075648   0.9118716
18-21 months   MAL-ED           NEPAL                          Low                  NA                0.7746135    0.6806578   0.8685692
18-21 months   MAL-ED           NEPAL                          Medium               NA                0.8455594    0.7445288   0.9465900
18-21 months   MAL-ED           PERU                           High                 NA                0.8430095    0.7735360   0.9124831
18-21 months   MAL-ED           PERU                           Low                  NA                0.8945199    0.7939855   0.9950542
18-21 months   MAL-ED           PERU                           Medium               NA                0.7992289    0.7100583   0.8883994
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.7758994    0.6658426   0.8859561
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.7015101    0.5684282   0.8345920
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.7240224    0.5437657   0.9042791
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7455523    0.6535469   0.8375576
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7283134    0.5791644   0.8774625
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8453417    0.7037931   0.9868903
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                0.8154593    0.7806726   0.8502461
18-21 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.7625740    0.7194639   0.8056841
18-21 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.8057196    0.7608335   0.8506058
18-21 months   PROBIT           BELARUS                        High                 NA                1.0255531    0.0944276   1.9566786
18-21 months   PROBIT           BELARUS                        Low                  NA                0.8573370    0.6127022   1.1019718
18-21 months   PROBIT           BELARUS                        Medium               NA                0.8710782   -0.4806247   2.2227811
18-21 months   PROVIDE          BANGLADESH                     High                 NA                0.8921961    0.8512571   0.9331351
18-21 months   PROVIDE          BANGLADESH                     Low                  NA                0.8047134    0.7660688   0.8433580
18-21 months   PROVIDE          BANGLADESH                     Medium               NA                0.8211455    0.7769590   0.8653319
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.8074958    0.6712938   0.9436978
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.6732913    0.5977017   0.7488809
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.6811226    0.6409255   0.7213197
21-24 months   COHORTS          GUATEMALA                      High                 NA                0.6631005    0.6044244   0.7217767
21-24 months   COHORTS          GUATEMALA                      Low                  NA                0.6834707    0.6475964   0.7193451
21-24 months   COHORTS          GUATEMALA                      Medium               NA                0.6945017    0.6563052   0.7326983
21-24 months   GMS-Nepal        NEPAL                          High                 NA                0.8856083    0.7657265   1.0054900
21-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.7877002    0.7305026   0.8448979
21-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.7470545    0.6740918   0.8200173
21-24 months   LCNI-5           MALAWI                         High                 NA                0.6522886    0.5802283   0.7243489
21-24 months   LCNI-5           MALAWI                         Low                  NA                0.7923047    0.7149445   0.8696648
21-24 months   LCNI-5           MALAWI                         Medium               NA                0.7948381    0.7107941   0.8788820
21-24 months   MAL-ED           BANGLADESH                     High                 NA                0.7756412    0.6962769   0.8550055
21-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.7820176    0.6930797   0.8709555
21-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.7741632    0.6983136   0.8500127
21-24 months   MAL-ED           INDIA                          High                 NA                0.8332952    0.7527517   0.9138386
21-24 months   MAL-ED           INDIA                          Low                  NA                0.8164174    0.7495889   0.8832460
21-24 months   MAL-ED           INDIA                          Medium               NA                0.7858091    0.7200141   0.8516041
21-24 months   MAL-ED           NEPAL                          High                 NA                0.7981805    0.7062552   0.8901058
21-24 months   MAL-ED           NEPAL                          Low                  NA                0.7473649    0.6098572   0.8848726
21-24 months   MAL-ED           NEPAL                          Medium               NA                0.7842792    0.6947539   0.8738044
21-24 months   MAL-ED           PERU                           High                 NA                0.7695548    0.6962019   0.8429077
21-24 months   MAL-ED           PERU                           Low                  NA                0.7990811    0.7015496   0.8966126
21-24 months   MAL-ED           PERU                           Medium               NA                0.7590157    0.6556893   0.8623422
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.8771872    0.7531610   1.0012134
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.8126153    0.6921965   0.9330341
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.8373127    0.6913234   0.9833019
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7946518    0.7136437   0.8756599
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6450014    0.4817915   0.8082113
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6343848    0.4543498   0.8144198
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.8064235    0.7684217   0.8444253
21-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.7432223    0.6935554   0.7928892
21-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.8399266    0.7997442   0.8801091
21-24 months   PROBIT           BELARUS                        High                 NA                1.0355864   -0.1367290   2.2079018
21-24 months   PROBIT           BELARUS                        Low                  NA                0.9350031    0.3449140   1.5250922
21-24 months   PROBIT           BELARUS                        Medium               NA                0.8658751    0.1455055   1.5862448
21-24 months   PROVIDE          BANGLADESH                     High                 NA                0.8000959    0.7570453   0.8431465
21-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.7393964    0.6961002   0.7826926
21-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.7517955    0.7068187   0.7967722
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.8200052    0.6518365   0.9881739
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.6669246    0.5961673   0.7376820
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.6919215    0.6449874   0.7388555


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5921045   2.5479609   2.6362480
0-3 months     COHORTS          INDIA                          NA                   NA                3.5146204   3.4829437   3.5462971
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5991019   3.5479403   3.6502635
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7231265   3.7127514   3.7335015
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6404853   3.6092147   3.6717558
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3979187   3.3154647   3.4803727
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3956646   3.2820866   3.5092426
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6599922   3.5033844   3.8166001
0-3 months     MAL-ED           PERU                           NA                   NA                3.0463129   2.9731827   3.1194431
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.2294119   3.0612660   3.3975579
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2871694   3.2020744   3.3722644
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8145679   2.7016326   2.9275032
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515519   3.2970118   3.4060920
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3411857   3.3203084   3.3620631
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7553875   1.7238344   1.7869406
3-6 months     COHORTS          INDIA                          NA                   NA                1.8755767   1.8484594   1.9026940
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7093219   1.6699158   1.7487279
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9190191   1.9083018   1.9297364
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8994374   1.8693889   1.9294859
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9676032   1.8996131   2.0355934
3-6 months     MAL-ED           INDIA                          NA                   NA                1.9018403   1.8136737   1.9900069
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.8994983   1.8048377   1.9941589
3-6 months     MAL-ED           PERU                           NA                   NA                2.0419881   1.9674098   2.1165663
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9086145   1.7783388   2.0388902
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8292696   1.7515547   1.9069846
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0929731   2.0518491   2.1340970
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933681   1.7575702   1.8291661
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9748321   1.9548517   1.9948124
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1083045   1.0806019   1.1360071
6-9 months     COHORTS          INDIA                          NA                   NA                1.2036176   1.1789746   1.2282607
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3177402   1.2769900   1.3584905
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3241465   1.3032672   1.3450259
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4589045   1.4222542   1.4955548
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2394642   1.1844395   1.2944889
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2258711   1.1584944   1.2932477
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3154961   1.2471080   1.3838843
6-9 months     MAL-ED           PERU                           NA                   NA                1.3246242   1.2633828   1.3858657
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3957495   1.2953587   1.4961403
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1993506   1.1124123   1.2862888
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5724306   1.5420050   1.6028561
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2179942   1.1975880   1.2384003
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3251662   1.2885567   1.3617757
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3470386   1.3276819   1.3663953
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9472892   0.9221805   0.9723978
9-12 months    COHORTS          INDIA                          NA                   NA                0.9946741   0.9693876   1.0199607
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9982656   0.9657105   1.0308207
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0708831   1.0526342   1.0891321
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0992151   1.0523671   1.1460631
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9821541   0.9287459   1.0355622
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9895337   0.9360398   1.0430277
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.1190296   1.0603974   1.1776618
9-12 months    MAL-ED           PERU                           NA                   NA                1.0908927   1.0348852   1.1469003
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.9433895   0.8335257   1.0532533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7855464   0.6934679   0.8776249
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3722042   1.3223678   1.4220405
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0004042   0.9688633   1.0319452
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0857505   1.0516744   1.1198266
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0793423   1.0612498   1.0974348
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7866213   0.7594562   0.8137864
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8802690   0.8513071   0.9092309
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9385682   0.9225905   0.9545460
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9085823   0.8591222   0.9580425
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9099711   0.8572535   0.9626887
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9504990   0.8857491   1.0152489
12-15 months   MAL-ED           PERU                           NA                   NA                0.8777205   0.8267476   0.9286935
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9375260   0.8551185   1.0199334
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8645417   0.7949705   0.9341129
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1934520   0.8670576   1.5198464
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8313011   0.7943319   0.8682702
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9227324   0.8953389   0.9501259
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7442093   0.7138306   0.7745880
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7539578   0.7191986   0.7887171
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8615477   0.8444782   0.8786171
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8123975   0.7622036   0.8625914
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8214042   0.7706117   0.8721967
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8236934   0.7553557   0.8920310
15-18 months   MAL-ED           PERU                           NA                   NA                0.8458575   0.7977957   0.8939193
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8968158   0.8079212   0.9857105
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6777871   0.6091235   0.7464506
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0313697   0.5940455   1.4686940
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9061147   0.8810452   0.9311841
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7985885   0.7680287   0.8291482
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7455058   0.7162736   0.7747381
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9037294   0.8697046   0.9377541
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8198129   0.7731117   0.8665140
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8102152   0.7630350   0.8573954
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8894887   0.8398301   0.9391473
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8095409   0.7508722   0.8682097
18-21 months   MAL-ED           PERU                           NA                   NA                0.8459313   0.7971977   0.8946650
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7351157   0.6560928   0.8141386
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7501039   0.6775670   0.8226408
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8888399   0.2777933   1.4998865
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6856019   0.6511523   0.7200516
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6838523   0.6599124   0.7077922
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7507726   0.7049982   0.7965470
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7769994   0.7302546   0.8237443
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8127162   0.7713440   0.8540884
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7789199   0.7171245   0.8407153
21-24 months   MAL-ED           PERU                           NA                   NA                0.7749933   0.7238446   0.8261420
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8429833   0.7683723   0.9175942
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7399316   0.6691267   0.8107365
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9197902   0.4526303   1.3869502
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6929508   0.6540821   0.7318195


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low                  High              -0.0075487   -0.1223108    0.1072135
0-3 months     COHORTS          GUATEMALA                      Medium               High              -0.0868185   -0.2097869    0.0361500
0-3 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low                  High              -0.1537129   -0.2287006   -0.0787253
0-3 months     COHORTS          INDIA                          Medium               High              -0.1403093   -0.2174914   -0.0631272
0-3 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low                  High              -0.0843296   -0.2104321    0.0417729
0-3 months     GMS-Nepal        NEPAL                          Medium               High              -0.0305380   -0.1656456    0.1045695
0-3 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0783263   -0.1011066   -0.0555460
0-3 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0458655   -0.0704109   -0.0213201
0-3 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0474841   -0.1316894    0.0367212
0-3 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0316102   -0.1158472    0.0526268
0-3 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low                  High              -0.1219559   -0.3182652    0.0743535
0-3 months     MAL-ED           BANGLADESH                     Medium               High              -0.1365097   -0.3301058    0.0570865
0-3 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low                  High              -0.0973560   -0.3560862    0.1613741
0-3 months     MAL-ED           INDIA                          Medium               High               0.1025702   -0.1860923    0.3912327
0-3 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low                  High              -0.0264900   -0.3964073    0.3434273
0-3 months     MAL-ED           NEPAL                          Medium               High               0.1661100   -0.2191868    0.5514068
0-3 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low                  High              -0.0471252   -0.2103238    0.1160734
0-3 months     MAL-ED           PERU                           Medium               High               0.0507850   -0.1366616    0.2382316
0-3 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0208447   -0.4115597    0.3698704
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.1784956   -0.6069594    0.2499682
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0130050   -0.2139773    0.1879673
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0227228   -0.2214986    0.2669443
0-3 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low                  High               0.0591240   -0.0314076    0.1496556
0-3 months     NIH-Crypto       BANGLADESH                     Medium               High               0.0069177   -0.0765850    0.0904203
0-3 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Low                  High              -0.0834982   -0.1624045   -0.0045919
0-3 months     PROBIT           BELARUS                        Medium               High              -0.0347882   -0.0837802    0.0142039
0-3 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low                  High              -0.1043785   -0.1971362   -0.0116208
0-3 months     PROVIDE          BANGLADESH                     Medium               High              -0.0765737   -0.1657000    0.0125527
0-3 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low                  High              -0.1078949   -0.2668021    0.0510124
0-3 months     SAS-CompFeed     INDIA                          Medium               High               0.0459654   -0.1033217    0.1952526
0-3 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0397084   -0.1306150    0.0511982
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0166438   -0.0962649    0.0629773
3-6 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low                  High              -0.0053211   -0.0904331    0.0797908
3-6 months     COHORTS          GUATEMALA                      Medium               High              -0.0087667   -0.0940885    0.0765551
3-6 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low                  High              -0.0612993   -0.1268910    0.0042924
3-6 months     COHORTS          INDIA                          Medium               High              -0.0123825   -0.0769423    0.0521774
3-6 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low                  High              -0.0046633   -0.1045381    0.0952115
3-6 months     GMS-Nepal        NEPAL                          Medium               High              -0.0366140   -0.1410790    0.0678511
3-6 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0439794   -0.0709183   -0.0170405
3-6 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0193430   -0.0464532    0.0077672
3-6 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low                  High               0.0103565   -0.0724038    0.0931167
3-6 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0142717   -0.0910541    0.0625108
3-6 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low                  High              -0.1820436   -0.3377332   -0.0263541
3-6 months     MAL-ED           BANGLADESH                     Medium               High              -0.1364123   -0.2946869    0.0218623
3-6 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low                  High               0.0552684   -0.1421339    0.2526707
3-6 months     MAL-ED           INDIA                          Medium               High              -0.0366659   -0.2416290    0.1682971
3-6 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low                  High              -0.1210385   -0.3245696    0.0824926
3-6 months     MAL-ED           NEPAL                          Medium               High              -0.0585336   -0.3061128    0.1890455
3-6 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low                  High              -0.0112247   -0.1909530    0.1685036
3-6 months     MAL-ED           PERU                           Medium               High               0.0622352   -0.1079616    0.2324321
3-6 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.1133496   -0.4238215    0.1971223
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0719462   -0.2649258    0.4088183
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0873252   -0.0870698    0.2617201
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1521658   -0.4236649    0.1193333
3-6 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0211573   -0.1075370    0.0652224
3-6 months     NIH-Crypto       BANGLADESH                     Medium               High               0.0353721   -0.0536016    0.1243458
3-6 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Low                  High              -0.0440323   -0.0812613   -0.0068032
3-6 months     PROBIT           BELARUS                        Medium               High              -0.0304916   -0.0633238    0.0023405
3-6 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low                  High              -0.0720420   -0.1546373    0.0105533
3-6 months     PROVIDE          BANGLADESH                     Medium               High              -0.0472710   -0.1306215    0.0360795
3-6 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low                  High              -0.0832724   -0.1737714    0.0072266
3-6 months     SAS-CompFeed     INDIA                          Medium               High               0.0012361   -0.0986236    0.1010958
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0161289   -0.1114783    0.0792206
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0451889   -0.1483978    0.0580200
3-6 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.1103944   -0.1957800   -0.0250088
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0604392   -0.1345684    0.0136901
6-9 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low                  High              -0.0063974   -0.0850203    0.0722256
6-9 months     COHORTS          GUATEMALA                      Medium               High               0.0296258   -0.0498102    0.1090618
6-9 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low                  High              -0.0388517   -0.0973261    0.0196227
6-9 months     COHORTS          INDIA                          Medium               High              -0.0589753   -0.1191414    0.0011908
6-9 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low                  High              -0.0215590   -0.1293873    0.0862694
6-9 months     GMS-Nepal        NEPAL                          Medium               High              -0.0820703   -0.1823392    0.0181986
6-9 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low                  High              -0.1031465   -0.1574612   -0.0488317
6-9 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0422685   -0.0954111    0.0108741
6-9 months     LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Low                  High              -0.0327560   -0.1223791    0.0568670
6-9 months     LCNI-5           MALAWI                         Medium               High              -0.0406853   -0.1284172    0.0470466
6-9 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low                  High              -0.1168529   -0.2564484    0.0227426
6-9 months     MAL-ED           BANGLADESH                     Medium               High              -0.0841383   -0.2105739    0.0422973
6-9 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low                  High              -0.0328914   -0.2040274    0.1382447
6-9 months     MAL-ED           INDIA                          Medium               High              -0.0196334   -0.1525705    0.1133038
6-9 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low                  High               0.0379264   -0.1325916    0.2084443
6-9 months     MAL-ED           NEPAL                          Medium               High               0.0521741   -0.1062999    0.2106482
6-9 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low                  High              -0.0261173   -0.1730181    0.1207835
6-9 months     MAL-ED           PERU                           Medium               High              -0.1607081   -0.3047002   -0.0167160
6-9 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.1630231   -0.3743160    0.0482698
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0430037   -0.2354214    0.3214288
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0980104   -0.2793417    0.0833209
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0052725   -0.2529206    0.2634656
6-9 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.1133815   -0.1822403   -0.0445227
6-9 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0703367   -0.1434282    0.0027549
6-9 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Low                  High               0.0490795    0.0167271    0.0814319
6-9 months     PROBIT           BELARUS                        Medium               High               0.0053029   -0.0222027    0.0328085
6-9 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low                  High              -0.1126841   -0.1727984   -0.0525699
6-9 months     PROVIDE          BANGLADESH                     Medium               High              -0.0776559   -0.1382422   -0.0170697
6-9 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low                  High              -0.0586574   -0.1259471    0.0086322
6-9 months     SAS-CompFeed     INDIA                          Medium               High              -0.0207515   -0.1180715    0.0765685
6-9 months     SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          Low                  High               0.0573939   -0.0437365    0.1585242
6-9 months     SAS-FoodSuppl    INDIA                          Medium               High               0.0325430   -0.0702962    0.1353822
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0384883   -0.1383045    0.0613280
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0484884   -0.0605631    0.1575398
6-9 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  High               0.0216042   -0.0698092    0.1130176
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               High               0.0555375   -0.0264857    0.1375607
9-12 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low                  High              -0.0411947   -0.1058272    0.0234378
9-12 months    COHORTS          GUATEMALA                      Medium               High              -0.0691793   -0.1354946   -0.0028640
9-12 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low                  High              -0.1628832   -0.2232504   -0.1025161
9-12 months    COHORTS          INDIA                          Medium               High              -0.0653596   -0.1254770   -0.0052422
9-12 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low                  High              -0.0119161   -0.1042203    0.0803880
9-12 months    GMS-Nepal        NEPAL                          Medium               High              -0.0059178   -0.0934939    0.0816583
9-12 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low                  High              -0.0092335   -0.0614717    0.0430048
9-12 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0023047   -0.0520585    0.0474490
9-12 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Low                  High              -0.0083390   -0.1263522    0.1096742
9-12 months    LCNI-5           MALAWI                         Medium               High              -0.0261888   -0.1378400    0.0854625
9-12 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low                  High              -0.0328839   -0.1615902    0.0958225
9-12 months    MAL-ED           BANGLADESH                     Medium               High              -0.0057267   -0.1345565    0.1231031
9-12 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low                  High              -0.0570184   -0.1841660    0.0701293
9-12 months    MAL-ED           INDIA                          Medium               High              -0.0866364   -0.2214322    0.0481594
9-12 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low                  High              -0.0248899   -0.1656637    0.1158839
9-12 months    MAL-ED           NEPAL                          Medium               High              -0.1062104   -0.2454295    0.0330087
9-12 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low                  High              -0.0595334   -0.1999751    0.0809082
9-12 months    MAL-ED           PERU                           Medium               High              -0.0408091   -0.1708250    0.0892068
9-12 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.0375512   -0.3071626    0.2320603
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.1283403   -0.3791337    0.1224532
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0641783   -0.2412525    0.1128959
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1142040   -0.2068481    0.4352560
9-12 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0124880   -0.0739799    0.0490038
9-12 months    NIH-Crypto       BANGLADESH                     Medium               High               0.0235467   -0.0415972    0.0886907
9-12 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Low                  High               0.0285895   -0.0231241    0.0803030
9-12 months    PROBIT           BELARUS                        Medium               High              -0.0101885   -0.0582123    0.0378353
9-12 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low                  High              -0.0587647   -0.1211644    0.0036350
9-12 months    PROVIDE          BANGLADESH                     Medium               High              -0.0570386   -0.1275115    0.0134344
9-12 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low                  High              -0.0837008   -0.1810080    0.0136064
9-12 months    SAS-CompFeed     INDIA                          Medium               High               0.0021147   -0.0939641    0.0981934
9-12 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.0675447   -0.4926623    0.3575729
9-12 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2828690   -0.6447143    0.0789763
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0668761   -0.1557008    0.0219486
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0700496   -0.1697731    0.0296740
9-12 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1062179   -0.1907144   -0.0217215
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0782012   -0.1541993   -0.0022031
12-15 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low                  High               0.0259698   -0.0471754    0.0991151
12-15 months   COHORTS          GUATEMALA                      Medium               High               0.0342290   -0.0453525    0.1138106
12-15 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low                  High              -0.0063777   -0.0775579    0.0648024
12-15 months   GMS-Nepal        NEPAL                          Medium               High               0.0153823   -0.0519306    0.0826952
12-15 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0422244   -0.0857090    0.0012602
12-15 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0247748   -0.0656003    0.0160507
12-15 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Low                  High               0.0944290   -0.1026681    0.2915262
12-15 months   LCNI-5           MALAWI                         Medium               High              -0.1214246   -0.3856386    0.1427895
12-15 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low                  High               0.0330086   -0.0919023    0.1579195
12-15 months   MAL-ED           BANGLADESH                     Medium               High              -0.0447469   -0.1555418    0.0660479
12-15 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low                  High              -0.0045006   -0.1381717    0.1291706
12-15 months   MAL-ED           INDIA                          Medium               High              -0.0272527   -0.1567570    0.1022515
12-15 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low                  High              -0.2489604   -0.4003900   -0.0975308
12-15 months   MAL-ED           NEPAL                          Medium               High              -0.1256680   -0.2687540    0.0174180
12-15 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low                  High               0.0046654   -0.1141938    0.1235246
12-15 months   MAL-ED           PERU                           Medium               High               0.0031796   -0.1252960    0.1316553
12-15 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.1113026   -0.2923173    0.0697122
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0406044   -0.1818528    0.2630616
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0747780   -0.0869431    0.2364990
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0036352   -0.2340062    0.2267358
12-15 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0579178   -0.1157655   -0.0000701
12-15 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0694653   -0.1296808   -0.0092499
12-15 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Low                  High              -0.1757068   -0.6642783    0.3128648
12-15 months   PROBIT           BELARUS                        Medium               High              -0.1307197   -0.5400439    0.2786045
12-15 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low                  High              -0.0691219   -0.1335670   -0.0046768
12-15 months   PROVIDE          BANGLADESH                     Medium               High              -0.0464492   -0.1105878    0.0176895
12-15 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low                  High              -0.1564525   -0.2486370   -0.0642680
12-15 months   SAS-CompFeed     INDIA                          Medium               High              -0.0932499   -0.1970159    0.0105161
12-15 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          Low                  High              -0.1053576   -0.3651437    0.1544285
12-15 months   SAS-FoodSuppl    INDIA                          Medium               High              -0.0202898   -0.2273745    0.1867950
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0616401   -0.1570781    0.0337980
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0136240   -0.1179466    0.0906985
12-15 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0055537   -0.1490056    0.1378982
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0072231   -0.1381054    0.1236592
15-18 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low                  High              -0.0751005   -0.1674640    0.0172630
15-18 months   COHORTS          GUATEMALA                      Medium               High               0.0200008   -0.0727458    0.1127473
15-18 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low                  High              -0.0405359   -0.1208131    0.0397414
15-18 months   GMS-Nepal        NEPAL                          Medium               High              -0.0021484   -0.0797787    0.0754820
15-18 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low                  High               0.0089871   -0.0339017    0.0518759
15-18 months   JiVitA-4         BANGLADESH                     Medium               High               0.0086496   -0.0352717    0.0525709
15-18 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Low                  High               0.0603389   -0.0969914    0.2176693
15-18 months   LCNI-5           MALAWI                         Medium               High               0.1781696   -0.0019887    0.3583280
15-18 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low                  High              -0.0911106   -0.2169373    0.0347161
15-18 months   MAL-ED           BANGLADESH                     Medium               High              -0.0990844   -0.2139428    0.0157740
15-18 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low                  High               0.0398815   -0.0832569    0.1630199
15-18 months   MAL-ED           INDIA                          Medium               High               0.0413423   -0.0857900    0.1684745
15-18 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low                  High              -0.0258042   -0.1900291    0.1384206
15-18 months   MAL-ED           NEPAL                          Medium               High              -0.0452455   -0.2108477    0.1203568
15-18 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low                  High               0.0034046   -0.1024251    0.1092343
15-18 months   MAL-ED           PERU                           Medium               High               0.0964959   -0.0225034    0.2154952
15-18 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0262025   -0.2246189    0.1722139
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.1288539   -0.3689710    0.1112632
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0920318   -0.2514750    0.0674114
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0487424   -0.2777530    0.1802681
15-18 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0745101   -0.1300746   -0.0189455
15-18 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0136941   -0.0683746    0.0409865
15-18 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Low                  High              -0.0833978   -1.4084156    1.2416201
15-18 months   PROBIT           BELARUS                        Medium               High              -0.1558507   -1.3494625    1.0377612
15-18 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low                  High              -0.0435509   -0.1009904    0.0138886
15-18 months   PROVIDE          BANGLADESH                     Medium               High              -0.0632252   -0.1216090   -0.0048414
15-18 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low                  High              -0.0288861   -0.0893838    0.0316116
15-18 months   SAS-CompFeed     INDIA                          Medium               High               0.0115309   -0.0869770    0.1100387
15-18 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          Low                  High               0.0984288    0.0068811    0.1899766
15-18 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0648108   -0.0168511    0.1464727
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0392242   -0.0589540    0.1374024
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0006113   -0.1116134    0.1128359
15-18 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0038101   -0.1477733    0.1401531
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0201255   -0.1074148    0.1476657
18-21 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low                  High               0.0219443   -0.0568675    0.1007560
18-21 months   COHORTS          GUATEMALA                      Medium               High               0.0229490   -0.0581711    0.1040691
18-21 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low                  High               0.0268427   -0.0669184    0.1206038
18-21 months   GMS-Nepal        NEPAL                          Medium               High               0.0293894   -0.0716372    0.1304160
18-21 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Low                  High               0.0088715   -0.1154509    0.1331939
18-21 months   LCNI-5           MALAWI                         Medium               High              -0.0384079   -0.1697528    0.0929370
18-21 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low                  High              -0.0324804   -0.1472819    0.0823211
18-21 months   MAL-ED           BANGLADESH                     Medium               High              -0.0164273   -0.1272227    0.0943681
18-21 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low                  High              -0.0323157   -0.1473659    0.0827346
18-21 months   MAL-ED           INDIA                          Medium               High              -0.0211037   -0.1428902    0.1006828
18-21 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low                  High              -0.0351048   -0.1738959    0.1036864
18-21 months   MAL-ED           NEPAL                          Medium               High               0.0358412   -0.1078338    0.1795161
18-21 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low                  High               0.0515104   -0.0706933    0.1737140
18-21 months   MAL-ED           PERU                           Medium               High              -0.0437807   -0.1568203    0.0692590
18-21 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0743892   -0.2470834    0.0983049
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0518770   -0.2630759    0.1593219
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0172388   -0.1924827    0.1580050
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0997894   -0.0690329    0.2686118
18-21 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0528853   -0.1082803    0.0025096
18-21 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0097397   -0.0665278    0.0470483
18-21 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Low                  High              -0.1682161   -1.1191839    0.7827517
18-21 months   PROBIT           BELARUS                        Medium               High              -0.1544749   -1.8344735    1.5255237
18-21 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low                  High              -0.0874827   -0.1437802   -0.0311852
18-21 months   PROVIDE          BANGLADESH                     Medium               High              -0.0710506   -0.1312872   -0.0108141
18-21 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.1342045   -0.2899761    0.0215671
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.1263732   -0.2683830    0.0156367
21-24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low                  High               0.0203702   -0.0484038    0.0891442
21-24 months   COHORTS          GUATEMALA                      Medium               High               0.0314012   -0.0386122    0.1014145
21-24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low                  High              -0.0979080   -0.2307358    0.0349197
21-24 months   GMS-Nepal        NEPAL                          Medium               High              -0.1385537   -0.2788933    0.0017859
21-24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Low                  High               0.1400161    0.0342934    0.2457387
21-24 months   LCNI-5           MALAWI                         Medium               High               0.1425495    0.0318423    0.2532566
21-24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low                  High               0.0063764   -0.1128236    0.1255764
21-24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0014781   -0.1112589    0.1083028
21-24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low                  High              -0.0168777   -0.1215358    0.0877803
21-24 months   MAL-ED           INDIA                          Medium               High              -0.0474861   -0.1514872    0.0565150
21-24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low                  High              -0.0508157   -0.2162201    0.1145888
21-24 months   MAL-ED           NEPAL                          Medium               High              -0.0139013   -0.1422175    0.1144148
21-24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low                  High               0.0295263   -0.0925107    0.1515634
21-24 months   MAL-ED           PERU                           Medium               High              -0.0105391   -0.1372553    0.1161772
21-24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0645719   -0.2374394    0.1082956
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0398745   -0.2314349    0.1516858
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1496504   -0.3318585    0.0325577
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1602670   -0.3576877    0.0371537
21-24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0632012   -0.1257387   -0.0006637
21-24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0335032   -0.0218030    0.0888093
21-24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Low                  High              -0.1005833   -1.3129842    1.1118176
21-24 months   PROBIT           BELARUS                        Medium               High              -0.1697113   -1.5228259    1.1834034
21-24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0606995   -0.1217561    0.0003572
21-24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0483004   -0.1105600    0.0139592
21-24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.1530805   -0.3355286    0.0293676
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.1280837   -0.3026790    0.0465116


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.0355898   -0.1222442    0.0510645
0-3 months     COHORTS          INDIA                          High                 NA                -0.0901015   -0.1297886   -0.0504145
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0471063   -0.1340442    0.0398315
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0494608   -0.0659564   -0.0329651
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0311780   -0.0911946    0.0288386
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0826518   -0.1867715    0.0214679
0-3 months     MAL-ED           INDIA                          High                 NA                -0.0129748   -0.1773402    0.1513907
0-3 months     MAL-ED           NEPAL                          High                 NA                 0.0478645   -0.1582010    0.2539300
0-3 months     MAL-ED           PERU                           High                 NA                -0.0001561   -0.0771142    0.0768021
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0558476   -0.2784997    0.1668046
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0014971   -0.0660241    0.0630299
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0210299   -0.0238608    0.0659206
0-3 months     PROBIT           BELARUS                        High                 NA                -0.0481034   -0.0938089   -0.0023978
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.0597987   -0.1123527   -0.0072446
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.0320038   -0.1401529    0.0761454
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0196140   -0.0930696    0.0538416
3-6 months     COHORTS          GUATEMALA                      High                 NA                -0.0056186   -0.0687346    0.0574973
3-6 months     COHORTS          INDIA                          High                 NA                -0.0232129   -0.0562762    0.0098505
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.0131336   -0.0819373    0.0556700
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0240342   -0.0418195   -0.0062488
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0016949   -0.0581019    0.0547120
3-6 months     MAL-ED           BANGLADESH                     High                 NA                -0.0955662   -0.1744896   -0.0166427
3-6 months     MAL-ED           INDIA                          High                 NA                 0.0119135   -0.1004929    0.1243200
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0527632   -0.1683074    0.0627809
3-6 months     MAL-ED           PERU                           High                 NA                 0.0124975   -0.0664259    0.0914210
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0247093   -0.2078370    0.1584185
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0109729   -0.0479362    0.0698820
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0036853   -0.0411107    0.0484814
3-6 months     PROBIT           BELARUS                        High                 NA                -0.0307945   -0.0560435   -0.0055455
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0395240   -0.0867685    0.0077206
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0345121   -0.1045889    0.0355647
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0212520   -0.0944860    0.0519820
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0652682   -0.1336697    0.0031333
6-9 months     COHORTS          GUATEMALA                      High                 NA                 0.0081880   -0.0515100    0.0678860
6-9 months     COHORTS          INDIA                          High                 NA                -0.0294677   -0.0599789    0.0010434
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0357267   -0.1082397    0.0367863
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0548040   -0.0920501   -0.0175579
6-9 months     LCNI-5           MALAWI                         High                 NA                -0.0251552   -0.0774070    0.0270966
6-9 months     MAL-ED           BANGLADESH                     High                 NA                -0.0604990   -0.1311427    0.0101446
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0183696   -0.1083286    0.0715893
6-9 months     MAL-ED           NEPAL                          High                 NA                 0.0261598   -0.0528950    0.1052145
6-9 months     MAL-ED           PERU                           High                 NA                -0.0482736   -0.1132406    0.0166934
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0526669   -0.1794962    0.0741625
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0265631   -0.0874291    0.0343029
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0561851   -0.0934394   -0.0189308
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0217014    0.0020363    0.0413666
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0628952   -0.0969906   -0.0287997
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0316380   -0.0867783    0.0235023
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                 0.0334022   -0.0346338    0.1014382
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0068767   -0.0839836    0.0702301
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                 0.0456205   -0.0302476    0.1214885
9-12 months    COHORTS          GUATEMALA                      High                 NA                -0.0440520   -0.0921173    0.0040132
9-12 months    COHORTS          INDIA                          High                 NA                -0.0711430   -0.1024287   -0.0398573
9-12 months    GMS-Nepal        NEPAL                          High                 NA                -0.0071419   -0.0709028    0.0566191
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0043066   -0.0401120    0.0314989
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0124359   -0.0827961    0.0579244
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0110486   -0.0806091    0.0585119
9-12 months    MAL-ED           INDIA                          High                 NA                -0.0474026   -0.1249862    0.0301811
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0378734   -0.1051856    0.0294387
9-12 months    MAL-ED           PERU                           High                 NA                -0.0269891   -0.0868829    0.0329047
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0466974   -0.1925241    0.0991293
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0075090   -0.0700034    0.0549854
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0032752   -0.0291860    0.0357363
9-12 months    PROBIT           BELARUS                        High                 NA                 0.0067382   -0.0319201    0.0453965
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0380677   -0.0763045    0.0001691
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0349066   -0.1021817    0.0323685
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1329952   -0.4086058    0.1426155
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0549189   -0.1231769    0.0133391
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0782014   -0.1488301   -0.0075727
12-15 months   COHORTS          GUATEMALA                      High                 NA                 0.0239665   -0.0324075    0.0803405
12-15 months   GMS-Nepal        NEPAL                          High                 NA                 0.0022873   -0.0448623    0.0494369
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0254677   -0.0547260    0.0037905
12-15 months   LCNI-5           MALAWI                         High                 NA                -0.0060008   -0.1449135    0.1329120
12-15 months   MAL-ED           BANGLADESH                     High                 NA                -0.0064606   -0.0708772    0.0579559
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0096575   -0.0897020    0.0703870
12-15 months   MAL-ED           NEPAL                          High                 NA                -0.1070367   -0.1813445   -0.0327289
12-15 months   MAL-ED           PERU                           High                 NA                 0.0020248   -0.0501483    0.0541978
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0327941   -0.1384407    0.0728525
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0203197   -0.0315922    0.0722316
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0386887   -0.0691245   -0.0082529
12-15 months   PROBIT           BELARUS                        High                 NA                -0.1243272   -0.4483608    0.1997063
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0371863   -0.0734031   -0.0009695
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0953345   -0.1647648   -0.0259042
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0443447   -0.1972853    0.1085958
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0364635   -0.1089815    0.0360545
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0064841   -0.1293420    0.1163738
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0274092   -0.0986894    0.0438711
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0185468   -0.0701477    0.0330541
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0067518   -0.0230639    0.0365675
15-18 months   LCNI-5           MALAWI                         High                 NA                 0.0821991   -0.0200491    0.1844474
15-18 months   MAL-ED           BANGLADESH                     High                 NA                -0.0628241   -0.1306027    0.0049546
15-18 months   MAL-ED           INDIA                          High                 NA                 0.0274237   -0.0465595    0.1014070
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0208122   -0.1052337    0.0636093
15-18 months   MAL-ED           PERU                           High                 NA                 0.0248898   -0.0249031    0.0746827
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0410415   -0.1551720    0.0730889
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0290885   -0.0802446    0.0220676
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0264774   -0.0547476    0.0017928
15-18 months   PROBIT           BELARUS                        High                 NA                -0.0946108   -0.9788640    0.7896424
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0340806   -0.0658560   -0.0023051
15-18 months   SAS-CompFeed     INDIA                          High                 NA                -0.0083124   -0.0632082    0.0465834
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0594369    0.0040213    0.1148524
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0210772   -0.0516629    0.0938173
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0142121   -0.1056433    0.1340675
18-21 months   COHORTS          GUATEMALA                      High                 NA                 0.0183593   -0.0414352    0.0781538
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0209955   -0.0464119    0.0884028
18-21 months   LCNI-5           MALAWI                         High                 NA                -0.0103190   -0.0925822    0.0719441
18-21 months   MAL-ED           BANGLADESH                     High                 NA                -0.0154679   -0.0777144    0.0467785
18-21 months   MAL-ED           INDIA                          High                 NA                -0.0185979   -0.0861573    0.0489615
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0001773   -0.0729591    0.0726045
18-21 months   MAL-ED           PERU                           High                 NA                 0.0029218   -0.0487432    0.0545868
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0407836   -0.1367287    0.0551614
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045516   -0.0475244    0.0566277
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0176838   -0.0449645    0.0095969
18-21 months   PROBIT           BELARUS                        High                 NA                -0.1367132   -1.1303646    0.8569382
18-21 months   PROVIDE          BANGLADESH                     High                 NA                -0.0528584   -0.0863819   -0.0193350
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1218939   -0.2559072    0.0121195
21-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0207517   -0.0321150    0.0736184
21-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0865771   -0.1833688    0.0102146
21-24 months   LCNI-5           MALAWI                         High                 NA                 0.0984840    0.0341099    0.1628581
21-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0013582   -0.0626892    0.0654057
21-24 months   MAL-ED           INDIA                          High                 NA                -0.0205790   -0.0841333    0.0429753
21-24 months   MAL-ED           NEPAL                          High                 NA                -0.0192606   -0.0922054    0.0536841
21-24 months   MAL-ED           PERU                           High                 NA                 0.0054385   -0.0502870    0.0611641
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0342040   -0.1314391    0.0630312
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0547202   -0.1109914    0.0015511
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0070881   -0.0361316    0.0219554
21-24 months   PROBIT           BELARUS                        High                 NA                -0.1157962   -1.1225531    0.8909606
21-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0369568   -0.0728210   -0.0010927
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.1270544   -0.2916693    0.0375606
