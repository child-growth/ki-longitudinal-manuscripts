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
![](/tmp/605b801c-a5c3-441c-8516-2977b436fa9b/9a4f42a2-119a-4f2b-9ca9-3f971ea469b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/605b801c-a5c3-441c-8516-2977b436fa9b/9a4f42a2-119a-4f2b-9ca9-3f971ea469b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/605b801c-a5c3-441c-8516-2977b436fa9b/9a4f42a2-119a-4f2b-9ca9-3f971ea469b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.5085525   -0.5560058   -0.4610992
0-3 months     COHORTS          GUATEMALA                      Low                  NA                -0.5190110   -0.5515710   -0.4864509
0-3 months     COHORTS          GUATEMALA                      Medium               NA                -0.5617176   -0.6001855   -0.5232497
0-3 months     COHORTS          INDIA                          High                 NA                -0.0244190   -0.0492762    0.0004383
0-3 months     COHORTS          INDIA                          Low                  NA                -0.1074340   -0.1346182   -0.0802498
0-3 months     COHORTS          INDIA                          Medium               NA                -0.0822795   -0.1106981   -0.0538609
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0187433   -0.0667847    0.0292981
0-3 months     GMS-Nepal        NEPAL                          Low                  NA                -0.0470028   -0.0855777   -0.0084279
0-3 months     GMS-Nepal        NEPAL                          Medium               NA                -0.0188042   -0.0646374    0.0270291
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                 0.0964494    0.0868717    0.1060271
0-3 months     JiVitA-3         BANGLADESH                     Low                  NA                 0.0594242    0.0523196    0.0665288
0-3 months     JiVitA-3         BANGLADESH                     Medium               NA                 0.0773623    0.0697618    0.0849628
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                 0.0788963    0.0469858    0.1108068
0-3 months     JiVitA-4         BANGLADESH                     Low                  NA                 0.0612240    0.0366661    0.0857820
0-3 months     JiVitA-4         BANGLADESH                     Medium               NA                 0.0700799    0.0455203    0.0946394
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0543956   -0.1173349    0.0085437
0-3 months     MAL-ED           BANGLADESH                     Low                  NA                -0.0977748   -0.1761733   -0.0193764
0-3 months     MAL-ED           BANGLADESH                     Medium               NA                -0.1385200   -0.2138486   -0.0631915
0-3 months     MAL-ED           INDIA                          High                 NA                -0.0376238   -0.1284179    0.0531703
0-3 months     MAL-ED           INDIA                          Low                  NA                -0.0741107   -0.1732551    0.0250336
0-3 months     MAL-ED           INDIA                          Medium               NA                 0.0264959   -0.0874552    0.1404471
0-3 months     MAL-ED           NEPAL                          High                 NA                 0.0526530   -0.0648754    0.1701814
0-3 months     MAL-ED           NEPAL                          Low                  NA                 0.0394587   -0.0715672    0.1504846
0-3 months     MAL-ED           NEPAL                          Medium               NA                 0.1198621   -0.0053791    0.2451032
0-3 months     MAL-ED           PERU                           High                 NA                -0.2576764   -0.3153755   -0.1999774
0-3 months     MAL-ED           PERU                           Low                  NA                -0.3008807   -0.3657276   -0.2360339
0-3 months     MAL-ED           PERU                           Medium               NA                -0.2562049   -0.3290932   -0.1833166
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.1185530   -0.2670483    0.0299424
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.1203636   -0.2511977    0.0104706
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               NA                -0.1994285   -0.3611340   -0.0377229
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1335152   -0.1895375   -0.0774928
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1120343   -0.1986363   -0.0254323
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1307322   -0.2330301   -0.0284342
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.2420596   -0.2692972   -0.2148220
0-3 months     NIH-Crypto       BANGLADESH                     Low                  NA                -0.2198545   -0.2530721   -0.1866369
0-3 months     NIH-Crypto       BANGLADESH                     Medium               NA                -0.2294548   -0.2596453   -0.1992644
0-3 months     PROBIT           BELARUS                        High                 NA                -0.4072478   -0.4634514   -0.3510441
0-3 months     PROBIT           BELARUS                        Low                  NA                -0.4439112   -0.5122514   -0.3755709
0-3 months     PROBIT           BELARUS                        Medium               NA                -0.4219213   -0.4778840   -0.3659586
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.1621383   -0.1931894   -0.1310872
0-3 months     PROVIDE          BANGLADESH                     Low                  NA                -0.2107282   -0.2405185   -0.1809379
0-3 months     PROVIDE          BANGLADESH                     Medium               NA                -0.1917128   -0.2205320   -0.1628937
0-3 months     SAS-CompFeed     INDIA                          High                 NA                -0.1285745   -0.2023467   -0.0548023
0-3 months     SAS-CompFeed     INDIA                          Low                  NA                -0.1534912   -0.1915135   -0.1154690
0-3 months     SAS-CompFeed     INDIA                          Medium               NA                -0.0904809   -0.1242350   -0.0567268
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.1276596   -0.1652257   -0.0900934
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1456674   -0.1704358   -0.1208989
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1374106   -0.1494349   -0.1253862
3-6 months     COHORTS          GUATEMALA                      High                 NA                -0.0933166   -0.1258616   -0.0607716
3-6 months     COHORTS          GUATEMALA                      Low                  NA                -0.0996771   -0.1233828   -0.0759714
3-6 months     COHORTS          GUATEMALA                      Medium               NA                -0.1020443   -0.1258788   -0.0782099
3-6 months     COHORTS          INDIA                          High                 NA                -0.0505066   -0.0696742   -0.0313391
3-6 months     COHORTS          INDIA                          Low                  NA                -0.0754127   -0.0993428   -0.0514827
3-6 months     COHORTS          INDIA                          Medium               NA                -0.0494202   -0.0725129   -0.0263276
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.1600750   -0.1976870   -0.1224629
3-6 months     GMS-Nepal        NEPAL                          Low                  NA                -0.1556710   -0.1843064   -0.1270355
3-6 months     GMS-Nepal        NEPAL                          Medium               NA                -0.1711598   -0.2033486   -0.1389710
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                 0.0027352   -0.0069331    0.0124035
3-6 months     JiVitA-3         BANGLADESH                     Low                  NA                -0.0114567   -0.0194574   -0.0034560
3-6 months     JiVitA-3         BANGLADESH                     Medium               NA                -0.0005717   -0.0086979    0.0075544
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0116400   -0.0422133    0.0189334
3-6 months     JiVitA-4         BANGLADESH                     Low                  NA                -0.0010346   -0.0242297    0.0221604
3-6 months     JiVitA-4         BANGLADESH                     Medium               NA                -0.0139996   -0.0333787    0.0053795
3-6 months     MAL-ED           BANGLADESH                     High                 NA                 0.0371745   -0.0028274    0.0771763
3-6 months     MAL-ED           BANGLADESH                     Low                  NA                -0.0412106   -0.1059464    0.0235252
3-6 months     MAL-ED           BANGLADESH                     Medium               NA                -0.0278141   -0.0889755    0.0333473
3-6 months     MAL-ED           INDIA                          High                 NA                -0.0399354   -0.0942050    0.0143343
3-6 months     MAL-ED           INDIA                          Low                  NA                -0.0127137   -0.0846782    0.0592508
3-6 months     MAL-ED           INDIA                          Medium               NA                -0.0579733   -0.1371084    0.0211618
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0319415   -0.1049359    0.0410530
3-6 months     MAL-ED           NEPAL                          Low                  NA                -0.0863844   -0.1555211   -0.0172477
3-6 months     MAL-ED           NEPAL                          Medium               NA                -0.0562835   -0.1478277    0.0352606
3-6 months     MAL-ED           PERU                           High                 NA                 0.0317352   -0.0255611    0.0890316
3-6 months     MAL-ED           PERU                           Low                  NA                 0.0271932   -0.0349832    0.0893697
3-6 months     MAL-ED           PERU                           Medium               NA                 0.0566460   -0.0007439    0.1140358
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0240782   -0.1377590    0.0896027
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0773587   -0.1692084    0.0144910
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               NA                 0.0229016   -0.0826695    0.1284728
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0792217   -0.1249028   -0.0335405
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0308210   -0.0990297    0.0373876
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1486658   -0.2715166   -0.0258151
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0237589   -0.0019297    0.0494475
3-6 months     NIH-Crypto       BANGLADESH                     Low                  NA                 0.0126626   -0.0175760    0.0429012
3-6 months     NIH-Crypto       BANGLADESH                     Medium               NA                 0.0459977    0.0137168    0.0782785
3-6 months     PROBIT           BELARUS                        High                 NA                 0.0616795    0.0391920    0.0841670
3-6 months     PROBIT           BELARUS                        Low                  NA                 0.0459220    0.0286796    0.0631644
3-6 months     PROBIT           BELARUS                        Medium               NA                 0.0499180    0.0260975    0.0737384
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0122318   -0.0401176    0.0156540
3-6 months     PROVIDE          BANGLADESH                     Low                  NA                -0.0402263   -0.0673560   -0.0130966
3-6 months     PROVIDE          BANGLADESH                     Medium               NA                -0.0285493   -0.0558338   -0.0012647
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0076258   -0.0348848    0.0196333
3-6 months     SAS-CompFeed     INDIA                          Low                  NA                -0.0332628   -0.0600287   -0.0064970
3-6 months     SAS-CompFeed     INDIA                          Medium               NA                -0.0030394   -0.0308564    0.0247776
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0771806   -0.1144976   -0.0398636
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0825665   -0.1060333   -0.0590997
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0970975   -0.1271052   -0.0670899
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                 0.0278214   -0.0048652    0.0605079
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0208881   -0.0436068    0.0018305
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               NA                 0.0002510   -0.0105305    0.0110325
6-9 months     COHORTS          GUATEMALA                      High                 NA                -0.1232298   -0.1526568   -0.0938029
6-9 months     COHORTS          GUATEMALA                      Low                  NA                -0.1263338   -0.1449928   -0.1076749
6-9 months     COHORTS          GUATEMALA                      Medium               NA                -0.1112101   -0.1302807   -0.0921396
6-9 months     COHORTS          INDIA                          High                 NA                -0.0844683   -0.1013469   -0.0675898
6-9 months     COHORTS          INDIA                          Low                  NA                -0.0921088   -0.1117991   -0.0724185
6-9 months     COHORTS          INDIA                          Medium               NA                -0.1045965   -0.1251799   -0.0840132
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0319348   -0.0674044    0.0035347
6-9 months     GMS-Nepal        NEPAL                          Low                  NA                -0.0353527   -0.0647949   -0.0059105
6-9 months     GMS-Nepal        NEPAL                          Medium               NA                -0.0637728   -0.0889247   -0.0386209
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0091528   -0.0278783    0.0095728
6-9 months     JiVitA-4         BANGLADESH                     Low                  NA                -0.0473673   -0.0622733   -0.0324613
6-9 months     JiVitA-4         BANGLADESH                     Medium               NA                -0.0237012   -0.0371820   -0.0102203
6-9 months     LCNI-5           MALAWI                         High                 NA                 0.0379171    0.0110263    0.0648080
6-9 months     LCNI-5           MALAWI                         Low                  NA                 0.0243070   -0.0042145    0.0528284
6-9 months     LCNI-5           MALAWI                         Medium               NA                 0.0222281   -0.0051227    0.0495789
6-9 months     MAL-ED           BANGLADESH                     High                 NA                -0.0506299   -0.0902752   -0.0109846
6-9 months     MAL-ED           BANGLADESH                     Low                  NA                -0.0983465   -0.1450367   -0.0516563
6-9 months     MAL-ED           BANGLADESH                     Medium               NA                -0.0845644   -0.1223845   -0.0467442
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0727972   -0.1165192   -0.0290752
6-9 months     MAL-ED           INDIA                          Low                  NA                -0.0904557   -0.1504291   -0.0304822
6-9 months     MAL-ED           INDIA                          Medium               NA                -0.0817257   -0.1207883   -0.0426632
6-9 months     MAL-ED           NEPAL                          High                 NA                -0.0653446   -0.1084100   -0.0222792
6-9 months     MAL-ED           NEPAL                          Low                  NA                -0.0472210   -0.1097947    0.0153526
6-9 months     MAL-ED           NEPAL                          Medium               NA                -0.0372142   -0.0917227    0.0172943
6-9 months     MAL-ED           PERU                           High                 NA                -0.0094078   -0.0502634    0.0314478
6-9 months     MAL-ED           PERU                           Low                  NA                -0.0225469   -0.0738470    0.0287533
6-9 months     MAL-ED           PERU                           Medium               NA                -0.0821863   -0.1313967   -0.0329759
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                 0.0142240   -0.0511058    0.0795538
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0612668   -0.1267912    0.0042576
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               NA                 0.0361959   -0.0657707    0.1381625
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0806665   -0.1313084   -0.0300246
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1212223   -0.1804202   -0.0620245
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0708920   -0.1733000    0.0315159
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0105535   -0.0319278    0.0108208
6-9 months     NIH-Crypto       BANGLADESH                     Low                  NA                -0.0542487   -0.0750736   -0.0334237
6-9 months     NIH-Crypto       BANGLADESH                     Medium               NA                -0.0348048   -0.0582880   -0.0113216
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0387546    0.0227497    0.0547596
6-9 months     PROBIT           BELARUS                        Low                  NA                 0.0647722    0.0492249    0.0803195
6-9 months     PROBIT           BELARUS                        Medium               NA                 0.0427166    0.0265408    0.0588924
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0377541   -0.0554841   -0.0200241
6-9 months     PROVIDE          BANGLADESH                     Low                  NA                -0.0805576   -0.0995896   -0.0615255
6-9 months     PROVIDE          BANGLADESH                     Medium               NA                -0.0665618   -0.0856200   -0.0475035
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0728796   -0.0969796   -0.0487795
6-9 months     SAS-CompFeed     INDIA                          Low                  NA                -0.0886545   -0.1049712   -0.0723378
6-9 months     SAS-CompFeed     INDIA                          Medium               NA                -0.0794614   -0.1034078   -0.0555149
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                -0.1213489   -0.1555667   -0.0871311
6-9 months     SAS-FoodSuppl    INDIA                          Low                  NA                -0.0939129   -0.1227196   -0.0651062
6-9 months     SAS-FoodSuppl    INDIA                          Medium               NA                -0.1054064   -0.1362659   -0.0745468
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0513602   -0.0891584   -0.0135620
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0639967   -0.0862653   -0.0417282
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0281624   -0.0574576    0.0011328
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0544053   -0.0889935   -0.0198171
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0389072   -0.0592124   -0.0186019
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0278650   -0.0375973   -0.0181327
9-12 months    COHORTS          GUATEMALA                      High                 NA                -0.0716687   -0.0932440   -0.0500934
9-12 months    COHORTS          GUATEMALA                      Low                  NA                -0.0876906   -0.1037140   -0.0716671
9-12 months    COHORTS          GUATEMALA                      Medium               NA                -0.1021360   -0.1188565   -0.0854154
9-12 months    COHORTS          INDIA                          High                 NA                -0.0647249   -0.0810389   -0.0484110
9-12 months    COHORTS          INDIA                          Low                  NA                -0.1196576   -0.1386280   -0.1006873
9-12 months    COHORTS          INDIA                          Medium               NA                -0.0847078   -0.1033627   -0.0660528
9-12 months    GMS-Nepal        NEPAL                          High                 NA                -0.0806472   -0.1125853   -0.0487091
9-12 months    GMS-Nepal        NEPAL                          Low                  NA                -0.0788671   -0.1009560   -0.0567782
9-12 months    GMS-Nepal        NEPAL                          Medium               NA                -0.0806450   -0.0984764   -0.0628136
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0557252   -0.0740064   -0.0374440
9-12 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.0508375   -0.0636982   -0.0379768
9-12 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.0517820   -0.0616280   -0.0419360
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0385207   -0.0717278   -0.0053136
9-12 months    LCNI-5           MALAWI                         Low                  NA                -0.0433181   -0.0788073   -0.0078289
9-12 months    LCNI-5           MALAWI                         Medium               NA                -0.0489287   -0.0806433   -0.0172140
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0907896   -0.1269760   -0.0546032
9-12 months    MAL-ED           BANGLADESH                     Low                  NA                -0.0986190   -0.1388043   -0.0584336
9-12 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0896786   -0.1285942   -0.0507630
9-12 months    MAL-ED           INDIA                          High                 NA                -0.0711808   -0.1110320   -0.0313296
9-12 months    MAL-ED           INDIA                          Low                  NA                -0.0949937   -0.1308029   -0.0591844
9-12 months    MAL-ED           INDIA                          Medium               NA                -0.1027649   -0.1435380   -0.0619919
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0338918   -0.0683049    0.0005213
9-12 months    MAL-ED           NEPAL                          Low                  NA                -0.0452961   -0.0881766   -0.0024156
9-12 months    MAL-ED           NEPAL                          Medium               NA                -0.0740810   -0.1217822   -0.0263797
9-12 months    MAL-ED           PERU                           High                 NA                -0.0353003   -0.0698827   -0.0007179
9-12 months    MAL-ED           PERU                           Low                  NA                -0.0593500   -0.1076418   -0.0110582
9-12 months    MAL-ED           PERU                           Medium               NA                -0.0475721   -0.0896139   -0.0055304
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0969847   -0.1747491   -0.0192204
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -0.1104958   -0.1914661   -0.0295255
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -0.1451586   -0.2135596   -0.0767575
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1649716   -0.2175308   -0.1124123
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1899848   -0.2407084   -0.1392611
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1159148   -0.2412572    0.0094276
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0401142   -0.0571519   -0.0230766
9-12 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.0382263   -0.0573379   -0.0191148
9-12 months    NIH-Crypto       BANGLADESH                     Medium               NA                -0.0227239   -0.0438174   -0.0016305
9-12 months    PROBIT           BELARUS                        High                 NA                 0.0314402    0.0167699    0.0461104
9-12 months    PROBIT           BELARUS                        Low                  NA                 0.0470316    0.0217456    0.0723176
9-12 months    PROBIT           BELARUS                        Medium               NA                 0.0296774    0.0071344    0.0522205
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0530488   -0.0727299   -0.0333678
9-12 months    PROVIDE          BANGLADESH                     Low                  NA                -0.0669572   -0.0830757   -0.0508387
9-12 months    PROVIDE          BANGLADESH                     Medium               NA                -0.0696223   -0.0905362   -0.0487085
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0716259   -0.1062654   -0.0369863
9-12 months    SAS-CompFeed     INDIA                          Low                  NA                -0.0956991   -0.1207098   -0.0706885
9-12 months    SAS-CompFeed     INDIA                          Medium               NA                -0.0688616   -0.0808865   -0.0568368
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0943811   -0.2320026    0.0432403
9-12 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.1194113   -0.2241922   -0.0146305
9-12 months    SAS-FoodSuppl    INDIA                          Medium               NA                -0.2059948   -0.2554771   -0.1565125
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0460359   -0.0774555   -0.0146163
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0693488   -0.0889431   -0.0497545
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0729775   -0.1006293   -0.0453257
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0292327   -0.0597836    0.0013182
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0686193   -0.0864129   -0.0508256
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0606343   -0.0692854   -0.0519832
12-15 months   COHORTS          GUATEMALA                      High                 NA                -0.0971194   -0.1209767   -0.0732620
12-15 months   COHORTS          GUATEMALA                      Low                  NA                -0.0856236   -0.0999575   -0.0712897
12-15 months   COHORTS          GUATEMALA                      Medium               NA                -0.0842246   -0.1033368   -0.0651124
12-15 months   GMS-Nepal        NEPAL                          High                 NA                -0.0713340   -0.0906709   -0.0519972
12-15 months   GMS-Nepal        NEPAL                          Low                  NA                -0.0674119   -0.0863112   -0.0485127
12-15 months   GMS-Nepal        NEPAL                          Medium               NA                -0.0619158   -0.0782756   -0.0455560
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0420924   -0.0551898   -0.0289951
12-15 months   JiVitA-4         BANGLADESH                     Low                  NA                -0.0492436   -0.0597661   -0.0387210
12-15 months   JiVitA-4         BANGLADESH                     Medium               NA                -0.0458127   -0.0548177   -0.0368078
12-15 months   LCNI-5           MALAWI                         High                 NA                -0.0351969   -0.0967600    0.0263662
12-15 months   LCNI-5           MALAWI                         Low                  NA                -0.0028762   -0.0494048    0.0436524
12-15 months   LCNI-5           MALAWI                         Medium               NA                -0.0860774   -0.1656834   -0.0064714
12-15 months   MAL-ED           BANGLADESH                     High                 NA                -0.0615211   -0.0899247   -0.0331176
12-15 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0412391   -0.0799322   -0.0025460
12-15 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0729642   -0.1046147   -0.0413137
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0557861   -0.0948219   -0.0167502
12-15 months   MAL-ED           INDIA                          Low                  NA                -0.0586678   -0.0930889   -0.0242468
12-15 months   MAL-ED           INDIA                          Medium               NA                -0.0625681   -0.0951925   -0.0299437
12-15 months   MAL-ED           NEPAL                          High                 NA                -0.0162762   -0.0538371    0.0212848
12-15 months   MAL-ED           NEPAL                          Low                  NA                -0.1110831   -0.1572910   -0.0648752
12-15 months   MAL-ED           NEPAL                          Medium               NA                -0.0594932   -0.0993185   -0.0196679
12-15 months   MAL-ED           PERU                           High                 NA                -0.0715761   -0.1005607   -0.0425916
12-15 months   MAL-ED           PERU                           Low                  NA                -0.0698137   -0.1056479   -0.0339794
12-15 months   MAL-ED           PERU                           Medium               NA                -0.0693332   -0.1102197   -0.0284468
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0399650   -0.0926033    0.0126733
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0846563   -0.1320349   -0.0372777
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0186542   -0.0861580    0.0488497
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0757031   -0.1089784   -0.0424279
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0433990   -0.0970830    0.0102850
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0781580   -0.1610790    0.0047629
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0275371   -0.0427008   -0.0123735
12-15 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0428484   -0.0591343   -0.0265625
12-15 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0477701   -0.0656871   -0.0298531
12-15 months   PROBIT           BELARUS                        High                 NA                 0.0574513   -0.0691052    0.1840077
12-15 months   PROBIT           BELARUS                        Low                  NA                -0.0086799   -0.1619215    0.1445617
12-15 months   PROBIT           BELARUS                        Medium               NA                 0.0068203   -0.1651306    0.1787712
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0321624   -0.0508313   -0.0134936
12-15 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0468448   -0.0634725   -0.0302171
12-15 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0447844   -0.0613020   -0.0282667
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0534981   -0.0764163   -0.0305800
12-15 months   SAS-CompFeed     INDIA                          Low                  NA                -0.1035137   -0.1276594   -0.0793680
12-15 months   SAS-CompFeed     INDIA                          Medium               NA                -0.0885104   -0.1133222   -0.0636986
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0191455   -0.0552787    0.0935696
12-15 months   SAS-FoodSuppl    INDIA                          Low                  NA                -0.0158566   -0.0904128    0.0586996
12-15 months   SAS-FoodSuppl    INDIA                          Medium               NA                 0.0239587   -0.0133902    0.0613076
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0554304   -0.0860374   -0.0248235
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0715462   -0.0921750   -0.0509174
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0569857   -0.0837548   -0.0302167
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0654493   -0.1153901   -0.0155085
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0573389   -0.0836441   -0.0310338
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0624771   -0.0744928   -0.0504613
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0448617   -0.0748887   -0.0148346
15-18 months   COHORTS          GUATEMALA                      Low                  NA                -0.0711879   -0.0878288   -0.0545470
15-18 months   COHORTS          GUATEMALA                      Medium               NA                -0.0398857   -0.0565816   -0.0231898
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0677850   -0.0866725   -0.0488976
15-18 months   GMS-Nepal        NEPAL                          Low                  NA                -0.0748066   -0.0965736   -0.0530396
15-18 months   GMS-Nepal        NEPAL                          Medium               NA                -0.0629179   -0.0839759   -0.0418599
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0392915   -0.0523432   -0.0262399
15-18 months   JiVitA-4         BANGLADESH                     Low                  NA                -0.0282000   -0.0385603   -0.0178396
15-18 months   JiVitA-4         BANGLADESH                     Medium               NA                -0.0319007   -0.0411951   -0.0226062
15-18 months   LCNI-5           MALAWI                         High                 NA                -0.0741781   -0.1142396   -0.0341166
15-18 months   LCNI-5           MALAWI                         Low                  NA                -0.0581712   -0.0981608   -0.0181817
15-18 months   LCNI-5           MALAWI                         Medium               NA                -0.0091526   -0.0593017    0.0409965
15-18 months   MAL-ED           BANGLADESH                     High                 NA                -0.0334439   -0.0629084   -0.0039794
15-18 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0593550   -0.0931206   -0.0255893
15-18 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0617388   -0.0933466   -0.0301311
15-18 months   MAL-ED           INDIA                          High                 NA                -0.0581114   -0.0894927   -0.0267301
15-18 months   MAL-ED           INDIA                          Low                  NA                -0.0446842   -0.0732573   -0.0161112
15-18 months   MAL-ED           INDIA                          Medium               NA                -0.0412031   -0.0727007   -0.0097055
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0579897   -0.1007347   -0.0152448
15-18 months   MAL-ED           NEPAL                          Low                  NA                -0.0603602   -0.1036427   -0.0170776
15-18 months   MAL-ED           NEPAL                          Medium               NA                -0.0641933   -0.1079771   -0.0204095
15-18 months   MAL-ED           PERU                           High                 NA                -0.0492826   -0.0765219   -0.0220433
15-18 months   MAL-ED           PERU                           Low                  NA                -0.0441188   -0.0719352   -0.0163024
15-18 months   MAL-ED           PERU                           Medium               NA                -0.0102256   -0.0446666    0.0242154
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0096603   -0.0634300    0.0441093
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0215347   -0.0701769    0.0271074
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0543132   -0.1268647    0.0182382
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0781240   -0.1098304   -0.0464176
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1162117   -0.1642886   -0.0681348
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0987486   -0.1733352   -0.0241620
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0117597   -0.0247670    0.0012475
15-18 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0308176   -0.0464216   -0.0152136
15-18 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0099001   -0.0248748    0.0050746
15-18 months   PROBIT           BELARUS                        High                 NA                 0.0204290   -0.3302851    0.3711432
15-18 months   PROBIT           BELARUS                        Low                  NA                -0.0076760   -0.2935742    0.2782221
15-18 months   PROBIT           BELARUS                        Medium               NA                -0.0340781   -0.2453261    0.1771699
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0310342   -0.0452204   -0.0168480
15-18 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0354750   -0.0508300   -0.0201200
15-18 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0476970   -0.0635990   -0.0317950
15-18 months   SAS-CompFeed     INDIA                          High                 NA                -0.0146010   -0.0328917    0.0036898
15-18 months   SAS-CompFeed     INDIA                          Low                  NA                -0.0121782   -0.0214037   -0.0029526
15-18 months   SAS-CompFeed     INDIA                          Medium               NA                -0.0072630   -0.0321097    0.0175837
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0630579   -0.0857262   -0.0403897
15-18 months   SAS-FoodSuppl    INDIA                          Low                  NA                -0.0227296   -0.0473479    0.0018887
15-18 months   SAS-FoodSuppl    INDIA                          Medium               NA                -0.0319668   -0.0518575   -0.0120761
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0329137   -0.0610912   -0.0047363
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0095475   -0.0316268    0.0125318
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0288803   -0.0588274    0.0010668
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0702974   -0.1159218   -0.0246730
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0651837   -0.0928982   -0.0374693
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0619721   -0.0745572   -0.0493871
18-21 months   COHORTS          GUATEMALA                      High                 NA                -0.0292875   -0.0518021   -0.0067729
18-21 months   COHORTS          GUATEMALA                      Low                  NA                -0.0174264   -0.0326591   -0.0021937
18-21 months   COHORTS          GUATEMALA                      Medium               NA                -0.0208251   -0.0375225   -0.0041277
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0035566   -0.0248994    0.0320126
18-21 months   GMS-Nepal        NEPAL                          Low                  NA                 0.0200834    0.0046103    0.0355566
18-21 months   GMS-Nepal        NEPAL                          Medium               NA                 0.0187633   -0.0019422    0.0394688
18-21 months   LCNI-5           MALAWI                         High                 NA                -0.0110546   -0.0496751    0.0275659
18-21 months   LCNI-5           MALAWI                         Low                  NA                -0.0092429   -0.0290629    0.0105772
18-21 months   LCNI-5           MALAWI                         Medium               NA                -0.0235172   -0.0484660    0.0014317
18-21 months   MAL-ED           BANGLADESH                     High                 NA                -0.0194164   -0.0430007    0.0041679
18-21 months   MAL-ED           BANGLADESH                     Low                  NA                -0.0220122   -0.0525316    0.0085071
18-21 months   MAL-ED           BANGLADESH                     Medium               NA                -0.0141574   -0.0427914    0.0144767
18-21 months   MAL-ED           INDIA                          High                 NA                 0.0144771   -0.0122174    0.0411717
18-21 months   MAL-ED           INDIA                          Low                  NA                 0.0012758   -0.0255699    0.0281214
18-21 months   MAL-ED           INDIA                          Medium               NA                 0.0097886   -0.0215007    0.0410779
18-21 months   MAL-ED           NEPAL                          High                 NA                -0.0343032   -0.0701016    0.0014952
18-21 months   MAL-ED           NEPAL                          Low                  NA                -0.0411864   -0.0751753   -0.0071975
18-21 months   MAL-ED           NEPAL                          Medium               NA                -0.0114027   -0.0470387    0.0242334
18-21 months   MAL-ED           PERU                           High                 NA                -0.0082356   -0.0321794    0.0157081
18-21 months   MAL-ED           PERU                           Low                  NA                 0.0114594   -0.0221033    0.0450221
18-21 months   MAL-ED           PERU                           Medium               NA                -0.0202234   -0.0516417    0.0111948
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0373700   -0.0743130   -0.0004271
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0620619   -0.1072364   -0.0168874
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -0.0486957   -0.1085056    0.0111141
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0277915   -0.0585774    0.0029944
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0353850   -0.0869046    0.0161346
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0018003   -0.0481993    0.0518000
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0262089   -0.0382781   -0.0141396
18-21 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.0364172   -0.0512213   -0.0216130
18-21 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.0226500   -0.0380553   -0.0072447
18-21 months   PROBIT           BELARUS                        High                 NA                 0.0120333   -0.3534105    0.3774770
18-21 months   PROBIT           BELARUS                        Low                  NA                -0.0410496   -0.1331218    0.0510226
18-21 months   PROBIT           BELARUS                        Medium               NA                -0.0398894   -0.5332123    0.4534335
18-21 months   PROVIDE          BANGLADESH                     High                 NA                 0.0003443   -0.0137142    0.0144029
18-21 months   PROVIDE          BANGLADESH                     Low                  NA                -0.0174501   -0.0308407   -0.0040595
18-21 months   PROVIDE          BANGLADESH                     Medium               NA                -0.0157926   -0.0306578   -0.0009273
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0259700   -0.0728647    0.0209247
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0670874   -0.0935154   -0.0406594
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0703854   -0.0842648   -0.0565061
21-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0139760   -0.0336981    0.0057461
21-24 months   COHORTS          GUATEMALA                      Low                  NA                -0.0001749   -0.0123236    0.0119737
21-24 months   COHORTS          GUATEMALA                      Medium               NA                -0.0051291   -0.0180243    0.0077660
21-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0770806    0.0359159    0.1182454
21-24 months   GMS-Nepal        NEPAL                          Low                  NA                 0.0486736    0.0294110    0.0679363
21-24 months   GMS-Nepal        NEPAL                          Medium               NA                 0.0246254   -0.0006279    0.0498787
21-24 months   LCNI-5           MALAWI                         High                 NA                -0.0093314   -0.0348908    0.0162280
21-24 months   LCNI-5           MALAWI                         Low                  NA                 0.0387496    0.0134143    0.0640849
21-24 months   LCNI-5           MALAWI                         Medium               NA                 0.0438005    0.0158106    0.0717903
21-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0196592   -0.0056533    0.0449717
21-24 months   MAL-ED           BANGLADESH                     Low                  NA                 0.0422562    0.0121188    0.0723936
21-24 months   MAL-ED           BANGLADESH                     Medium               NA                 0.0248411   -0.0009549    0.0506371
21-24 months   MAL-ED           INDIA                          High                 NA                 0.0319731    0.0016205    0.0623258
21-24 months   MAL-ED           INDIA                          Low                  NA                 0.0238951    0.0028963    0.0448939
21-24 months   MAL-ED           INDIA                          Medium               NA                 0.0102288   -0.0130857    0.0335434
21-24 months   MAL-ED           NEPAL                          High                 NA                 0.0164786   -0.0136328    0.0465901
21-24 months   MAL-ED           NEPAL                          Low                  NA                -0.0017992   -0.0463945    0.0427961
21-24 months   MAL-ED           NEPAL                          Medium               NA                 0.0196006   -0.0168625    0.0560638
21-24 months   MAL-ED           PERU                           High                 NA                 0.0587050    0.0346948    0.0827153
21-24 months   MAL-ED           PERU                           Low                  NA                 0.0704791    0.0379624    0.1029959
21-24 months   MAL-ED           PERU                           Medium               NA                 0.0563853    0.0216552    0.0911155
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0477898    0.0071404    0.0884391
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.0337660   -0.0041569    0.0716888
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.0392968   -0.0081737    0.0867673
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0323241    0.0057421    0.0589060
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0210604   -0.0775262    0.0354055
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0175198   -0.0851595    0.0501199
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0608431    0.0482801    0.0734060
21-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                 0.0384408    0.0213711    0.0555106
21-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                 0.0741187    0.0608214    0.0874160
21-24 months   PROBIT           BELARUS                        High                 NA                 0.0853680   -0.3261995    0.4969356
21-24 months   PROBIT           BELARUS                        Low                  NA                 0.0698770   -0.1144630    0.2542171
21-24 months   PROBIT           BELARUS                        Medium               NA                 0.0274902   -0.2113566    0.2663371
21-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0551426    0.0400439    0.0702413
21-24 months   PROVIDE          BANGLADESH                     Low                  NA                 0.0421356    0.0272187    0.0570525
21-24 months   PROVIDE          BANGLADESH                     Medium               NA                 0.0416449    0.0269106    0.0563793
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0678768    0.0122907    0.1234629
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0153778   -0.0075379    0.0382936
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                 0.0149236   -0.0005088    0.0303559


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5328730   -0.5550553   -0.5106908
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0679205   -0.0834556   -0.0523854
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0314452   -0.0566697   -0.0062206
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0739550    0.0689757    0.0789343
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0684568    0.0534750    0.0834386
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0965161   -0.1384986   -0.0545336
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0353535   -0.0951032    0.0243962
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0713176    0.0017427    0.1408926
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2690915   -0.3066392   -0.2315439
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1410718   -0.2258705   -0.0562732
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1273377   -0.1711043   -0.0835710
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4281031   -0.4865345   -0.3696717
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273591   -0.1551143   -0.0996039
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1382107   -0.1486096   -0.1278117
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0993768   -0.1143719   -0.0843817
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0581890   -0.0708287   -0.0455492
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1614291   -0.1800839   -0.1427743
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0040099   -0.0089855    0.0009657
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0085407   -0.0223091    0.0052277
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0061556   -0.0381428    0.0258316
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0340615   -0.0745029    0.0063798
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0550763   -0.1006079   -0.0095446
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0367242    0.0014597    0.0719887
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0322917   -0.0932468    0.0286634
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0718346   -0.1083792   -0.0352901
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0502824    0.0310809    0.0694839
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856298   -0.1022381   -0.0690214
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0016550   -0.0110067    0.0076968
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1201344   -0.1323196   -0.1079492
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0926763   -0.1035845   -0.0817681
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0435999   -0.0611348   -0.0260649
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0290237   -0.0381131   -0.0199343
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0278777    0.0118933    0.0438620
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0751831   -0.0991147   -0.0512515
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0821866   -0.1115379   -0.0528354
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0519300   -0.0822081   -0.0216519
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0316249   -0.0588820   -0.0043679
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0096559   -0.0535877    0.0342760
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0910014   -0.1283585   -0.0536443
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0507692    0.0366073    0.0649311
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0817065   -0.0897503   -0.0736627
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0515821   -0.0676683   -0.0354959
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0316737   -0.0401886   -0.0231587
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0901344   -0.1004057   -0.0798630
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0881308   -0.0985488   -0.0777129
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798629   -0.0934873   -0.0662385
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0523721   -0.0599671   -0.0447771
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0439678   -0.0633568   -0.0245787
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0925421   -0.1147398   -0.0703444
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0896540   -0.1120709   -0.0672371
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0487966   -0.0726009   -0.0249922
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0451220   -0.0687365   -0.0215076
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1142915   -0.1598603   -0.0687227
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1675028   -0.2056176   -0.1293880
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367964    0.0164114    0.0571814
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0809694   -0.0945744   -0.0673643
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659026   -0.0801818   -0.0516233
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0600522   -0.0675957   -0.0525087
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0873106   -0.0977600   -0.0768613
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0664884   -0.0773609   -0.0556158
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0462144   -0.0523546   -0.0400743
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0596907   -0.0787025   -0.0406789
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0588753   -0.0795144   -0.0382361
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0557116   -0.0807898   -0.0306334
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0705594   -0.0903508   -0.0507680
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0519102   -0.0838327   -0.0199876
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0669967   -0.0939558   -0.0400376
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0100406   -0.1153195    0.1354006
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0856674   -0.0993862   -0.0719486
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0616346   -0.0723720   -0.0508971
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0552008   -0.0663872   -0.0440144
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0693132   -0.0818908   -0.0567356
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0322495   -0.0384911   -0.0260079
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0513522   -0.0697312   -0.0329732
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0480047   -0.0656070   -0.0304023
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0604930   -0.0857454   -0.0352406
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0382018   -0.0557744   -0.0206291
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0249427   -0.0577532    0.0078678
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0902007   -0.1153631   -0.0650383
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0122719   -0.1664873    0.1419435
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0112160   -0.0212566   -0.0011754
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0630722   -0.0742538   -0.0518905
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0207936   -0.0308793   -0.0107080
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155727    0.0038062    0.0273392
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0147668   -0.0310721    0.0015384
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0182731   -0.0342105   -0.0023358
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0080292   -0.0082678    0.0243262
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0297525   -0.0505565   -0.0089484
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0059015   -0.0226102    0.0108071
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0494666   -0.0760137   -0.0229194
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0270845   -0.0516175   -0.0025515
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0324932   -0.2556329    0.1906464
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0675924   -0.0795153   -0.0556695
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0044162   -0.0125068    0.0036745
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0258986    0.0104915    0.0413057
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0281875    0.0125527    0.0438224
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0224164    0.0079488    0.0368840
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0118972   -0.0092388    0.0330332
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0613750    0.0444083    0.0783417
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0404035    0.0163835    0.0644236
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0134620   -0.0104794    0.0374035
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0535310   -0.0989671    0.2060291
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0175373    0.0047762    0.0302984


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low                  High              -0.0104584   -0.0680082    0.0470913
0-3 months     COHORTS          GUATEMALA                      Medium               High              -0.0531651   -0.1142519    0.0079217
0-3 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low                  High              -0.0830150   -0.1198506   -0.0461794
0-3 months     COHORTS          INDIA                          Medium               High              -0.0578605   -0.0956163   -0.0201047
0-3 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low                  High              -0.0282595   -0.0898712    0.0333522
0-3 months     GMS-Nepal        NEPAL                          Medium               High              -0.0000609   -0.0664587    0.0663369
0-3 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0370252   -0.0480712   -0.0259792
0-3 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0190871   -0.0310646   -0.0071096
0-3 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0176723   -0.0586719    0.0233274
0-3 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0088164   -0.0496915    0.0320587
0-3 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low                  High              -0.0433792   -0.1439162    0.0571577
0-3 months     MAL-ED           BANGLADESH                     Medium               High              -0.0841244   -0.1822863    0.0140374
0-3 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low                  High              -0.0364870   -0.1709235    0.0979496
0-3 months     MAL-ED           INDIA                          Medium               High               0.0641197   -0.0815801    0.2098196
0-3 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low                  High              -0.0131943   -0.1748720    0.1484834
0-3 months     MAL-ED           NEPAL                          Medium               High               0.0672091   -0.1045415    0.2389597
0-3 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low                  High              -0.0432043   -0.1300046    0.0435960
0-3 months     MAL-ED           PERU                           Medium               High               0.0014715   -0.0914902    0.0944332
0-3 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0018106   -0.1997208    0.1960996
0-3 months     MAL-ED           SOUTH AFRICA                   Medium               High              -0.0808755   -0.3004195    0.1386684
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0214808   -0.0816618    0.1246235
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0027830   -0.1138505    0.1194165
0-3 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low                  High               0.0222051   -0.0207518    0.0651621
0-3 months     NIH-Crypto       BANGLADESH                     Medium               High               0.0126048   -0.0280566    0.0532662
0-3 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Low                  High              -0.0366634   -0.0765174    0.0031906
0-3 months     PROBIT           BELARUS                        Medium               High              -0.0146735   -0.0389542    0.0096072
0-3 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low                  High              -0.0485898   -0.0916205   -0.0055592
0-3 months     PROVIDE          BANGLADESH                     Medium               High              -0.0295745   -0.0719386    0.0127896
0-3 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low                  High              -0.0249167   -0.1089099    0.0590764
0-3 months     SAS-CompFeed     INDIA                          Medium               High               0.0380936   -0.0373968    0.1135840
0-3 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0180078   -0.0630044    0.0269888
0-3 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0097510   -0.0491947    0.0296927
3-6 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low                  High              -0.0063605   -0.0466239    0.0339028
3-6 months     COHORTS          GUATEMALA                      Medium               High              -0.0087278   -0.0490671    0.0316115
3-6 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low                  High              -0.0249061   -0.0555662    0.0057540
3-6 months     COHORTS          INDIA                          Medium               High               0.0010864   -0.0289247    0.0310975
3-6 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low                  High               0.0044040   -0.0428682    0.0516761
3-6 months     GMS-Nepal        NEPAL                          Medium               High              -0.0110849   -0.0605903    0.0384205
3-6 months     JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low                  High              -0.0141919   -0.0266720   -0.0017117
3-6 months     JiVitA-3         BANGLADESH                     Medium               High              -0.0033069   -0.0158217    0.0092078
3-6 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low                  High               0.0106053   -0.0278492    0.0490598
3-6 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0023597   -0.0379988    0.0332795
3-6 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low                  High              -0.0783851   -0.1544829   -0.0022873
3-6 months     MAL-ED           BANGLADESH                     Medium               High              -0.0649886   -0.1380698    0.0080927
3-6 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low                  High               0.0272217   -0.0629120    0.1173554
3-6 months     MAL-ED           INDIA                          Medium               High              -0.0180379   -0.1139939    0.0779181
3-6 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low                  High              -0.0544429   -0.1549818    0.0460959
3-6 months     MAL-ED           NEPAL                          Medium               High              -0.0243421   -0.1414255    0.0927413
3-6 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low                  High              -0.0045420   -0.0890925    0.0800085
3-6 months     MAL-ED           PERU                           Medium               High               0.0249107   -0.0561847    0.1060061
3-6 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0532805   -0.1994301    0.0928691
3-6 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0469798   -0.1081608    0.2021204
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0484006   -0.0336920    0.1304932
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0694442   -0.2005131    0.0616248
3-6 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0110963   -0.0507735    0.0285808
3-6 months     NIH-Crypto       BANGLADESH                     Medium               High               0.0222387   -0.0190160    0.0634935
3-6 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Low                  High              -0.0157575   -0.0336283    0.0021134
3-6 months     PROBIT           BELARUS                        Medium               High              -0.0117615   -0.0273233    0.0038003
3-6 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low                  High              -0.0279945   -0.0669000    0.0109110
3-6 months     PROVIDE          BANGLADESH                     Medium               High              -0.0163174   -0.0553311    0.0226962
3-6 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low                  High              -0.0256371   -0.0656925    0.0144184
3-6 months     SAS-CompFeed     INDIA                          Medium               High               0.0045864   -0.0395302    0.0487030
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0053859   -0.0494682    0.0386964
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0199169   -0.0678024    0.0279686
3-6 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low                  High              -0.0487095   -0.0885159   -0.0089031
3-6 months     ZVITAMBO         ZIMBABWE                       Medium               High              -0.0275704   -0.0619891    0.0068484
6-9 months     COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low                  High              -0.0031040   -0.0379480    0.0317399
6-9 months     COHORTS          GUATEMALA                      Medium               High               0.0120197   -0.0230464    0.0470858
6-9 months     COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low                  High              -0.0076405   -0.0335749    0.0182940
6-9 months     COHORTS          INDIA                          Medium               High              -0.0201282   -0.0467470    0.0064906
6-9 months     GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low                  High              -0.0034179   -0.0495149    0.0426791
6-9 months     GMS-Nepal        NEPAL                          Medium               High              -0.0318380   -0.0753202    0.0116443
6-9 months     JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low                  High              -0.0382145   -0.0618459   -0.0145832
6-9 months     JiVitA-4         BANGLADESH                     Medium               High              -0.0145484   -0.0376447    0.0085479
6-9 months     LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Low                  High              -0.0136102   -0.0528096    0.0255892
6-9 months     LCNI-5           MALAWI                         Medium               High              -0.0156891   -0.0540451    0.0226669
6-9 months     MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low                  High              -0.0477166   -0.1089679    0.0135347
6-9 months     MAL-ED           BANGLADESH                     Medium               High              -0.0339345   -0.0887261    0.0208571
6-9 months     MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low                  High              -0.0176584   -0.0918772    0.0565604
6-9 months     MAL-ED           INDIA                          Medium               High              -0.0089285   -0.0675587    0.0497016
6-9 months     MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low                  High               0.0181236   -0.0578376    0.0940847
6-9 months     MAL-ED           NEPAL                          Medium               High               0.0281304   -0.0413377    0.0975984
6-9 months     MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low                  High              -0.0131391   -0.0787202    0.0524421
6-9 months     MAL-ED           PERU                           Medium               High              -0.0727785   -0.1367383   -0.0088188
6-9 months     MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low                  High              -0.0754908   -0.1680188    0.0170372
6-9 months     MAL-ED           SOUTH AFRICA                   Medium               High               0.0219719   -0.0991280    0.1430717
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0405559   -0.1184596    0.0373478
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0097744   -0.1044709    0.1240198
6-9 months     NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low                  High              -0.0436952   -0.0735370   -0.0138533
6-9 months     NIH-Crypto       BANGLADESH                     Medium               High              -0.0242513   -0.0560053    0.0075028
6-9 months     PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Low                  High               0.0260176    0.0115834    0.0404518
6-9 months     PROBIT           BELARUS                        Medium               High               0.0039619   -0.0083294    0.0162533
6-9 months     PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low                  High              -0.0428034   -0.0688144   -0.0167925
6-9 months     PROVIDE          BANGLADESH                     Medium               High              -0.0288076   -0.0548378   -0.0027774
6-9 months     SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low                  High              -0.0157749   -0.0453704    0.0138207
6-9 months     SAS-CompFeed     INDIA                          Medium               High              -0.0065818   -0.0507386    0.0375751
6-9 months     SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          Low                  High               0.0274360   -0.0172930    0.0721650
6-9 months     SAS-FoodSuppl    INDIA                          Medium               High               0.0159425   -0.0301353    0.0620204
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0126365   -0.0565066    0.0312337
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0231978   -0.0246239    0.0710195
6-9 months     ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low                  High               0.0154981   -0.0246098    0.0556061
6-9 months     ZVITAMBO         ZIMBABWE                       Medium               High               0.0265403   -0.0093911    0.0624716
9-12 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low                  High              -0.0160219   -0.0428965    0.0108528
9-12 months    COHORTS          GUATEMALA                      Medium               High              -0.0304672   -0.0577633   -0.0031712
9-12 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low                  High              -0.0549327   -0.0799531   -0.0299123
9-12 months    COHORTS          INDIA                          Medium               High              -0.0199829   -0.0447650    0.0047992
9-12 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low                  High               0.0017801   -0.0370524    0.0406126
9-12 months    GMS-Nepal        NEPAL                          Medium               High               0.0000022   -0.0365765    0.0365809
9-12 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low                  High               0.0048877   -0.0169184    0.0266937
9-12 months    JiVitA-4         BANGLADESH                     Medium               High               0.0039432   -0.0167943    0.0246807
9-12 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Low                  High              -0.0047974   -0.0533998    0.0438050
9-12 months    LCNI-5           MALAWI                         Medium               High              -0.0104080   -0.0563267    0.0355108
9-12 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low                  High              -0.0078294   -0.0619064    0.0462476
9-12 months    MAL-ED           BANGLADESH                     Medium               High               0.0011110   -0.0520292    0.0542512
9-12 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low                  High              -0.0238129   -0.0773892    0.0297635
9-12 months    MAL-ED           INDIA                          Medium               High              -0.0315841   -0.0885978    0.0254296
9-12 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low                  High              -0.0114043   -0.0663861    0.0435775
9-12 months    MAL-ED           NEPAL                          Medium               High              -0.0401892   -0.0990082    0.0186298
9-12 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low                  High              -0.0240497   -0.0834470    0.0353476
9-12 months    MAL-ED           PERU                           Medium               High              -0.0122718   -0.0667094    0.0421657
9-12 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.0135111   -0.1257763    0.0987542
9-12 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.0481739   -0.1517403    0.0553926
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0250132   -0.0980568    0.0480304
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0490568   -0.0868594    0.1849729
9-12 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low                  High               0.0018879   -0.0237155    0.0274913
9-12 months    NIH-Crypto       BANGLADESH                     Medium               High               0.0173903   -0.0097245    0.0445052
9-12 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Low                  High               0.0155914   -0.0056589    0.0368417
9-12 months    PROBIT           BELARUS                        Medium               High              -0.0017628   -0.0212120    0.0176865
9-12 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low                  High              -0.0139084   -0.0393475    0.0115307
9-12 months    PROVIDE          BANGLADESH                     Medium               High              -0.0165735   -0.0452917    0.0121447
9-12 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low                  High              -0.0240733   -0.0645894    0.0164428
9-12 months    SAS-CompFeed     INDIA                          Medium               High               0.0027642   -0.0351002    0.0406286
9-12 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.0250302   -0.1980004    0.1479400
9-12 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1116137   -0.2578606    0.0346333
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0233129   -0.0603416    0.0137158
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0269416   -0.0687963    0.0149130
9-12 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0393865   -0.0747415   -0.0040316
9-12 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0314016   -0.0631538    0.0003506
12-15 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low                  High               0.0114958   -0.0163365    0.0393280
12-15 months   COHORTS          GUATEMALA                      Medium               High               0.0128948   -0.0176740    0.0434636
12-15 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low                  High               0.0039221   -0.0231167    0.0309609
12-15 months   GMS-Nepal        NEPAL                          Medium               High               0.0094182   -0.0159107    0.0347471
12-15 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0071511   -0.0238579    0.0095557
12-15 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0037203   -0.0194754    0.0120347
12-15 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Low                  High               0.0323207   -0.0448474    0.1094888
12-15 months   LCNI-5           MALAWI                         Medium               High              -0.0508805   -0.1515141    0.0497531
12-15 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low                  High               0.0202820   -0.0277171    0.0682812
12-15 months   MAL-ED           BANGLADESH                     Medium               High              -0.0114430   -0.0539697    0.0310836
12-15 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low                  High              -0.0028818   -0.0549260    0.0491625
12-15 months   MAL-ED           INDIA                          Medium               High              -0.0067820   -0.0576559    0.0440918
12-15 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low                  High              -0.0948069   -0.1543552   -0.0352586
12-15 months   MAL-ED           NEPAL                          Medium               High              -0.0432170   -0.0979607    0.0115268
12-15 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low                  High               0.0017625   -0.0443265    0.0478515
12-15 months   MAL-ED           PERU                           Medium               High               0.0022429   -0.0478750    0.0523608
12-15 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0446913   -0.1155117    0.0261290
12-15 months   MAL-ED           SOUTH AFRICA                   Medium               High               0.0213108   -0.0642904    0.1069120
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0323041   -0.0308561    0.0954643
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0024549   -0.0918032    0.0868935
12-15 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0153113   -0.0375636    0.0069411
12-15 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0202330   -0.0437054    0.0032394
12-15 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Low                  High              -0.0661311   -0.2567016    0.1244394
12-15 months   PROBIT           BELARUS                        Medium               High              -0.0506309   -0.2100024    0.1087405
12-15 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low                  High              -0.0146824   -0.0396825    0.0103178
12-15 months   PROVIDE          BANGLADESH                     Medium               High              -0.0126219   -0.0375490    0.0123051
12-15 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low                  High              -0.0500156   -0.0845034   -0.0155278
12-15 months   SAS-CompFeed     INDIA                          Medium               High              -0.0350123   -0.0777798    0.0077553
12-15 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          Low                  High              -0.0350021   -0.1403472    0.0703430
12-15 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0048133   -0.0784568    0.0880833
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0161157   -0.0530255    0.0207941
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0015553   -0.0422169    0.0391063
12-15 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0081103   -0.0483347    0.0645554
12-15 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0029722   -0.0483937    0.0543382
15-18 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low                  High              -0.0263262   -0.0606562    0.0080037
15-18 months   COHORTS          GUATEMALA                      Medium               High               0.0049760   -0.0293806    0.0393326
15-18 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low                  High              -0.0070215   -0.0358406    0.0217975
15-18 months   GMS-Nepal        NEPAL                          Medium               High               0.0048672   -0.0234202    0.0331545
15-18 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low                  High               0.0110915   -0.0047137    0.0268968
15-18 months   JiVitA-4         BANGLADESH                     Medium               High               0.0073909   -0.0087768    0.0235585
15-18 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Low                  High               0.0160069   -0.0405978    0.0726115
15-18 months   LCNI-5           MALAWI                         Medium               High               0.0650255    0.0008394    0.1292115
15-18 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low                  High              -0.0259110   -0.0707248    0.0189028
15-18 months   MAL-ED           BANGLADESH                     Medium               High              -0.0282949   -0.0715061    0.0149163
15-18 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low                  High               0.0134272   -0.0290134    0.0558677
15-18 months   MAL-ED           INDIA                          Medium               High               0.0169083   -0.0275538    0.0613705
15-18 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low                  High              -0.0023705   -0.0632023    0.0584614
15-18 months   MAL-ED           NEPAL                          Medium               High              -0.0062036   -0.0673931    0.0549859
15-18 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low                  High               0.0051638   -0.0337686    0.0440961
15-18 months   MAL-ED           PERU                           Medium               High               0.0390570   -0.0048538    0.0829678
15-18 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0118744   -0.0843812    0.0606324
15-18 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0446529   -0.1349574    0.0456515
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0380877   -0.0956783    0.0195030
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0206246   -0.1016706    0.0604214
15-18 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0190579   -0.0393723    0.0012565
15-18 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0018596   -0.0179755    0.0216947
15-18 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Low                  High              -0.0281051   -0.4905308    0.4343207
15-18 months   PROBIT           BELARUS                        Medium               High              -0.0545071   -0.4749273    0.3659131
15-18 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low                  High              -0.0044408   -0.0253459    0.0164643
15-18 months   PROVIDE          BANGLADESH                     Medium               High              -0.0166628   -0.0379729    0.0046473
15-18 months   SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low                  High               0.0024228   -0.0205891    0.0254347
15-18 months   SAS-CompFeed     INDIA                          Medium               High               0.0073379   -0.0273140    0.0419898
15-18 months   SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          Low                  High               0.0403284    0.0068633    0.0737934
15-18 months   SAS-FoodSuppl    INDIA                          Medium               High               0.0310911    0.0009334    0.0612489
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0233663   -0.0124313    0.0591638
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0040334   -0.0370859    0.0451527
15-18 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low                  High               0.0051137   -0.0482686    0.0584960
15-18 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.0083253   -0.0390030    0.0556536
18-21 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low                  High               0.0118611   -0.0153224    0.0390446
18-21 months   COHORTS          GUATEMALA                      Medium               High               0.0084624   -0.0195681    0.0364929
18-21 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low                  High               0.0165269   -0.0158640    0.0489177
18-21 months   GMS-Nepal        NEPAL                          Medium               High               0.0152068   -0.0199850    0.0503986
18-21 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Low                  High               0.0018118   -0.0415977    0.0452212
18-21 months   LCNI-5           MALAWI                         Medium               High              -0.0124625   -0.0584407    0.0335156
18-21 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low                  High              -0.0025958   -0.0411659    0.0359742
18-21 months   MAL-ED           BANGLADESH                     Medium               High               0.0052590   -0.0318372    0.0423553
18-21 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low                  High              -0.0132014   -0.0510602    0.0246574
18-21 months   MAL-ED           INDIA                          Medium               High              -0.0046885   -0.0458178    0.0364408
18-21 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low                  High              -0.0068832   -0.0562468    0.0424805
18-21 months   MAL-ED           NEPAL                          Medium               High               0.0229005   -0.0276114    0.0734124
18-21 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low                  High               0.0196950   -0.0215331    0.0609231
18-21 months   MAL-ED           PERU                           Medium               High              -0.0119878   -0.0514898    0.0275142
18-21 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0246919   -0.0830487    0.0336650
18-21 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0113257   -0.0816251    0.0589736
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0075935   -0.0676105    0.0524235
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0295919   -0.0291256    0.0883093
18-21 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0102083   -0.0293088    0.0088922
18-21 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0035588   -0.0160113    0.0231290
18-21 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Low                  High              -0.0530828   -0.4262502    0.3200845
18-21 months   PROBIT           BELARUS                        Medium               High              -0.0519226   -0.6827463    0.5789010
18-21 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low                  High              -0.0177944   -0.0372097    0.0016208
18-21 months   PROVIDE          BANGLADESH                     Medium               High              -0.0161369   -0.0365971    0.0043233
18-21 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0411174   -0.0949463    0.0127115
18-21 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0444154   -0.0933209    0.0044901
21-24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low                  High               0.0138011   -0.0093625    0.0369647
21-24 months   COHORTS          GUATEMALA                      Medium               High               0.0088469   -0.0147167    0.0324106
21-24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low                  High              -0.0284070   -0.0738558    0.0170417
21-24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0524552   -0.1007488   -0.0041617
21-24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Low                  High               0.0480810    0.0120927    0.0840693
21-24 months   LCNI-5           MALAWI                         Medium               High               0.0531319    0.0152279    0.0910359
21-24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low                  High               0.0225970   -0.0167602    0.0619541
21-24 months   MAL-ED           BANGLADESH                     Medium               High               0.0051819   -0.0309589    0.0413227
21-24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low                  High              -0.0080780   -0.0449865    0.0288304
21-24 months   MAL-ED           INDIA                          Medium               High              -0.0217443   -0.0600177    0.0165291
21-24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low                  High              -0.0182779   -0.0720872    0.0355314
21-24 months   MAL-ED           NEPAL                          Medium               High               0.0031220   -0.0441671    0.0504111
21-24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low                  High               0.0117741   -0.0286466    0.0521948
21-24 months   MAL-ED           PERU                           Medium               High              -0.0023197   -0.0445415    0.0399020
21-24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.0140238   -0.0696162    0.0415686
21-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.0084929   -0.0709895    0.0540036
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0533844   -0.1157943    0.0090255
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0498439   -0.1225194    0.0228316
21-24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.0224022   -0.0435966   -0.0012078
21-24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.0132757   -0.0050177    0.0315690
21-24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Low                  High              -0.0154910   -0.4314162    0.4004343
21-24 months   PROBIT           BELARUS                        Medium               High              -0.0578778   -0.5317207    0.4159651
21-24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low                  High              -0.0130070   -0.0342316    0.0082177
21-24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0134976   -0.0345944    0.0075991
21-24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0524990   -0.1126234    0.0076254
21-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0529533   -0.1106419    0.0047353


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      High                 NA                -0.0243205   -0.0675240    0.0188829
0-3 months     COHORTS          INDIA                          High                 NA                -0.0435015   -0.0629657   -0.0240374
0-3 months     GMS-Nepal        NEPAL                          High                 NA                -0.0127018   -0.0551206    0.0297169
0-3 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0224944   -0.0304835   -0.0145053
0-3 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0104395   -0.0396481    0.0187691
0-3 months     MAL-ED           BANGLADESH                     High                 NA                -0.0421205   -0.0953407    0.0110997
0-3 months     MAL-ED           INDIA                          High                 NA                 0.0022703   -0.0809674    0.0855080
0-3 months     MAL-ED           NEPAL                          High                 NA                 0.0186646   -0.0711334    0.1084627
0-3 months     MAL-ED           PERU                           High                 NA                -0.0114151   -0.0509265    0.0280963
0-3 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0225189   -0.1371945    0.0921568
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0061775   -0.0267503    0.0391053
0-3 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0107989   -0.0108542    0.0324520
0-3 months     PROBIT           BELARUS                        High                 NA                -0.0208553   -0.0435752    0.0018645
0-3 months     PROVIDE          BANGLADESH                     High                 NA                -0.0259019   -0.0505205   -0.0012832
0-3 months     SAS-CompFeed     INDIA                          High                 NA                 0.0012154   -0.0550208    0.0574515
0-3 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0105511   -0.0469308    0.0258286
3-6 months     COHORTS          GUATEMALA                      High                 NA                -0.0060602   -0.0358722    0.0237517
3-6 months     COHORTS          INDIA                          High                 NA                -0.0076823   -0.0231185    0.0077539
3-6 months     GMS-Nepal        NEPAL                          High                 NA                -0.0013541   -0.0339330    0.0312247
3-6 months     JiVitA-3         BANGLADESH                     High                 NA                -0.0067451   -0.0149690    0.0014788
3-6 months     JiVitA-4         BANGLADESH                     High                 NA                 0.0030993   -0.0231695    0.0293681
3-6 months     MAL-ED           BANGLADESH                     High                 NA                -0.0433301   -0.0805175   -0.0061427
3-6 months     MAL-ED           INDIA                          High                 NA                 0.0058738   -0.0461500    0.0578977
3-6 months     MAL-ED           NEPAL                          High                 NA                -0.0231348   -0.0783354    0.0320657
3-6 months     MAL-ED           PERU                           High                 NA                 0.0049890   -0.0323313    0.0423093
3-6 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0082135   -0.0939204    0.0774934
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0073870   -0.0204727    0.0352467
3-6 months     NIH-Crypto       BANGLADESH                     High                 NA                 0.0030151   -0.0176726    0.0237028
3-6 months     PROBIT           BELARUS                        High                 NA                -0.0113970   -0.0234125    0.0006184
3-6 months     PROVIDE          BANGLADESH                     High                 NA                -0.0147307   -0.0369137    0.0074524
3-6 months     SAS-CompFeed     INDIA                          High                 NA                -0.0092596   -0.0400008    0.0214816
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0084491   -0.0423169    0.0254186
3-6 months     ZVITAMBO         ZIMBABWE                       High                 NA                -0.0294763   -0.0612350    0.0022823
6-9 months     COHORTS          GUATEMALA                      High                 NA                 0.0030954   -0.0233533    0.0295442
6-9 months     COHORTS          INDIA                          High                 NA                -0.0082080   -0.0217275    0.0053115
6-9 months     GMS-Nepal        NEPAL                          High                 NA                -0.0116650   -0.0427773    0.0194472
6-9 months     JiVitA-4         BANGLADESH                     High                 NA                -0.0198709   -0.0360571   -0.0036848
6-9 months     LCNI-5           MALAWI                         High                 NA                -0.0100395   -0.0329357    0.0128567
6-9 months     MAL-ED           BANGLADESH                     High                 NA                -0.0245532   -0.0552664    0.0061599
6-9 months     MAL-ED           INDIA                          High                 NA                -0.0093894   -0.0485943    0.0298155
6-9 months     MAL-ED           NEPAL                          High                 NA                 0.0134146   -0.0215493    0.0483785
6-9 months     MAL-ED           PERU                           High                 NA                -0.0222172   -0.0511172    0.0066829
6-9 months     MAL-ED           SOUTH AFRICA                   High                 NA                -0.0238799   -0.0794215    0.0316617
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0103349   -0.0365752    0.0159054
6-9 months     NIH-Crypto       BANGLADESH                     High                 NA                -0.0208103   -0.0369622   -0.0046583
6-9 months     PROBIT           BELARUS                        High                 NA                 0.0120146    0.0031764    0.0208527
6-9 months     PROVIDE          BANGLADESH                     High                 NA                -0.0236723   -0.0383706   -0.0089740
6-9 months     SAS-CompFeed     INDIA                          High                 NA                -0.0088270   -0.0335650    0.0159110
6-9 months     SAS-FoodSuppl    INDIA                          High                 NA                 0.0161185   -0.0141530    0.0463899
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0002219   -0.0340875    0.0336437
6-9 months     ZVITAMBO         ZIMBABWE                       High                 NA                 0.0227316   -0.0105027    0.0559660
9-12 months    COHORTS          GUATEMALA                      High                 NA                -0.0184656   -0.0384392    0.0015079
9-12 months    COHORTS          INDIA                          High                 NA                -0.0234059   -0.0362797   -0.0105322
9-12 months    GMS-Nepal        NEPAL                          High                 NA                 0.0007842   -0.0260009    0.0275694
9-12 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0033531   -0.0116077    0.0183139
9-12 months    LCNI-5           MALAWI                         High                 NA                -0.0054471   -0.0342920    0.0233979
9-12 months    MAL-ED           BANGLADESH                     High                 NA                -0.0017525   -0.0305737    0.0270687
9-12 months    MAL-ED           INDIA                          High                 NA                -0.0184732   -0.0513368    0.0143904
9-12 months    MAL-ED           NEPAL                          High                 NA                -0.0149048   -0.0423067    0.0124971
9-12 months    MAL-ED           PERU                           High                 NA                -0.0098217   -0.0351010    0.0154576
9-12 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0173068   -0.0779304    0.0433169
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0025313   -0.0284550    0.0233924
9-12 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0058148   -0.0076651    0.0192946
9-12 months    PROBIT           BELARUS                        High                 NA                 0.0053563   -0.0103626    0.0210751
9-12 months    PROVIDE          BANGLADESH                     High                 NA                -0.0099982   -0.0255605    0.0055641
9-12 months    SAS-CompFeed     INDIA                          High                 NA                -0.0093435   -0.0365746    0.0178877
9-12 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0518825   -0.1636546    0.0598895
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0198667   -0.0483493    0.0086159
9-12 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0308195   -0.0603327   -0.0013063
12-15 months   COHORTS          GUATEMALA                      High                 NA                 0.0098087   -0.0116898    0.0313072
12-15 months   GMS-Nepal        NEPAL                          High                 NA                 0.0048457   -0.0130749    0.0227663
12-15 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0041220   -0.0153951    0.0071511
12-15 months   LCNI-5           MALAWI                         High                 NA                -0.0051605   -0.0588148    0.0484937
12-15 months   MAL-ED           BANGLADESH                     High                 NA                 0.0018304   -0.0229141    0.0265749
12-15 months   MAL-ED           INDIA                          High                 NA                -0.0030892   -0.0342771    0.0280986
12-15 months   MAL-ED           NEPAL                          High                 NA                -0.0394354   -0.0682532   -0.0106176
12-15 months   MAL-ED           PERU                           High                 NA                 0.0010168   -0.0192358    0.0212693
12-15 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0119452   -0.0535127    0.0296223
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0087064   -0.0115317    0.0289446
12-15 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0107942   -0.0226017    0.0010134
12-15 months   PROBIT           BELARUS                        High                 NA                -0.0474107   -0.1734680    0.0786467
12-15 months   PROVIDE          BANGLADESH                     High                 NA                -0.0087483   -0.0228500    0.0053534
12-15 months   SAS-CompFeed     INDIA                          High                 NA                -0.0321693   -0.0591015   -0.0052370
12-15 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0102709   -0.0723438    0.0518021
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0089793   -0.0369825    0.0190238
12-15 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0038147   -0.0444134    0.0520429
15-18 months   COHORTS          GUATEMALA                      High                 NA                -0.0103391   -0.0368295    0.0161513
15-18 months   GMS-Nepal        NEPAL                          High                 NA                -0.0015282   -0.0201058    0.0170495
15-18 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0070421   -0.0039653    0.0180494
15-18 months   LCNI-5           MALAWI                         High                 NA                 0.0277758   -0.0086481    0.0641997
15-18 months   MAL-ED           BANGLADESH                     High                 NA                -0.0179083   -0.0426537    0.0068370
15-18 months   MAL-ED           INDIA                          High                 NA                 0.0101067   -0.0155507    0.0357642
15-18 months   MAL-ED           NEPAL                          High                 NA                -0.0025033   -0.0335276    0.0285210
15-18 months   MAL-ED           PERU                           High                 NA                 0.0110808   -0.0070917    0.0292534
15-18 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0152824   -0.0574060    0.0268413
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0120767   -0.0306101    0.0064567
15-18 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0051476   -0.0153666    0.0050714
15-18 months   PROBIT           BELARUS                        High                 NA                -0.0327009   -0.3423775    0.2769756
15-18 months   PROVIDE          BANGLADESH                     High                 NA                -0.0066095   -0.0182027    0.0049836
15-18 months   SAS-CompFeed     INDIA                          High                 NA                 0.0033850   -0.0162725    0.0230424
15-18 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0261454    0.0057184    0.0465725
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0135259   -0.0130638    0.0401156
15-18 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0072252   -0.0372684    0.0517189
18-21 months   COHORTS          GUATEMALA                      High                 NA                 0.0084939   -0.0121499    0.0291377
18-21 months   GMS-Nepal        NEPAL                          High                 NA                 0.0120161   -0.0113713    0.0354035
18-21 months   LCNI-5           MALAWI                         High                 NA                -0.0037122   -0.0324933    0.0250689
18-21 months   MAL-ED           BANGLADESH                     High                 NA                 0.0011433   -0.0195115    0.0217980
18-21 months   MAL-ED           INDIA                          High                 NA                -0.0064479   -0.0292019    0.0163060
18-21 months   MAL-ED           NEPAL                          High                 NA                 0.0045508   -0.0211521    0.0302536
18-21 months   MAL-ED           PERU                           High                 NA                 0.0023341   -0.0153898    0.0200579
18-21 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0120966   -0.0443202    0.0201271
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0007070   -0.0170805    0.0184945
18-21 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0017599   -0.0111696    0.0076499
18-21 months   PROBIT           BELARUS                        High                 NA                -0.0445265   -0.4267875    0.3377345
18-21 months   PROVIDE          BANGLADESH                     High                 NA                -0.0112842   -0.0227395    0.0001711
18-21 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0416224   -0.0877794    0.0045346
21-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0095599   -0.0082296    0.0273493
21-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0289537   -0.0621709    0.0042635
21-24 months   LCNI-5           MALAWI                         High                 NA                 0.0352300    0.0129786    0.0574814
21-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0085283   -0.0124348    0.0294914
21-24 months   MAL-ED           INDIA                          High                 NA                -0.0095567   -0.0327914    0.0136779
21-24 months   MAL-ED           NEPAL                          High                 NA                -0.0045814   -0.0292376    0.0200747
21-24 months   MAL-ED           PERU                           High                 NA                 0.0026700   -0.0157766    0.0211166
21-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0073862   -0.0389235    0.0241510
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0188620   -0.0382096    0.0004856
21-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0020810   -0.0117843    0.0076224
21-24 months   PROBIT           BELARUS                        High                 NA                -0.0318370   -0.3843987    0.3207246
21-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0089083   -0.0213045    0.0034878
21-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0503396   -0.1047307    0.0040515
